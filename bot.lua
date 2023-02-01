irc = require "irc"
sleep = require "socket".sleep

bot = irc.new {
	nick = "shit-master",
}

messages = {
	"SHIT!!!! YOU DUMP IN THE SHIT TO NIGHT!!!!!PISS PISS PISS IN THE DUMP",
	"YOUR DUMB BRO SHIT OFF!!",
	"Where's ya girlfriend? Did she leave you? Aww, sad....im a PISS!!!",
	"",
}

function onchat(user, channel, message)
	if message:lower():match("what are you!?%??!?") then
		bot:sendChat(channel, "Finggus SHIT!!!")
	else
		local n = math.random(1, #messages)
		bot:sendChat(channel, messages[n])
	end
end

bot:hook("OnChat", onchat)
bot:connect("My IRC server here (change)")
bot:join("#channel-here")

print("Started bot")

while true do
	sleep(0.5)
	bot:think()
end

# get message
puts 'Enter your message: '
message = gets.chomp

# get offset
while true
    puts 'Enter your offset(number between 1-26): '
    offset = gets.chomp.to_i
    if offset >= 1 and offset <= 26
        break
    end
end

# main logic
def caesar_cipher(input, key)
    letters = ('a'..'z').to_a
    input.each_char.map { |c| letters.include?(c) ?
      letters[(letters.index(c)+key) % 26] : c }.join
end

puts caesar_cipher(message, offset)
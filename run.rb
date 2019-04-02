require 'timeout'

# VERZE S METODOU

def gets_with_timeout(sec, timeout_val = nil)
  return gets.chomp if select([$stdin], nil, nil, sec)

  timeout_val
end

# deset kancu
kanec = 10
ans = [nil]
while kanec > 0
  while kanec > 9
    puts 'Běží na tebe kanec!'
    ans = gets_with_timeout(rand(5..10))
    if ['utíkám', 'utikam', 'bezim', 'běžím', 'běžím pryč'].include?(ans)
      puts 'Podařilo se ti utéci!'
    else
      puts 'Nabral tě!'
      sleep rand(2..10)
    end
    kanec -= 1
    sleep rand(2..10)
  end
  puts 'Běží na tebe další kanec!'
  ans [0] = gets_with_timeout(rand(5..10))
  if ['utíkám', 'utikam', 'bezim', 'běžím', 'běžím pryč'].include?(ans)
    puts 'Utelk jsi!'
  else
    puts 'A nabral tě!'
  end
  sleep rand(2..10)
  kanec -= 1
end

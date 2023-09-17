expression = ARGV
rpn_sequence = []

available_operators = ['+', '-', 'x', '/', '^']
operator = ''

expression.each do |char|
    if available_operators.include?(char)
        operator = char
    else
        rpn_sequence.append(char)
        if operator != ""
            rpn_sequence.append(operator)
            operator = ""
        end
    end  
end

puts(rpn_sequence.join(separator=" "))

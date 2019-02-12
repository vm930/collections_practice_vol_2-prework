
def begins_with_r (array)
  array.all? do |item| item[0].include?("r")? true:false
  end 
end 

def contain_a(array)
  array.map do |item| item.include?("a")? item: nil
  end.compact!
end 

def first_wa(array)
  element = []
  array.each do |ele| 
    if ele.match(/wa/)
      element.push(ele)
      break
    end
  end 
  element.first
end

def remove_non_strings (array)
  new_array = []
  array.each do |ele| 
    if ele.instance_of?(String) 
      new_array.push(ele)
    end
   end 
   new_array
  end

# def count_elements(array)
#   counter_hash = {}
#   counter = 0
#   comparison_hash = array[0][:name]
#   #loop thru each element in the array [hash1, hash2, hash3]
#   array.each do |element|
#   #evaluate if each hash is same as previous element
#       if element[:name] == comparison_hash  # "blake" == "blake" 
#       #if so make a count
#       counter +=1
#       counter_hash[:count] = counter
#       else # if not, create a new count 
#       counter_hash[:name] = element[:name]
#       counter_hash[:count] = 1
#   end 
# end
#     counter_hash
#   end 

# #[{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

# def merge_data(array)
# end 

def find_cool(array)
  new_array = []
  array.each do |element| 
    new_array << element if element[:temperature] == "cool"
  end 
  new_array
end 

def organize_schools(array) 
  new_hash = {}
  array.each do |name,location_hash| 
    location = location_hash[:location]
    if new_hash[location]
      new_hash[location] << name
    else 
      new_hash[location] = []
      new_hash[location] << name
    end 
  end 
  new_hash
end 


# def count_elements(array)
#   array.each do |original_hash|
#     original_hash[:count] = 0
#     name = original_hash[:name]
#     array.each do |hash|
#       if hash[:name] == name
#         original_hash[:count] += 1
#       end
#     end
#   end.uniq
# end

# def merge_data(keys, values)
#   container = []
#   keys.each do |person_name|
#     name = person_name[:first_name]
#     values.each do |person_data|
#       if person_data[name]
#         merged_person = person_data[name]
#         merged_person[:first_name] = name
#         container << merged_person
#       end
#     end
#   end
#   container
# end
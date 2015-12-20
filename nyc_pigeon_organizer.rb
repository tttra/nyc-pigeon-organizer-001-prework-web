def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = Hash.new
  pigeon_data.each do |attribute, info|
    info.each do |key, pigeon_names|
      pigeon_names.each do |pigeon_name|
        if pigeon_list.has_key?(pigeon_name)
          if pigeon_list[pigeon_name].has_key?(attribute)
             pigeon_list[pigeon_name][attribute].push(key.to_s)
          else
            pigeon_list[pigeon_name][attribute] = [key.to_s]
           end 
        else
            pigeon_list[pigeon_name] = {attribute => [key.to_s]}
        end
      end
    end
  end
  pigeon_list
end

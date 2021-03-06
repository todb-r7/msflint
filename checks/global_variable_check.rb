class GlobalVariableCheck < LintWorm::Check
	interesting_nodes :gvasgn
	
	add_callback :check_gvasgn do |node| 
  		global_var_name =  node.children[0]
		add_note(LintWorm::Note::WARNING, "Global variable #{global_var_name}. Use @instance variables instead.", node.line) 
  	end
end

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35694217F22
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729895754; cv=none; b=f8aZMMGOmGRihmWzrKB0azHb4goJiAZg+FHhYJMWVxAGo6q4nTS6Oc825Q9znSRtwcPRTM6BB7nrblCT7pCQB4FQjijjHO3AzWQ3BSMfy0Z5bPOvl95aBUNUBi9/jMCpWEKCmdHsykpUZtsE9QRqpUUnDi4FwCqa4rV5WNrqHxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729895754; c=relaxed/simple;
	bh=a51JnbtVgjTPlxaODivOYx+L/RUgbmqPPhybGi3SENc=;
	h=To:Subject:From:Message-Id:Date; b=OaY2nGUwxfsCfSLxvzBEnMtr2BXaQ91KV1m7ACkiTsYXoMHKxlSAjgALJElvYkbOc3XXUkZSTCSssJx3/VwAlV+WM61uMiMMKIzNJmLHfrZtf6lqYX9ModEMMl9YKOP+MUOW/wRBmUCMzJNsA/IlbCA6nqCCCdFyU7fjv/BoFbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8nrKcaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8nrKcaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FCDC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729895753;
	bh=a51JnbtVgjTPlxaODivOYx+L/RUgbmqPPhybGi3SENc=;
	h=To:Subject:From:Date:From;
	b=W8nrKcajU+RJo00uqafJsFI+BDn5GmYMPLNdp92jFTmsZc71/fnpSkjSbLOS/azMh
	 dnhPELZpeGTgb8W7cr96+8b7tZP+78wbi2EDwbe8rbfIDy63uyXF9g7FGs57Dosro0
	 xMR44YlKLcybHvT4XunVlUv6Xgnm8h9//EwvJrvJZYJfEwl7KzM/qXrZTGcOlBPQfj
	 LP1cdYlwVwTlDvU3j+8i/YB+IEhxNqpUhqRceQBjcgb8HepRQ03eBwI1v91rI6nEbh
	 sOFhG74M1ENQUff2haVlk2/UbeS9LaM24AcLeJmXtBCYK39UaAZiKBrERRzXuC6TjS
	 d0cHiRpoATq4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E57D149F6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172989575359.26048.2275634083595360553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ef5ea85c0b135c8538653a103dda1ae5b20069218ba609c3461f9ae17c20ab
Date: Fri, 25 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729895753

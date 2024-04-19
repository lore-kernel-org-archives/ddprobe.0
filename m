Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C5A1E867
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534023; cv=none; b=DAe8z+64LLwTH4qBLkk1CGMBA+I0mdDfMk/dqNHdC7VDQcePLK4Sl9UzB9MpkZYFJYcb4PIUXEAc3qsDnaj8oJnwTbENN70pE1SH7+5F+ogiqbb+7E/GTEVFYtNJabVWbSIUXMm/O6yJkEeVF6PgdoFsKnfYvin3eIftLGp1GK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534023; c=relaxed/simple;
	bh=NTcHTYj9euxKOPh6NEkxFfTY/kVAB9ZHuZuBU1BD7fA=;
	h=To:Subject:From:Message-Id:Date; b=LudXSYdQXtU1D/djT87ofyvj9wbuUpG426Z5QylR5/8cMjpeP7wJvP2BM9PMYhKZ96s4BHHju84I+g1GmbA1EC5HYKOlFTtVbsTAwmcOE6JujWnos9JezaRr8mWWioXt6ohPs0nnkLB8K5WRpBwqUAWZXx71MUqf0SWPpuzVIbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPFIDWOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPFIDWOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08C09C3277B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713534023;
	bh=NTcHTYj9euxKOPh6NEkxFfTY/kVAB9ZHuZuBU1BD7fA=;
	h=To:Subject:From:Date:From;
	b=YPFIDWOx7Eg9yxFeiJKOHoW+4PHVQj13v27p2tw4Ae4NL7uWoBY2Dpv/h5m91yoxr
	 PIHgh6xhNMPZz1lp0Y85/dtwmfuO04IklKKtRTYVZu8KAsh9IfCVt8UxT3ObkzFGrP
	 QtJdx46/M/TI/HVcY5IfqNNcPH/0W6tIY8xQabLBJALS/IgCiZGrQYH1mcY2J5710d
	 APUlEsi2LfQ0248KWcYb69nDB3rKq3RqbjsI3EbCRU3cBOkCigxBl5ndtwo7yvRaEq
	 yQDZUh2Zie6jTzvtgAbRBRVB3Ks9+rozqQ/ST5Yf4IT9MxX83PGAz8LPKPfjpaZOy9
	 81DfsRuzdQVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA9DC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353402286.22837.938245357376580627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b469bb69ee69e04af4b67613c827343aa8642fdc1de575fc2b2b082d6c704d8
Date: Fri, 19 Apr 2024 13:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713534022

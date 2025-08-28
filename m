Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B503081DC
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756379394; cv=none; b=OPlixPV7UM342LrC3CLuYwS/EfuxJmcE7IX+/RQY0TCn4RJ0Ilt1FAGs8jj54w6lmVT5qOjtlxJ7HaR4p4U86YjwH39qXFln2LRJoZAaO5VnOvTZW0D0eYEqYI8O9chBaS0V2galUOstW+WkjoXjhawYXiHxbm+WW3veKvs4MKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756379394; c=relaxed/simple;
	bh=JuvSD62BNIDJyNZu5vY4BIEKFxKOgej1I6GyrcDPIEg=;
	h=To:Subject:From:Message-Id:Date; b=Tfpeh87FohhMQ7E3zKGPFz01IE5YWg7wXN3BqzvEhpa5lfnpifO3bQ8Hr10q4ilyWFueUOKsSIN0SwtoYWHCZSS02U38chFjPNE3IkEIBdxuklgC6zq51/KtetqC0wxa4SwbIKzf+nEQN7fiSSMt0HP8waBhC0DDFzWExpVdMig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZWIBBiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZWIBBiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C355C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756379393;
	bh=JuvSD62BNIDJyNZu5vY4BIEKFxKOgej1I6GyrcDPIEg=;
	h=To:Subject:From:Date:From;
	b=LZWIBBiZDN/NztiWRbLbalGaCak1vV7dBXczYz3en7z/F+si1vOuXPCxPzvEIUXWA
	 NkL5ZxuxsxN7Qk9un2d4Nk2EIapGG55svXe/mhPx52vUN5fuPF1U5bFbjquxfBEMIq
	 NiYmoiEssYsU4YbJ6vVZgl7lBXskADcxdUS2B/R0S21yI9Scc/F5W0nVefXyrL6uh/
	 C9G6nRuGGxFmDjImdpjRA9IpLuflv9NPY1s/i2CFR/2ssmMA7fwjqtrLBsnyjCYZt8
	 H/UI2BpbG1doxKE8OQhGVjNiuEjGbfuxSkmIAdxq4F2nS8WTYZ0rEiKOYjLJC5YhMs
	 2/eBoZMPy6dZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB93CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637939358.18911.7623984873554461518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8c256cb0033425e06b3a61e2aea5b69bbd1f963195ef73f52a0f774ae7a04d
Date: Thu, 28 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756379393

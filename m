Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7370763E
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716684263; cv=none; b=K4gsJFau5lMEx6hPERwMArjsjYaOOZVA6te2xJbXkqyWq/YJKRiRSWVnw/6Oo/SYKZ1OLjz00oQGF1ilm/4Y1KZfRv7slJhJnWijhiO3PWUf+Bl1RDh44P2DOFY01tD9u+b5rZpaqxbKsGDYvjeLVkallpHIVihpPZnXE1KAXdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716684263; c=relaxed/simple;
	bh=VlUsjmvZdY2lIEPwcmCFr1Tw4ffHrKZ4Vx1UWRE0HJQ=;
	h=To:Subject:From:Message-Id:Date; b=h7MdN3v9dRRpkGvwdnnko6GFjtJiInnP/AzuS6plZjRu4w77jYXynwiArTHquMLlyPSpIOPhBhbzE2fVx2R/mJfYFWFX8GWsY96V0YBRcvx7HDg9O96GYTSwKC2iNb5vsu9Mlzl31zWbEEbpkbPNcdRzvJN3drm4ucYWYVmGms4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmlZuaQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmlZuaQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA85FC2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716684263;
	bh=VlUsjmvZdY2lIEPwcmCFr1Tw4ffHrKZ4Vx1UWRE0HJQ=;
	h=To:Subject:From:Date:From;
	b=MmlZuaQGSbsojx9SwNswpvkRa6PlGYH2A10Dl1dzeaUDL2USDEmG7t5oyC00QqvOX
	 KhaTcx8Dwr3r75Co/EWYMYi3XEQRKLHQE0CsoOxyAyUUahl5FS5pdtwUuG3H+1oY/M
	 v40vO8QTZKGXOxgCwA073ChxAyYW8kmJ7g+NavzYs5k61jo/ZpvU/Zydw9fk39dm09
	 UYTkyhyIPMBCltMhD2gN15IMATk7qG1MoOrcDUBJI/oRjRC7JbvxNLll4gmoW22DfJ
	 Phv1YHg/ZNlHqpWGJowyMLApaNiaVgj9eh6FYEScFR1r+3M6KDuERRJMFz10X/Nw8L
	 xC8gI/R8Jm5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAB2C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668426278.14746.4995453030053075971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462c27980a75ca7c9e173700145114f144285bad618781cd3f055bb7d6148312
Date: Sun, 26 May 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716684262

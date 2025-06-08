Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D711C133
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749410994; cv=none; b=Ez1R4c0kVRwNlQGjMse3hZeghT8ea80Ylpxrgta9PejSh2Dt6wctNC94LcOxAQ4V2O8m3Axr2XLCI+jRmKv36z/XhnAiK+Lu6G+kCLqJExtpwlATayU9JIWHhmwxeKPm3orNyMLLA6Jfzd2Kol5SyuGnqXg11d8NLPA22ckknSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749410994; c=relaxed/simple;
	bh=crPQbsGWox5muo5JCTsydmSlz2RRcJwmM+uPZrgu94A=;
	h=To:Subject:From:Message-Id:Date; b=UPAbJ+yPtD0Zim4GfKsGy6cuqJsdJdv4u94z2cOQqaWMcU2dhXpQzUJunuUDZlFPCBSvoSm/fxBjK1wQGscGPprOzvs6BbNzGR/lKxZVj5bdV+ZAkUX72YgqoguQia2PND3WVwnipwb4vaTb5xvzcVTRRDV6qEU64UdCy0gxrAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUEmAOWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUEmAOWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F07C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749410993;
	bh=crPQbsGWox5muo5JCTsydmSlz2RRcJwmM+uPZrgu94A=;
	h=To:Subject:From:Date:From;
	b=ZUEmAOWpOMwpXkCoHlK4h8ViEJzVDrzZBWd2e5z1wuiq93sRazvFFdyoS6b4aPe96
	 yI9t/gc3K/THAJyrm229L+65o/omdWycjg92iprrWBl5vQYd56pNgBSGkzlQV8W6yN
	 tgGhFLqV7o5dFjYcVeaV+3TQFuDrfDl8N22bA/lQYywHWw4RQqFZH42Sl8FbPBKcIE
	 u7Bjaa1w1iwJq9Mc2jIkgyR0ipviCryF92wrBFrMSwdjJfjWg/m0w9sLbmXKR3rOmh
	 U3JllCL6HwFqhGeImCpXK/Lv2/6ebEEcSm244OoCl3KIf8Rld64sNZ1aOgMCl1Bpfx
	 e311C4m4pSESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF8C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941099357.5223.4113908503912904637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c856395aeae0a2d370b52cb63a91c1d7b9512aabe78911ccb4fcc2ee938c45c5
Date: Sun, 08 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749410993

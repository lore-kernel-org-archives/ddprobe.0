Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C46F34BA52
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758770994; cv=none; b=ot5W47qeZAz6a7g0phlYKZXfs9cPRgS4dQBZsUt1hkpEZiK3P2sMDE+F1lzFrD0P8cCdZ3bx0CNesBwebk+T6XWswKR3352GQRKuZGvrAXLF8ll3NmNGZehhpYFSMERxQu6ua1jIhyPcDvIjgaWKGdiQRa7RDqGJ+6Y25n3Uz38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758770994; c=relaxed/simple;
	bh=16lcHrnHPYieLT/8xazv8ADov57qgVtVAXXz1Q8J1iE=;
	h=To:Subject:From:Message-Id:Date; b=h8NK7EMuTbbiUP6kIfPV/Or4STMdGGB1PvRznu+aiQBBKVAWRHIeDDY30dRuC5/jAqC3ja2YCFrUpB3w+gtfJLEU61bNVwQZvUBhg88nRYJGC23T8ddVIQVIX4H7ZcXR2E07fwhQP8ugchqXTx0JZoCE9h7YBGOLeIaRq0Drqog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPuF3o68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPuF3o68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD18CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758770993;
	bh=16lcHrnHPYieLT/8xazv8ADov57qgVtVAXXz1Q8J1iE=;
	h=To:Subject:From:Date:From;
	b=MPuF3o68hbs4RjI7d5s2frrLxV9x/RIEa2abTZwkWJcSH5w7ifBiYTaOOHKgZdreO
	 kBuKV86WyqAfC+S7VB4Lm0ptsfGgnzBezdQnhFzdo7/S6Nv7+ATpmRBb8DK6/qWiYL
	 YKHJMtSLAFINThbFll3EkTsKS774iHCa+XqGCc/uaWSII46EKLUiOUuX91s0+pEME8
	 w62KOhvNFaE2hFF+ro6vWfggms2kXocSdhZB9XV5M8Dp/OZGGrcm4IdZzSZKVScGyS
	 wkYu6G4ZExMNC0/p5gQd5M2E30ySAA7UAJyAApzVFmzgd0IzM+kQBdbgyYvwQfk1hI
	 /x1UiUtepII+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97939CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877099361.21269.6159681690860578238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026bdb8706d06a15fe4502ca63acd91d0294afb2cc1ba0deebeb98f7d4f6324c
Date: Thu, 25 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758770993

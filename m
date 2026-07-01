Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2132470A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782898114; cv=none; b=gJcE56n2RgzMmIvKuChbjoIrJFNOCSZEhtTVFcC19CMsPVUJm9DagvMS51xbXAU6PHUJWK+ZC7bJzGCZ9LgivCFzBu3OH2Zr9rQIoJumAq1eK+miaNvz1ipXHT0DvErfK0ydnbnOGYDy76pDt66G5YK+yRxfNhVNTzUQ9iWsxf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782898114; c=relaxed/simple;
	bh=LDEYnQq8lzY/1MASinAZNG/21mrbC6mwzQ5/5TluaCs=;
	h=To:Subject:From:Message-Id:Date; b=hd12mDpD4SkotOtPgreF04VLzBnEDlG0Hzk9cxEvr/AIE0shijLWQj5MpsJ3bHf2hgt5sYcCx2jhlQXWZf4nxE8ttQ4sWsJopMJbnjYMwX035lLv2nooIrfqobOEeJcgwiPfJwXxZ8HiP/ZjdUZetDWvgEHiGHaWyL0hxWXEsNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLMnsf40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLMnsf40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE49C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782898113;
	bh=LDEYnQq8lzY/1MASinAZNG/21mrbC6mwzQ5/5TluaCs=;
	h=To:Subject:From:Date:From;
	b=fLMnsf40OVwh3LZ1pHngHNakU3D84dAswYnIbeAyeY9JCRI9puYaXVf4gSocVedJE
	 d7kdNFjKeTBwo65dll37lMZUog5hUESOK0G0clPDCIal5FSdfWhKFNR9g3HGVweDne
	 QMaXV8SBgEwQd1paTJn9waZu+i51SXXRKLpxpa0Pge2AzzC+6qm8pJI5Bu9+ORiKQn
	 g4Iw6HL+53JyUBbCyiHuO7Y1VR+I4nyvawAErOBIdcDBGLZFCO3GtBi5FLo/pFzFbS
	 ByjoHl39nFDlH8G+rU8pU4aYzrUhu+g2jCFP5hyXPZFCnD6DHf1xuRU1Y8q/rf27pQ
	 0xiSTmQGjVmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A813EC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289811368.25260.9238293319056418252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5ca61b6d64a5e6ccbef2e8fe1dc1918f4590d3a1a565602d6a3ed0c3255cf3
Date: Wed, 01 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782898113

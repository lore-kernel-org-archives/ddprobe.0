Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C810E12D1F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731099353; cv=none; b=WiW/jwr7QB3jhoOgXy0cuJU+Wa7nERBFWZhOkJzWTxhqxXzIuUZnvVUZarSiihhGLARg55Sxo12gs9zjybwxXTHVLUgSd5BkzGkGIcNz/mquW1AiD7OTmh3QJvwZQAD0e2qNzwtEJ70N8mm0TxuVvZATyvKGimd6zQsM55IStGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731099353; c=relaxed/simple;
	bh=Go/GWI3I6VKOGOjPy6PxhpI0cbn/1QVAmr4R3P0d9wo=;
	h=To:Subject:From:Message-Id:Date; b=lfvN4KnxyhQrqC6iL9f0F7Ey6R19Ti8sXshmhqgToxwg14aIvRlxbk15Vg6n7mwhsQ3A7aGu9hif0EBSyN8gL/xvcUoJYeUTRvmiNyl22FOfeQ1ksLmx03kqS4HetSYM65xG0RPQYGLMixHKEkzYYxyorLHWkJ3oQb8R8ou2Bu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqarvxhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqarvxhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45DEC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731099353;
	bh=Go/GWI3I6VKOGOjPy6PxhpI0cbn/1QVAmr4R3P0d9wo=;
	h=To:Subject:From:Date:From;
	b=sqarvxhj6K3y6gkmZDi6btD1iGv9J0boSPRRo/WHS8886eG1yE0Nn53HTt/ExNapn
	 hy/3L8klRo1OT0cUAxkqJ+J3JicE4cBPSGyxWKFSMyEvlbBvhalAwoX+y0wryebH3B
	 jVtBVW9yRPSxEmLMq4yGEZP0O/AM76ZLB/AWz5gnVhA+gD6HzQR27oVlWXIbIfN7uX
	 FngkvCfO91C10tg8yaxBmZtrohzGo0xEYeNG2UzKYXhMhpOyqZbp4S2XKAgjnUhhVh
	 uAMtgLUAX+n82jR+dyXjbTbA4pnNscWZBZht/Luf7WaabXPX6SjeTDRv63U5k/4Bj+
	 Q8eo3QTMp2Ibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FBD64089
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109935359.3268.11150776455351708908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01815bbe28b302a425f45304ac13fb7cc1f04b9f1b9c764a31d0bfa079ad366
Date: Fri, 08 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731099353

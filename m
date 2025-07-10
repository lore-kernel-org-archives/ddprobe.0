Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC72280325
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752115194; cv=none; b=BhngRpbv5MzGoRgBd6bE5+k8PjFxUyc3ynQljNEISZeJv6tksP/D6GqHMTqpKtNB68pPTrNVgj0fAFFYu0V8HU6KPyb1P4JzHov6xFHasNXeI4kEKxRmbD4AVsCiC1t9QuQHmWYzUlOzDYeUd0Q3XMYJ+m3Nhnc/ycQj/ExPdfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752115194; c=relaxed/simple;
	bh=O/NNTG/cFNj7yKXQynPNvAre0y6n/keoRszEHjdHta8=;
	h=To:Subject:From:Message-Id:Date; b=txIU29ZQuDSFzFs37v7fxgh6MGxi2WtGLCK6FZafYu7lGdF2PQWCedsjfhpGwV0WzEDWbWIMaglke5A0auZsL/t/oIvJzp2xti+DvDaHJ0DvwSYgnG+m6GwOOVtySXb8I7qERoGOooP36GOexfnv2ikdUUePuRvHgNYG2rCH/nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBKYREBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBKYREBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4286C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752115193;
	bh=O/NNTG/cFNj7yKXQynPNvAre0y6n/keoRszEHjdHta8=;
	h=To:Subject:From:Date:From;
	b=ZBKYREBTE81r1K+Htt2EHXo2edO9cpR9zRxnTKIh4h1j3mqZmivDWdB73ZPdI3kgj
	 wvtGTpzCfepu43Hp6m+JfjMGWtJcBqB3bKI4kUYtIZSV9Jo/Ng0q69NgM1gc1Mi/+F
	 MbbiIbkgBXxo8hjk+L59HYUP3LgrOnTl015WvoI9Kw0y7gNmpfqROJDdAiH8C8tZZ9
	 24u4wQr0Zwhkt58kR5vsQ1eBGPW1l63Vh8IUJrnjv4kr2yJ46YWVxADhVHNFLL2ZWO
	 8REXF2yuU5UA5lEKPpcBpAGT6h7xDWi/pxzh6+0V2nrTDV7WCn9SPKlOzstxGGLWQm
	 f2BBCus3HtrWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C6C83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211519360.18461.5464100925136505041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a944b550b2d2822af624d2b1bbb790f7b225eeba85328e675b8fa1f6677ee16
Date: Thu, 10 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752115193

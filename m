Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164273DA2FC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769123635; cv=none; b=GlYbpNI627nmXjatdECzgBhxbUpV12EBE7/IXGUV+vt+zrbDt8h/jiR6frRU1UTV0co6xWMgp6qHXJjIpjqrVzZemVFwLHr9JWwAMcJbG47a4DMCC6dqaljAyUz7YIyouspWGlWi8scDeu1JOuE7LVp1DduIenYLWahEx80T/xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769123635; c=relaxed/simple;
	bh=n6wqFwpjBt7yCObbC7+hVNkbJ9D4CXUsdlKm3JgZmAY=;
	h=To:Subject:From:Message-Id:Date; b=ift1dlqQFBNzwEHrLa/v+A8LU0Qb0h1hXNS/li9zsjkpi64u9XX2esFsMu+Yt1lIbW/8xC2qkzXWCl4SCzzuTj86CaeYP3C/VSaElgiX+5CxREUyex43X6mZjL3tGyuFbrNaKieRPnF5Kn24iPjBNwmguprAdni+3k7SIdsUPtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIHyI7LE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIHyI7LE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1B4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769123633;
	bh=n6wqFwpjBt7yCObbC7+hVNkbJ9D4CXUsdlKm3JgZmAY=;
	h=To:Subject:From:Date:From;
	b=PIHyI7LEMbn+c7M1n9zIIrHW4t6ll3WRb3pC2ejV5FecQ5wO0JoSlWQKZSeBKS62L
	 vzYnoxd3c0QU9sKl8/y4hkP2PVh0TwPC+0Fqaspzch8tAgELkx4B0u0MJ+fXRebTmD
	 qSq1onyWW98B5e0teozAt8ALwlqXkMT3rfFmdAdB1FG5D2GBlkNiplaf2x6OcDIU0M
	 rDDxMISiIq8KYppTi/DJRettoTLbbcmjSH4wp4FJ4z7NTm5tpRYB/D/aWQ1jtbELN6
	 hHxtXZkQ6n3ns3TDXTSnSVirM9kU+iafUIl4sTiq1OOoPpSS3+shw3rshtewLe89Rs
	 2kr4wmE8tNzhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F55D6CFAA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912363358.24794.475717168424579803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8111b1b875e86bf4fcae516319f3192f4403de92911c937bf4d4c5537cd6b83a
Date: Thu, 22 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769123633

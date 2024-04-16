Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537701327F0
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713284963; cv=none; b=nH1aJ7dleVVUC8iAx7Fd5WcI0gkfm6cfe7Bkuuk5OUvMWUqQGZ2GWTVOkMXC/lNssDDO88X8B479G9Q6JUeEhX2jvlCC61nYRgWcr4JBQVG+St4rzVdScTB5LZiLXp1zxZEnPx7CMrjPT8VA3ETD+kRp2yPvR/mQpC0InTmZQSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713284963; c=relaxed/simple;
	bh=Zh8lCDF8n+/2BZ5I3He06O+npkGZWI0XsU7QrSxXXYc=;
	h=To:Subject:From:Message-Id:Date; b=JlNDXVIBAntFH0tjchLZsbvDxUCgptDcSPghuA1h9Fqg5Z6zjiK1QTBsVcZ1+p4g0hWuD6Hm/jWGwxstEWLjoFCb4wvCDkzBNoDyfNedtEYyJ1EzjK/aPoBtOIDxiHfSKryJK0T6MErx4mNxp2njZlID7XwvIhd1R+DAmrs3qnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOTXLiAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOTXLiAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACC6C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713284962;
	bh=Zh8lCDF8n+/2BZ5I3He06O+npkGZWI0XsU7QrSxXXYc=;
	h=To:Subject:From:Date:From;
	b=dOTXLiAEEW+p5PP9h8vkT/EZqtdpeuPl0R7YbdnFQ9l8LxAExfWNhx5kBOrbgw9vM
	 8+Hby2o8+TugpU7pzMIm/XtBdqpILfIfGVHN0MImig1w5p/VN0zTDPVKGyV1HOIZRP
	 b/lRGCKTV6enh8hqYau/eLhB5djnsGE7RCtAz0CUvvg3ffsQi+YPiZkqH0mAdEIy6N
	 0VjXg0B8hY33MBuyhP7d8IYpWPYllUkRuxOr45qI9BNHThjosiGqjsWMDuOqL3tTjh
	 UClPL1NPYw8PwwfLSp9+2UA5MrXrZwpMugNN5Aq/Csmuoiii5ABtioInNnM4iEoppL
	 CNwKkwRihW/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BBFC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328496280.12599.6368211378953662601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e2a5da6b05ff41e16cd72c8628cb1992fae68f3ea8cb3ac989b1eb1a16813a
Date: Tue, 16 Apr 2024 16:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713284962

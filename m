Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8AD1A9FB7
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756627194; cv=none; b=fnS4XW/PGssKCSSG9qYeRxBjsVFQNA+okrH/UmxT0ZmYC48z9i0JwENqMUuMiMu/mqJsYwa2KxGw7/5RyFu/m0SRTyiGh/YaNPb2tiO+ahjUvXTIdyoFmCQL8z5MgrM2DP/6HJTQrRZiH0jKSFrtCsZDIXeGnKWIThs/DjUDG6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756627194; c=relaxed/simple;
	bh=1beq5Ge2VcaJ7Mq9vD5l+mWXylQMn/dwVA4vLzmqUWs=;
	h=To:Subject:From:Message-Id:Date; b=tKWvPzkoU5V85cjWlADoncmJ/RNmBSAwNNrIw312AVfdapDCgkS3ZKh7ff8dkAIsFp3A2UfjrNDfkdWLoRhUq3qe60BguYYF0PX5m/iYOct54YMhZBMUcdcgDGTQSNXFqTtIz6Q6jjeHenLwE9xWRLmLs4uWJ33Nv6wifXAM4Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmpuwvzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmpuwvzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A460CC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756627193;
	bh=1beq5Ge2VcaJ7Mq9vD5l+mWXylQMn/dwVA4vLzmqUWs=;
	h=To:Subject:From:Date:From;
	b=NmpuwvzsV2RicjmcFhgPPbKtODfqpnKlDHC+5o4wmEFyyf12IyEOGyWJ4L9sB++yq
	 8GNpPmhJrMYyOQwCjOPfAIiAxiBhEkktFA/tGMdLW1KIKMb3zdrAgieVgElwrZcIs1
	 fPPeYkxD2R05Ips55L8/l3AwShwg0J7SCHNLFJQNzInbZa9hEdneKfQ0OxF35Jm3g+
	 Zvc4NIQeGxMh0+pcz/UpfA4NSA28+r5NLUw+eBUd/H0+gqCahxRedlvUfrrK5AwdzX
	 hzdtwbQ3B9BekyVy+96xyegMQGYNjLn8tLr/aV9qyq1bFMDofzyy4HHrLi4gQVCteD
	 j8AKLytUd29pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91309CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662719357.22657.11112206098015570125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7f38c69f5cc460b161bab202654790ececc606588e9c75c21a45cb8f9cab15
Date: Sun, 31 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756627193

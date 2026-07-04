Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36648433E84
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783142314; cv=none; b=GL6DQERnj0J+zp2vvG4MEB4irgbgCIG+aOBxN9u+OoKDVI8SCzvmsiCkkdDuAhuDLNfw8B0shtVkJtSxfgRRyCiInGIlTpURvJkPXIJ0xZp4svMqdZkkneCA0R8N6B40jvflX2RtTweM0NEUxwUUeGWtIFPY60Xvn1bsh/kg4Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783142314; c=relaxed/simple;
	bh=kpDLE8kBFTZUZwEYTDbROZrQJ7+KFQe5RqsJwDTNzY4=;
	h=To:Subject:From:Message-Id:Date; b=Q2xQ6qO6pG1Ef3ym/Lh6joJ9aQqsDRdBSnIH0r3mLTNT0oBgX9wNdclSKCacEYoaAVN8fJ8E1zDhoDaSTm1MtISJiXaEzZeFPjMw49hVJl5WY+r81AS2FKl5y8PPCU0WvaYZL0aMSsnCKfb+xlVS4ZJj5UJ7ojmR55zNT/pcZ5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMD6W//N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMD6W//N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D14C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783142313;
	bh=kpDLE8kBFTZUZwEYTDbROZrQJ7+KFQe5RqsJwDTNzY4=;
	h=To:Subject:From:Date:From;
	b=jMD6W//NHlrLMyTbBnXrxFEaed5e3VouDiNnL+xK0HBsOrAT1Y2163iseUt2v+xkF
	 nxZ/QatIxq5AZpx6a0LNNbn6CoPhJZEBhQfx5QmKo+WrBO4kNg9kOWXbrYVeoPXP+P
	 slQOXrrOKcV2bVXNYEfGgtIVC1H6JaJGM+GVPn7iB+/oS/SASoXSOEtS7iVdAdGyph
	 Yd8IjmxdSS/fCh7+ledJSDCTrCFuAYWf9ZOh45kbGjxtJZMkuvWGfbriHGBskGAUMX
	 poEysW5vvop4UyHdHbySO8kvgin+jCXgXlHlAZnV5GaZVF5XlS2AZRQVzrBlQaAc+B
	 h3CysMN9ggO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE00AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314231368.11397.11976346552532023337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07af4c6fa965f19d8f7bb0adf40adf8d0e5841c2ad4ca4e82adff75dc44f459
Date: Sat, 04 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783142313

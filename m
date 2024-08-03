Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA7823CB
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722679554; cv=none; b=ScXVagB1pld6VrdDJNbENgK3yDmbOL/UcpsHzG0Wm90O0SeKfvhJvSZiacgaz6Pr0tZ2ObVJf6QgaKx5tqti7pqjocjemZzSuGF40zcLurc+vrxy6kxjRy2226MhpvCCWVVou+XQTB0sp8o9wu4oorwGEgWn7ozGPE5IfrTT79Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722679554; c=relaxed/simple;
	bh=Em+nnCxB/KxpXG2lTo9lOz0UYIROot1LiV3h2ycHw6Q=;
	h=To:Subject:From:Message-Id:Date; b=Z00PckEuF3+ce00PAVEPIV9UbPx+3HooKV1IOhOt7BGjlJfJMBCM65yuhRKdqKqUSZEI5GXyjasmmt1KCo06QweLLwqm2bBC1SgtjOTHqcLyym+qox8z55K4tzfr+yFLk+MrODFBufB8ojjI2Ej9s+zB2KmyNvmEBUrtlX179qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7ZoKcF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7ZoKcF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7168C4AF0A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722679553;
	bh=Em+nnCxB/KxpXG2lTo9lOz0UYIROot1LiV3h2ycHw6Q=;
	h=To:Subject:From:Date:From;
	b=o7ZoKcF3b45omlsPYIqFn+8Ro2QPldw0Tb2jqZLUVdibV+KF119NftITzixqarNxG
	 Ozvf1haiFgbjeCVF0YV0AGTVjYuI1LPCen1BP0S43m8N52DnMQNRuG2gXya2H/JGVj
	 ktepLwV8p1zAPWxJeSfTEop3ncu6xv5puUK1Tl0Q2Oh1lEdJ2st0w4t/W3kDD6O68K
	 4+STowAuV1Hvdk3dLSX6lIJcb7erA2u6m1K/7OeaL/CoD1RTZyQLy5J11m37PG1vT4
	 niwscxgH/1AUOI7kEt9Q8fP5q68dbV0Xkz+ZV2RS095ckDyNtBeXRJ5FzGIjmTj3Vf
	 t+3EfVvPzMsww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B23C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172267955362.5465.9480026140867445068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e24107fa522c763db8315f066e9e80cced5d8374c3dacfe8f83d6206685eed
Date: Sat, 03 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722679553

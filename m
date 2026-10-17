Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7A7187346
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792279234; cv=none; b=f/Tdou6E1OJUn8njVEl/Qz4HJFx1mn71WMtcCEQuYXTEZ+fGZzrZ6MaABVjkLlXgxpXzLTnUQuWoqbkc5AJwqK/fQ2td8Ssktj3tQzBxZMfR9+2wANbBE4O74oGj8Qi8+tyd9ZDMpbLVpED1M6IB0s48OIxallgJMpDlFXJi74k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792279234; c=relaxed/simple;
	bh=EjKNBE0oRVtTDqJkSOniI271vKWyG3wQi2WS14sBcKM=;
	h=To:Subject:From:Message-Id:Date; b=DRWuITPW7NBOge07ZlFkA28fR1kavPTvv/dtP5ZehM0kJ4JUuVDd+FgTTSXTkEZB6t/PwdVDrGz57Yrw0YG7Tj6euXtvfovgKytYsc4kyb/U4gB+XhdW7imtVvkD3i6EQ4zN9DFaYqhRu29dql7j+tFUQCo3RzxQOIrpJiDzk6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wfun3mit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wfun3mit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB4AC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792279234;
	bh=EjKNBE0oRVtTDqJkSOniI271vKWyG3wQi2WS14sBcKM=;
	h=To:Subject:From:Date:From;
	b=Wfun3mit1grknM4RIFqmN6DseeXZdgvlFjjJAlAAoSDwUnMHj1DU0xsYBe5L3UpMz
	 KUR9gM6bMpjtW209eOmAZYIDlxqdaXdpwsdx9NZItU81q7S+1YhuUt/A20jIwrFrXD
	 0jyWrS0DTYFIgxkOo03SLSAs2JutuOgaTNgaoNmmYY0XxWZHpAHq6/Oijg/D7w2bYd
	 9PM4V+AsvPs35ErrIFeuRb82PYkQGpI2GAkVjur4W+rBFPf7K3BB1gKyUMS3OQFULa
	 MeAPwVSLnGxdAO1SSM8E075roLxiOyNseNsW+JTEkMVDJ1AI7hnA/KzsIPXPoTGbk3
	 YsUCOkJr9dVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F49CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227923375.15483.12400106213175744023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cad2847e9336a7908275f020773184be9f704594aa2ffa31aad1f2289082770
Date: Sat, 17 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792279233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AB9326D55
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770852294; cv=none; b=P+CGbr4x0u5yI9pMfPZwVUpgLXdBAWYMfbMEUalJ/Lq0agko7FKhJJvpdmRrzmL66Ch/Xu2qi+2Zo1VOZq/ERZ0nUpWabpM4i+hUExKSCuRrgbS5KfRZ+UINupY1u8F9uWR3GUxmeQTjKemzXPtu/UoGSl3kSotQWFlOqtCNyZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770852294; c=relaxed/simple;
	bh=zSG44wcO9tZhXkfoDs2cJzT/mXN1uNVUyiJ0nAz4ytw=;
	h=To:Subject:From:Message-Id:Date; b=HlANiABxVAt/d9NmidbSeibvTI99K6RA8yPr7V8K+fRGw1K/z9xl4rpIPNnTquIf7Zo0KPm+/nSwhHB/RuAH6YpoZIsS225N8iglSTv8TclJvObt898dpNOCEoRHLmboZGHN39nCVzWXGchvPSpqkRHiNzmA/ecahCFktrjQwrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPrLzshU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPrLzshU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770852293;
	bh=zSG44wcO9tZhXkfoDs2cJzT/mXN1uNVUyiJ0nAz4ytw=;
	h=To:Subject:From:Date:From;
	b=DPrLzshUjTEIWNJopxMI4y/oq0l7npHeu7d7Ady8CTTxPMHyjglTP5eigotUoxwVB
	 lCr21C1FSBiglWNaQ5DCIhH2L87wPW4ZR4cr2Xn8HA5emgSalYt2ogmsef+UEPY1Ty
	 i0Ik5XKotWsC5FqsRKHMsdTRbhQxGPvGSYfZ+Y3ZKuTtNbTgLKmc1n9p4RKJbnGqEM
	 0p9fCS42T+4ceFyK2IvDPo9SQMZAo8DxLOaHGE7rpsJ8noKjEgfZViM6uVilxBp9iw
	 GNFv9qgpP1zt5mAIgsQwbRn/9Kyf2Qb8+PJ36GDV6/pUPNX3ZV6HuG5/DdncvuITO9
	 EdSP2TUO7WvnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A95ECD6F8
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085229360.6155.2035851732054655895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105f13d474fdcb013f42f1fa25809996f2dac4ee935225c0ed23c463f959e0e2
Date: Wed, 11 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770852293

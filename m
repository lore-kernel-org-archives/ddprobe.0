Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3CC3AFD17
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791621034; cv=none; b=sReFZ4/PE7kAYSmZw1JMF7ezr64BH0PQ+JeIqBywX2Mk3vtTD6fYJrzV6pNriYAsoeIKKTQl1ltgc5uWMCDQPEypEspI++Mao8emEBA3/+RADXClQd827aWCFaAXNFqjLDh5aswZqGFg3sHsRqYCWZ/MFbFSOhVuCoArETwX6qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791621034; c=relaxed/simple;
	bh=vu7uTlqqHYzbm66hY31F61mkg2A4Vw+znfVenEdaR5U=;
	h=To:Subject:From:Message-Id:Date; b=MNFvEh6Q48mLQ9S84Uu4IZTOsIk0PVY5g2VVIwYDifShUeuw9NuSbR+M1a/mrOLPJA3OnCNfcxTsp0jjp+HxIPtCh6/ealYHniObq6ilzvoYDvku/jXTqGSev3/6q7ibWcyWsUW8ODvEmqLKM1CCW/hD5WwRyaEY8p6DC12lA6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUYiMhA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUYiMhA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AEAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791621033;
	bh=vu7uTlqqHYzbm66hY31F61mkg2A4Vw+znfVenEdaR5U=;
	h=To:Subject:From:Date:From;
	b=iUYiMhA4Gs4ysepSopQiVL8mv5TZ+pTZkBE9FoUup7GYBBskusyykuN/cK9VdlBzL
	 XBhkYdbCu4X3Y+0cArSOz/oFM2Iu/WSgy94gg/3YCRkS3hPjju6EAJNjMDc9jmJ2A7
	 0MlTLWErVSsZXs7Elp70NaSzQpf1BEEUWMgqcPieq7a2EOet/Eh9lIM7GWqVPqfBQC
	 fynzeHVt75kS8c3mWa/zWilEuDSiiKDjqpGcJiO8j7rmPNuSU1Q5TKKo/hM9C08P3X
	 JON1HdLganhYHoNdxrbUZL9rvxWtYyBhtYy4tF4CfrV1W+FP6jMvAO25znSolkOZy+
	 dQrV/1DMFneyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB7CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162103369.12695.7638658318566767938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529bda802c9cf6063ca072cbc1d88d1a4703000e2b20f2e748a57594874593a6
Date: Sat, 10 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791621033

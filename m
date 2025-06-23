Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2391123ABB2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750674594; cv=none; b=EbJ/k/WxmJDILmRZ+GZkvPOk7yXlgvJFtVPRdLBZQ6w2slU8VMPCTcpMWJhEm4YfUm+8yvVs+KAVjCf3XgEXSEDWjpxgIZw+wI3cxuZOSEaBHMpbtIpY6LqVUNH46CfLTjqKS9BtY5gBaOBemJZkm5HDiZp8/yyFHTtoao92+nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750674594; c=relaxed/simple;
	bh=92FnYfeJUK9tLPlvLXOg701MDiEKibdZhFaJcvkNTvs=;
	h=To:Subject:From:Message-Id:Date; b=i3EuxlCijL/4MwvioLikdm9FCrjA4XZpsEwjICdRu2lah3Pide0AaSViP1WCEtzO0iTBjLDnefR+syr74zQ6aF76kfQ+XyHReM3698ZH1iNJ/32m5NrlGGZtuSdDT+OLJwgBV+NSgfcYmFVEP+0h2narn7rYxDs8IAloQ/U7Czo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lepia9ER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lepia9ER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0484C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750674593;
	bh=92FnYfeJUK9tLPlvLXOg701MDiEKibdZhFaJcvkNTvs=;
	h=To:Subject:From:Date:From;
	b=lepia9ER0dJ37NI4BW+LOXGoxer6hUyOBWSk/8mrdkXVuECApT8gn39OFEhfk9uku
	 UhN4WzyoUQ/oS6YS5D+UnhnTLEOVH3RpmtCTsGYUVz65j/ljj4iogYWyaiFRjNoAhP
	 Fw9o6wOKABOgpaiv6U7l6Fm6XN1jKWgDkIQG1+UqoFMdrWNVP9FpaaOin8quECnzyT
	 z1Mq9dvkCOErunEro9K5503OYaVmFzrJ+dnxNUawTTYU9mpAAZwCyjQ4mfxjkWpC1e
	 u4Rq6lyD9Bl2hVD3rDHTA5QvA7cMyLhLRoML5DJD6LaARcZFTfQMcew5sMkm2GvdIY
	 BR6xPzT9LYq3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D9C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067459358.27515.78055692387786284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de2f7c69ce9ea51236a7215b1ab50bb93c0aaf970712bad958e4eee1786fb1a
Date: Mon, 23 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750674593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DB9134A8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717323923; cv=none; b=lBJCnwySz5ZQd6Nm4jWnK8+YtlRZ2nBcxta9dklrrvSIbKmS2BLtx4TGvIC6IzNtBVjpMtnyBWONEZegGuN3NqPYy2ovm6/g/BQ3DbVDL8qOyzOaMbNnE/zwJLoU+SDR54zsj322B8x4O4kba8cd4Ak+wZLsgzu/JyQByi+QJHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717323923; c=relaxed/simple;
	bh=0KG7hdbUovzeHmStGFvG6lVSsIDtOQKO9PMMKun0uvs=;
	h=To:Subject:From:Message-Id:Date; b=nFqGKi74DyGDisPbYVtoP3gneIFyY+rFi3nwEqVEcg6vQJOns3TvLWa30rFvwk+eg0pniwV1DXEZl5i2J0EoQp9/3plvEghb0fyMAV8K7n0i4k7FM+Ei4CxkMGReTbDR34r6woDBvtqLCym3BoI3i9sVDj8Ob9Ixa1u3IOmJoKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYNfZfCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYNfZfCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D062EC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717323922;
	bh=0KG7hdbUovzeHmStGFvG6lVSsIDtOQKO9PMMKun0uvs=;
	h=To:Subject:From:Date:From;
	b=TYNfZfCqKBkhTVMEEzJfkl3RXFwUtPIVt8GlRl6Mo4L72w7/gC1lWdoZ5wSfiZGIA
	 p7T7oaPM3OgBFqhJZTdH9+Rs/T/eVp5J2YsHJHcDqUDGHR158fXLExnzGskGshy0kg
	 kaKqJY6Atka2i/nnDwH/2lqPpTuUcC+smy9nURU1StEhhNv+XdY0qA8POojEnbekTO
	 RrDR2X9onnoXCvq9hip6kqO3KMxg+ukcdWKERDfaltEQmPMuFBcmB2fBN/fNu8BMO5
	 OKt03srlnpOoDclO1hQ2xC3dSNA40WY3+Q8JDwRWkolfWTix7lOyH3w0KapH90q3yJ
	 SyHqFQ7srhUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5D3C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732392276.10227.7290686166860340471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3597594478d0d19b6b7580f29742a851a010d95eaf028a50124e2401bb24dcb0
Date: Sun, 02 Jun 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717323922

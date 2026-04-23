Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1400335966
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776959254; cv=none; b=s6tAnjhcTIaXxjBrFKrJR93tjBmZ0jH15CzzxPtKMaMB4J8vlK51Znn9z60v815ZI235oOmQiCglKXwLSE1HwNvo6wpdfG6/XvxUHJsxQnOBH+46RsOAXzG/drJ6kiED1QBXQzlD6U8h8uoLFjzVZTAxWrVgm3zwKxOVSvH6vtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776959254; c=relaxed/simple;
	bh=IzMmwVlk22Bu74IHVH8FOhrftvKlScAy801lGoZ/Tw4=;
	h=To:Subject:From:Message-Id:Date; b=O1LWXtA9udE+2mVlhDMpe0WfHJVB3Rp90PzPtNvHbz7mCJbWPr++h0taeip/XSmBSyLpxHPvgcNsBs9+hBp0kNcokWsayf8vg/bMCmPAzB5YCKNuzWjSCjnll8ozmbZpg+rAN0+j5pOYY2BYKaV/ItaWTrv5uOlaFgNt5pqxIaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlhGArtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlhGArtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CC4C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776959253;
	bh=IzMmwVlk22Bu74IHVH8FOhrftvKlScAy801lGoZ/Tw4=;
	h=To:Subject:From:Date:From;
	b=rlhGArtATMe0OCAfL/JKgkoiQjCToc8uolVQ/dg3TXPXdtCxAG0JXUmO4Ik0trQUX
	 WXTLXUy9TnQDqEQfNdPJyMWHepztYwmoRImeqHLJjkaHahx50AbKdVUsVf+Dpo/wBK
	 NPaK8SLvGL7sAhk9gQLxD2WDRXy30sy2HwDDSa3RuibfIA5IIJgmPiEIm6t3EwSILO
	 DFa2EHQo+DjYV2QZmKH+daenUOxmZ8G+9IpS49x0O0Y5UVsMOlTxh2USbgaqVLiV5x
	 LRbVxq6jW+wGDcUpnlzALPG2KwhfYG83d6b/4X6JA6zvYVzLoVt1bUJLiyKpDE88up
	 6QtDjyq9JMIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A3FC037B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695925368.3708.16641430419033278227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7b7a2b907c081b1b42851bcadea3d0773e6caeb436c3a129b8bb8b84b898a0
Date: Thu, 23 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776959253

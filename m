Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2952E21D3D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770000234; cv=none; b=CaZmqtp1M2Q9+y5dNVL70lullmzhP1bYtQ82ydotwMHdQDTDkt/7ehLIcN3epT1H35rH+uzHV5c+aOtxp14wQn7ps6tu9lara1RVY3ZxkNQbcZyauxEF/cNe33ttvzwdhVtly56n3WxHvklaCgU1rPTJHh6wTxfjx6KK4hK5TBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770000234; c=relaxed/simple;
	bh=dKWACxPPm2Y0an4hdbTjmUlgm9QJ3OM1T6ZhSRzoDUM=;
	h=To:Subject:From:Message-Id:Date; b=TjHhgnRVIQG+mAwzxGenvUv7/VyPq5jjtOxSu+XvnoGKmj9LRPddCZbIy12iUnulDpnFQ8VP2mp+BGwIMWfaJAGV1U8awTepx3sjDj+pL4eql1APuvDX2ML+/N2RF9P03Oa0LaPci1fzUhMZvnwOIRdIGxh06rIAmC/35SSRbhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgaXqhY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgaXqhY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EA2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770000233;
	bh=dKWACxPPm2Y0an4hdbTjmUlgm9QJ3OM1T6ZhSRzoDUM=;
	h=To:Subject:From:Date:From;
	b=RgaXqhY/T4rbWfpgKHD1En/CvWKdc93ttC4BaG+ngyJblTmhAe0+3oi2LIv3z2S3V
	 UVwGtx/76y30/cT6BHA+DPeBmNf4JvRz4WOsi6bj6x1alCdF+4PEOJiNjphbFoBMCV
	 6w7XVc17R78IhKTOIgxw6+4lRoSCoSo8GbrY+7GDNEcOTVTj0Qq5/Lzu04BgnOuA13
	 /GHH67xnB1QIgkSBC460T8Y003dooCS26JgpauYE23zbqKNwZWr+4i2tF2be/c5ZJl
	 aS+PxvSVIA0s3fx+/8T1wGl9zE+8l7jZklJCgENHXLikKhPs3abKlK1EGFEOEnXrHy
	 JuhRpLmOzcjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEBDD172B9
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000023359.25594.16337888730344543656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e141d649c6b254eee04a378f5dad5f5e5bee259101759112c9cd3be338d7576
Date: Mon, 02 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770000233

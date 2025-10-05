Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1C415ECCC
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759642794; cv=none; b=p5vNctkDmxC1QaGp8ytct1Nq/qj0bMSKHJBTJzdmlXF4RYoJehuAhtW496ltRUWK/mdftF36tRt4EVLXLNGh1OOkac4x2uXORRSyQfj7e8xfZl8gNPfxwz+x43nnJwZQItbBeRC/tauy47oPFpPmvpVu3DoGyomRDN1D4w97AyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759642794; c=relaxed/simple;
	bh=VFOoXRfKvMzj/RpaBoHUrA8ap+ztzYzw43ExflzeC6E=;
	h=To:Subject:From:Message-Id:Date; b=H5MEgGEwYNQ0s8MU6KEs6qe7rS7Bu+EiupSuAriA1xgMgq09u/epIMN87tBZMcqkZiWCFBkLCjEdbzeizD4RI4i0EbDQy8pTAPtORM/NX6Zg5VU20XiB55ocMzTwoqzF4QfoAcywN9x1+/lUoYynOUAPNJg6Sn9q9JVO9f1JWqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIieP2K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIieP2K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1EC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759642793;
	bh=VFOoXRfKvMzj/RpaBoHUrA8ap+ztzYzw43ExflzeC6E=;
	h=To:Subject:From:Date:From;
	b=JIieP2K99kGrNqkTo8mKOTAd8XTKGYg9PjszuiMWQjvxRFu5WDOhqZCgBju3O5pev
	 scAFgWUUOEKs4PUbt4VUs1MZm7J6NI6XRWza8lwd+foZkkGZshg5dXJd/0PxgUJ/5E
	 XsIReBss1+rTC9a1i0l8Q5dGdoSKdXJ+udGelF/4JavMVoypkgW1wgISiWkAK8MBOQ
	 JXj6xpcd3XuwB5xRagnkUuIxZAUcyOKb6U4hLytj+q+31l/8/BP2SvwykVGfz/OCGs
	 VVh93EE6xPe0G2nt8HclO/dChL7Rb68Go6Dwt9Rz0UUrkF5Ea1F1HhDmJ3dO/+ScAL
	 EuBgKS59IwLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C0CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964279358.23125.16499148307681039616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e855225f33c336c2c09ebc21a928eedc725419f7351029d62b6bd1b7be3b1a9
Date: Sun, 05 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759642793

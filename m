Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2352F3081DF
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757486394; cv=none; b=uFB9G6DvPZbSXJlnRPPYCY9a6HflU7f/1pxH0bKxU0JosC4Hmdp+8xQu+PRq9+Pa0U+LsSTiG76KJO9XzZI01ia0HAyIY1BdxA2I7nvgiT8SMwvbdxK5RAzrUV8iVDDCcdhzaT3BI0wXrCEQmadACTg3g4PsfdQrWguAhmXSXTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757486394; c=relaxed/simple;
	bh=jhoGfPN18rrw/NZbXkxfzcSgrMDWd2/yVLOtSvzaHFs=;
	h=To:Subject:From:Message-Id:Date; b=j/jCY4jJRDs4ERRxk7UIUEA6QMVyJWgjTXtEfgdKZDWqmYV8NvRg4cIayRIBTZIbPMtJ1xLIshR7NcDM98T2Jj6aoh+ZaWsiDBzugijQG4221uE1tO5eV6y+U9mMOzAtwnJ6NX2C7g45Lhx8HNYaBGxRu5mZ6FdohOy2YZoStZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeLgZESE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeLgZESE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF1C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757486393;
	bh=jhoGfPN18rrw/NZbXkxfzcSgrMDWd2/yVLOtSvzaHFs=;
	h=To:Subject:From:Date:From;
	b=QeLgZESErQAX3hksNR2CYQprVB5aL84rZQhbcbEHOmTD835g3uy21Nzu3m+FFXkrx
	 ENFAd+kUZMaJuUBrtV5cf1615ZGmPRZn8Tq5FtnQCMfoL9sh54+0xWrHOgVGfiPdK2
	 oCQSC4kbO5GyIU0TkzDj3y2D0lads+QMJ7cG7hBPvz15wAZcyL6pLQoiahHGoE2IU2
	 P4VVh/wxOq7DgCrjBISJEryhifSIutTq8eXf6JnSLH+GWS1NV8exCZzUfPs8yHj1F9
	 rP+rFDP+PrLYIjQHYSX5IqMauQtA+BwhP36b3GeK+3GYyKP67ntoZ5xplixyJvnDyQ
	 aAYQ17bDfpjfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB34CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748639357.20330.17727642598265823732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c508a735644b32385745247fdd5b38c8b0e68b99c510714c5e3fc7dd9e7aac77
Date: Wed, 10 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757486393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C0392C2A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780306474; cv=none; b=G3D9nOfVpMKOlOFP7NqUuO7X6dtbAkwlAV9B1J4ldhb77tAqb9LO2vtqqXLam5SMYk5SExuPpVYPRa2CdPiJ490SPAt78I3iPLF8jCsNF+Pg+hW6IaGY/Rkc/6u1BnTJ56r3S/n+sHkd5qJL5OZIDMLbT1BtoK/cc9K/o3ublKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780306474; c=relaxed/simple;
	bh=P+kAZwwUbUURT5m9qZ/16t2Z7ell4HbwKtUCYGRKr/M=;
	h=To:Subject:From:Message-Id:Date; b=ssQ8Yv9bQzDb5b23MhWjEcYncxlkmRkoGhgiUACnJeun2W6h5sprYwt53aquiuecKmaD12BVH5L5WrgmVIfQhhFMdNUEG470U3J/tsJG3ZTv5UAp90R3rjuS5Ezb1JTwRd19l9+slsaynyzlVV2Kk3zHlsepdeiuen6dRds4Nac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIzVfujT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIzVfujT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8E5C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780306473;
	bh=P+kAZwwUbUURT5m9qZ/16t2Z7ell4HbwKtUCYGRKr/M=;
	h=To:Subject:From:Date:From;
	b=mIzVfujTokhzjWMjWbjfywN6kAdNDU7dcuKVOq5NiKAewGooBBWb5300iQxmFKuMk
	 lkHtjC+zLaR7XltAri3aSme9tJqOHYzFhv5B6LbqUnAt1pnJV1L4Wny2mT+ANvFiRK
	 KeP6T0ukZdv4L4g9SEhgvtxMYWFOKjI3EhZhbfc8TpypwpwRI0XT3P5WF3NlgoetYq
	 AnzGBi1WWsnR4sjPHiI4wgff/YyF/rinCGV6NW6MzCNYeMs3y2CFz6IupQ0eZvbp5U
	 5mZfEIcIShJBen2F6jmvYK0d5LGt1q9+ToLD4V2cPiyl5N9I6pwlzybw7NUnX4Gu0j
	 GMg7s4kTaocGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C7CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030647370.31826.3911147255295975884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410c7a5a71b2e8311a977dce64f032a08af8cfefbf77426c833421cccea2d497
Date: Mon, 01 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780306473

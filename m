Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D55318A6CF
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765006974; cv=none; b=lSFvsesnJhJDxSNNIv/OX1g44Rh8IIAtQCL7yPBHky7zNUFyknYaC2APbjFe8NHMl07fJj92le+Dd1C4G+lS6EvN57ZciAWYGMZA9CD7wvYtqrH+F1Kzg8X46iQ8saWl9w12kzieEvoYRsl8aySUreWpn1mNCjoXYglQLQP3MH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765006974; c=relaxed/simple;
	bh=8WOJIXXh3/7ZlcCNNgPGpWHp65YUyGfY3VHhNHG4qa0=;
	h=To:Subject:From:Message-Id:Date; b=PxllEluZTOGLtnNkuZo/atch4m3jqGxeHtvkyrzq/y4SV7zzzm9oYn1MktSi9SZvg3cIJpH7ipjDM09fDti1Mkx2CeYQCxR6Wn9oxGigh+sLLCd+d6S2/CDxZHS729yoB1ihsXBbunjqJErh4j2pWS78UMkPf6u9dTt3Fwi8Yqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVv4gSFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVv4gSFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF70EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765006973;
	bh=8WOJIXXh3/7ZlcCNNgPGpWHp65YUyGfY3VHhNHG4qa0=;
	h=To:Subject:From:Date:From;
	b=LVv4gSFtNldgeRvDPmSfH2LYPhf2ss2Tvs4vBu/JZhiNoscoNJ7j4iJTp6dbQezEq
	 OCfgw+aEOCS63BuRc/dh6JKjUncRY3IqNx1ziGeY3jg2e/QIvve1ZISqPMyXDcDQqQ
	 NhO8U9Vs2bZm+0Zd+DlucBXaR4twRolSncpIymQyEUwbYq/cDD7UuLjrGl6w/XQY9P
	 hFSMxr5jGHl57ISx4o6kdHoI+PrOhnWEPnP/Fe8K36H8YutcViJMhBC+AUS7Frx8gi
	 vVzCbsJWDPqmiNF/7IHoAwn0LRRfpPLghrxk3Jx070iNZAmhQfljPaDW6fYI2nBEmQ
	 pTMoLWjyBrdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9728BD374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500697359.28738.16238831715883551318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb40cda8a212d1416a0c29a2bc4500e0676ca679b4d7ae56e7ed4ac802344e8
Date: Sat, 06 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765006973

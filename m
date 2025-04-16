Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AA71547C0
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744832993; cv=none; b=nnxKy5Gk+9SDbW3U2hj1vgFF8/H/O8VRdMfa89/4Kw95xriPpy8gwLz4VlJB09ojmsEW+ENi/WBFY0z+M+P3MNGHherScP/LlqV7+lI46CLS7O1xa/SmkcROOQkujdTEmmA23dzzp1wQB0H8oHEqixQ14AsOd3pxcAG7XIeawEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744832993; c=relaxed/simple;
	bh=ATigure0y7qPZhoWAd77Pi2n9mp5THTvt7NweI8LQAI=;
	h=To:Subject:From:Message-Id:Date; b=pSemx9lB/JUOJ/vz5c78SE11Lqq+po1/Ft2f6jSdAztwcWcIw8SpIu7gcDqGoGo+afnG40ucPO/iUdwH+eTTH75ukQ2ZYC6q1R2uL/8xoi0MAZEc3N3p2N8OV6x/qbT2s05B1b2Zh+8SlqmcRf7FkrITUJSQri+l0zEQl7cMCFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhzKuubz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhzKuubz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6776C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744832993;
	bh=ATigure0y7qPZhoWAd77Pi2n9mp5THTvt7NweI8LQAI=;
	h=To:Subject:From:Date:From;
	b=OhzKuubzSU/A0McGfBk8by8r7hRPPwfCNvcc/S2Ev84ySVx1wakK7PRRBgKsH/NQI
	 Wxh6T1SXCagJdtWDaxaCokVuQW7jRSrk7ItYHBLVJ4BFvg9HZLUi5PtvPRNkdv4xpZ
	 Uv1Yzm4W1JesR1ZeeYblKLMKHo7hXrVIJTRhoVZW93J7YdBYsNBJWviZa10aSAFKnP
	 OkMgJqjF8f8q3Xset3zXWCyJKbOr1Nfo5P6HCP4yt11rPfOrrlIaL+CEj3GnC2gBH+
	 fr9sXNcQioZ558DC6mJEhR1SF6mB/8TXCQ0NBo527xLnPHcr9Cf8gXBkZMk7dk8nEY
	 lzFcLIK6PMjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB50C369C5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483299363.22693.12492919952914525681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da8060027ebd325a0accabff3a8c248334673a9673a0b3303832829486d1d39
Date: Wed, 16 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744832993

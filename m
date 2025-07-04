Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2187D2566D2
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751666394; cv=none; b=kPLCOVv4Y2/3QwCWN0ZppLB0h8AmCHuevBVvN9wn5Sqy1acPYM3MtwC0lc2uFY5ELoVYNOta5b31aj0Cl9ejUxQ6Ow70EX18eX3D5HtF7ko9bWa5DlL+S2/CB7NoV2Y8NnXh+uVFKDJVhKi460G9Ea6e9CriMukLU3t8lGZDuhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751666394; c=relaxed/simple;
	bh=3eeTriOWUaz5eqF/qEEZl6IO3xANwKszAjDurxzZziI=;
	h=To:Subject:From:Message-Id:Date; b=dGjpBT5B6TgqgqxxuCzk4ABG01/8KiSVR+/+5/Bu+F6v63Sc2/nvmOXNQy5nz06OBJu7cm6e3uVSr+3mviNg45t8cfBSoSGxwpg2tFLc63E3sfAuyXtvSRinLiSqcWX57J4kycs4Daugjq7CcZQ0eAGtSwQ5tjjfAy2sXDuRrek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHs5Sa61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHs5Sa61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8155C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751666393;
	bh=3eeTriOWUaz5eqF/qEEZl6IO3xANwKszAjDurxzZziI=;
	h=To:Subject:From:Date:From;
	b=VHs5Sa61y+JHZ49OxxeUDO0jbfgwGXSS6aoiKCj7s4gY30gapK9DD+3KFgRvZMO/Y
	 vz4WZ3cUESQTLT45lcobY9kw6PYkTpqSfRCrbF/2DJW63lAw8q1e/YYWnv1OBcoMdJ
	 HcqYkG4VoP2Lq5MuVfhhWKjHScAd3V6absyKpIW0hbxZ/xz4b+LA0xpMr2ChAqz2h5
	 1jPGYBXTsH5Cf66K//eMtuzudgg8qnV1SwBhBuIf6UTLWLPagXv9jOPM+fvs4oEmy6
	 sRBQ9/dJfpBJM9R3PL2p9SNiMi1bwTltz/CNDIklQR6X0RTpG+87VuJ3KtV3QubNAI
	 ccRqPDRifyWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A94C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166639357.29397.3805365993017872843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d396b0723437ce75851607c891f101d714cbcf098b72676cba32020fdf6b660e
Date: Fri, 04 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751666393

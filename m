Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126A5205E02
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767213234; cv=none; b=PgfAQ2E04vmZnLChoe/rv+O1dWuNbrJ0V1CPpDDFmzksITzGA/RtZxhzaRuAEZMCKPNDpX8Xuk8222vmVDVRZpRD2DfDTjhIQoEHulHKSLC0Js5XRpAK9Q6fANdOTUHSrBBnv6ZRxzQt/z/N4fBBXxA/WwE3mClhYR3rz64tjz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767213234; c=relaxed/simple;
	bh=wF90PhMf9nbNdu1GH27Id/GdzNsRPiTwR6+dmNIALvY=;
	h=To:Subject:From:Message-Id:Date; b=m5uglLwbuqVC7VL50yg5pFk7rs/MPtZlZCubsrXedYnukp9R5/uzwvJq4xqa3eAHQlfCt0cNxrIMhjKzA7xvB3klqMyw6HscyrKLv1+I9yN7EX6jOits6gSzgAiX3CkJHWYWA1YuAhRM4EpI+/aXPfSX8zjY6oeOh+HIdlMSfQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/BfP6+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/BfP6+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA17C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767213233;
	bh=wF90PhMf9nbNdu1GH27Id/GdzNsRPiTwR6+dmNIALvY=;
	h=To:Subject:From:Date:From;
	b=s/BfP6+c6/TosczG1uDG5smE0BdX6hNxyghsFy9Zs7Bvnuqr0EYxUPFXZX1cdMIO9
	 ilTb4FbC4oamQjyWYTnrHceHoU8bpuy4ReMmuOdyKD0qRPA7UlFe3uR5Wg1J0a82t3
	 TCGL+36PZRQRCuLHCU/TubZwTmxc4jYeKrCfH42WymwrCrXFyn+R+Y7p/6mV5xE0OF
	 xEhe2BR+GVCGD19D9hGmYyeBSky+tuDnuXTYc4y2BcQlqSNVGptFb0kMq6Bx6lZCvF
	 Du80xemukhvcHr/zjmLrDIe5otIXWvJepazjhwhcy+7M6IDeoCtTy9XHhnz+QyNn56
	 GFQGlSP5YeXRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F880EE6441
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721323357.2936.9047191526471458453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d6e49136ce2590f0ebc8ba1acc0069ae97e0e99f1406cfeb3028e3a7c5b28b
Date: Wed, 31 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767213233

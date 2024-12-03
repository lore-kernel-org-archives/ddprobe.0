Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265CF205ACD
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733256954; cv=none; b=tpf/P9+oy7TPo5BHERj7L2OZO4rNtwWPfeVe3SfuerPbgW1NrQ50IRX7/ZBWkK5qth5aXTa/1LU/heErY8b64QP4yQxi727nOKWW/kH9/yElyeCkNS5Tcq5c1PAh7SPGTHoPxt7fkDeyY+Y8H/Rya9sAFbvmKFcvInb9uTvrsx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733256954; c=relaxed/simple;
	bh=0CdKxOuvkidExnVjm8CB9AOzZQAGddidsCTlJ4L/jrc=;
	h=To:Subject:From:Message-Id:Date; b=c/JJ4d+5VCaGdn5PB+MyCHRMJ3aBW59xEGtqye4McyVrqIu2MgNvavb2vD9MVlEEumsG6SbpqEGLBo8bafC5M3cnFJqLBUVoDDlR/DkIZjZQ6pHl5HVFS9TNKuYrkkXFBFkWcYd6fgJay9y7/X6y3zrjaHlf0S46RLUuL5EZwgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JA42nHAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JA42nHAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B454DC4CED8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733256953;
	bh=0CdKxOuvkidExnVjm8CB9AOzZQAGddidsCTlJ4L/jrc=;
	h=To:Subject:From:Date:From;
	b=JA42nHAWBqG8Ifa3lyM7fIWzBk18q5MHTFSV/Aty2zpav3NPvpbQlafz6TLjm1tuL
	 do79vgZBL5rX3BLZLm1aZvroAeR9q28fHYX8TVaFkSxfIvFUuLfh7a0lgzp4Q+mPx7
	 0jsjbqjv2lhDwiJXAvpZDcmNk64DQB5OXl11WzJ6aNXbdlkZ7zoYMG3OQYfTjOzMe8
	 FAITXrbuueFxXufD5Oz8Ye3jvt1kCqawt70WjjZqlHLEKKD6O5iRYhaCTbLOXMrEqu
	 jKylWZVD0AUHUw9oEalUwWlcVfptToL+wKZE4BgmwMx2pmL9B5rxwNYl5CHdsDRoLB
	 Qf0RGZFXiFuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A43E74ACF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325695365.26887.5191036336767788220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2224a372726f11045e76b7944552878cb01f808f056f6ae8ed31558be9d4b2dc
Date: Tue, 03 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733256953

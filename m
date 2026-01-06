Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D71F26ACC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767669834; cv=none; b=c73CajTYx+lgEGXllwdXsbqb4jrp7vrEEkI8/Grg5V2/MJ+jX6UUI/VFhHKyvRdI0w/vfOIvhF7h9vDKRJb15Fh+cXM04NwOThrmy2bFAk2iJWQwFxxqf0wPd0NS/8whyqLIOrPRwLEgUT9axbajOAk7HPGvGfwr7Jkl/fi0F3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767669834; c=relaxed/simple;
	bh=ys20vzfD+ZsbD43/d54/+rRqspWtrzksUDAndMODQ4E=;
	h=To:Subject:From:Message-Id:Date; b=YhSfLo6CdyELto9Ry6FBuG5UDFqVt7qYo5xTLP4+cp+8kAO/AhETz3a5jXAqUtTUz4J8jd8Jnvdw3fd+3xIBrXWxQczDawyr7XiTVIg94EMSRBJHERmPRRkIeyUXcKgo5ZbjxTqGwZ7qX9ysEQOXP1RpRQB/2eFy7301NfESfeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbHl+HIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbHl+HIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECBAC116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767669833;
	bh=ys20vzfD+ZsbD43/d54/+rRqspWtrzksUDAndMODQ4E=;
	h=To:Subject:From:Date:From;
	b=rbHl+HIOPPhqMKAz1aE0rzr1+M4p+nPRkfc2tuLevgS4gn1ze94NupdsEh0gak2re
	 keLl+eOTvZKxIn4/DR2ucCqRVLtkD3z7/1VNgISpNVv+iIwOFTeHFXDgmk2UYLwSjJ
	 vfEAOAPEsx0c7sSDsVCM+EDZwgfLkVv8FGxHmBvqdbCJhLA+vdVScZ7LCuFTU0gGin
	 MAYYdCaL+IJlGM425w1ThZGzdjNbXjrOkL6ZcuSCcpSClr2iJZHwVKeILuQMrTqRJD
	 F1Bkoo1mrS2//p2+ImJo0X+aOIAGobotryG1ISqnnm5viXZchzwZ63TeDrRYYDC2KN
	 FIi2CyF3MwyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB23CD0430
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766983357.3172.13840223005581603715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b27f82601ce1ac06493aaf7509e234ed9988a37c62b4788a495f5d1f11ec23
Date: Tue, 06 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767669833

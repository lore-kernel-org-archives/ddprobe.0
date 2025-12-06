Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC02327B32B
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765054373; cv=none; b=XQsdN/vFgN+J3VSFXTFSQhaeeQFWh+bIaYeypXx7s0KpI/XGl5GbXpmVLHqnjKwh1n8xUw9k13p4YfCLElGDfWXW97QFSU0KPJHDhoRGhchiOnPo+IZ6hnHPQCRRHcY+YT6iZiepNpUp4JATyZEn2ly1AhhI+yIbiEcgkfuhwYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765054373; c=relaxed/simple;
	bh=rgGcl2hPOD/vQtompi/4Tb1xfcqbjOFziTq3zPMPLZU=;
	h=To:Subject:From:Message-Id:Date; b=Fs35gcDduXlN6/PRVxiCeoZTpMYnr7cRbCLRWNH+Jj/8BVYGR3OQRYbd9sPqBdVFOo9ih85ZrmUpGtQUJxp35eN4EECI0FJ804lkOb2Cwlczetx24qh1c2T02m7NCYyWuq/qyr1q/ySMyaTg79rb6zwf9niojLrx/fwZGOxWlWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/ZU9fSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/ZU9fSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9267C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765054373;
	bh=rgGcl2hPOD/vQtompi/4Tb1xfcqbjOFziTq3zPMPLZU=;
	h=To:Subject:From:Date:From;
	b=S/ZU9fSt0d8uizR5KimwY/GtSV3rvxfosETJiRLQwFPxvhkKvawvrJ9tpcPjBMLhp
	 B60VB6DeaFFzg7X/qhgZ1vpzuA+G4VSh2PXr39+Zg1sNzrjqU/KJCGQ8AJPqolio8k
	 Rt3Lq8rrPhIw4uKIPpl2siFKOJhqI/3ExBClRb7p4nGOxWyoGGxEpTbkMjkFM10JBo
	 36rjLxicO/C5YgEdPSIaajnJJdJ9W76nbRMKP9AOAQAqhNeYdbpO/W2rKQBspyg8mc
	 bhfE6YGLxC5fHABGEo0hR5rTpGsIBomXCRC7KJx6yT4L9gHsLQAGyh+5hVunC1dqhB
	 eq0kWjxAJBD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97126D3B7E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505437358.10141.2333748125016602731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18a3710491a3a135de990e4b088f16c8a5958f8d942513f9322870add603d2b
Date: Sat, 06 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765054373

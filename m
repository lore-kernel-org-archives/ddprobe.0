Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515D0126C02
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790447434; cv=none; b=Ov7b2CUlB9agQg/DavxjTfLh/jvh4DvnN6pb92blPK9dciF+1LPq6RyxDbEoBuR2n3uB0fgisIEBCaK/+5S+CNcuSk9P1PnKZDWc9GtyYVsl9fhMOlkZSUw1jW8SYf9cpYk/LviUqcvZ64RFaq5ewDocBWTCWtu8Hi1dRTQS8l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790447434; c=relaxed/simple;
	bh=8iPnUtEwi5AlUHqxDTOw0VJ+JZv9/RSg3ksgbj+8nUc=;
	h=To:Subject:From:Message-Id:Date; b=VpUHusfA2Vp9E8sS5sMvl4ngJBh11I1CnDeMaqr/BASDzAka1w4NWS+7nb59OY9YSq316MlRU6nbqTTvs3jQSc84qDS5KMJeWuTV91SLxBObTjUg9Ox17xK/bw+7mNNEypk17VYmGBJpQB8nxs8CyhjmLzkZQOAMPdtXkpa7yzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXhnKKxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXhnKKxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B41C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790447433;
	bh=8iPnUtEwi5AlUHqxDTOw0VJ+JZv9/RSg3ksgbj+8nUc=;
	h=To:Subject:From:Date:From;
	b=UXhnKKxb5ZrHc5wrTvVFUpfGoeko+zpfYoiI5FLe/zlxUoL3/a/I0wicKWKcItHIv
	 rWMmE7881o13jh2We7vyt7dKKFCZjxAUxlSWOSMEDE76Y1WZQ6gs3AM402p9DWjmMo
	 tuuTiHJNtBkMMMszeoqoehCIsLnB31Jno0c7wiN5Pv+bh8A+wMPLZIkRQpP6c1p9er
	 9p1OAeS/BHfohjM/iWjTF2d2yrdbFezxYeerr5VfVHq4lMY2cWjrsWCzxXBsB0kVI8
	 BNibUKazGzNLh2a2aVPd/un6JpNpuC0hg7bb703q2LgjNJ8UzJjzEI/Oh0kqDwE+Qy
	 r9qzzhoA99Q8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC714C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044743368.15555.17195423567233986819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7664e81c2c02e10fbd879cbcdacb19b65cd8c6307d455dae3a0ee03f5b73daff
Date: Sat, 26 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790447433

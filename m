Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A6B1E834B
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757436595; cv=none; b=lH8+W9oS+4Vi8eL6z9WIRU2UrwzIpxLy1wL3MNICWUVZh9tfBZgBtBIL7KfWm4SWvAH2IzxG8afYo1oR67aMXLHGKSAb4tuBVWk1jvVa3bfuTM37chjncp4pvyxdD94cjNMPM3aJYi4HW14jsM9nAWfd65XYegYMYzpT9Es1YWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757436595; c=relaxed/simple;
	bh=xUG7FTnDg+7YAfR3zq7R3jlV1RIbpnrZVTS1xt96Ifk=;
	h=To:Subject:From:Message-Id:Date; b=l+6ewLXUlXozwZyEFaeyWi46pRmAgdEk/nA0/uShrpNWiBZ++ljHqU4OxgKfvksU2R79X4FfcOlbyVbTgjMIGDKUUKVcQ64Qfh4IR+zaOQjJiEXSdSPiOkSNu4T+Z9X3HcLEB3u5pO8790xuTs4IBX60v6WBAMnQCaoHyzLgNOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB4MT8Ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB4MT8Ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE52C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757436593;
	bh=xUG7FTnDg+7YAfR3zq7R3jlV1RIbpnrZVTS1xt96Ifk=;
	h=To:Subject:From:Date:From;
	b=FB4MT8AxOXZNP4Yl3M/Ue97Rk3t64XZMAj5UcXJ4JL1OnOt8XaKIodEdYJGyqVqi/
	 pB/V/3t+7MEMWNbDy+Kx5J4dgN6CMrAtX3npKYxDvJveMBl1/yNujCnudvrnarc3t5
	 NJVpy66Ayx64wtr9keQP819d/QSnJHcgbnMSLKDaH5MdZqyzodiw63NFhok7VG7+7+
	 FaLK00mxMIKCnIun6STT/BNuxq1eByaCJbiG03x51v9ODgfxUdarCUvf+jrgui/4MY
	 2SxwPXIxxPhiri+mcQ5QlteWzQ+3aHzLk0ncymMQNlM7+OO6xBkftAP2touFy1k/Nc
	 bH88/XVadp1Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F9CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743659357.17797.16870375161113782793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaaaebc72f9013a8878f3e1938529b54a2a977db3bed70091bae203d1e3d1d6
Date: Tue, 09 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757436593

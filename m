Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241811C2DCE
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726227954; cv=none; b=fPLgtSAPDZvxVTAHeIvfh4/8kd1kboUiGaQZQ//dlKxd0iZqtEqc2qJe5l1RHcyaERQn3f41iJgwX+SUvGzUrr1FtPIUDB+Y0SwL/RdLjPuhiC3HtDRK4PxxSod7xPZqvDwNyghCHazxsWsUxq2y/EyejQw+2aZgmMTBXrqO0j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726227954; c=relaxed/simple;
	bh=U4baiMXaV3k/kl85jh8EF6GEGIR0zHa2kFLhq0geUlA=;
	h=To:Subject:From:Message-Id:Date; b=IoCtc3wDQ256rVZxGhBE7SxEAM5pcL48bsVXzcoisZ0CJ8cvMkE3Y8qnxIqXLYfb1wg35SbaSXg4IKg4P98T7Kpaqg0YaiJzPnmGKF0cQeb4A9Q1XuQOtkqf6TCSuoUEAoJywBMc+oAzt3GRhRLGQuhP2fmtz2kzZrKLyLZhnh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laMNikPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laMNikPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00AEC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726227953;
	bh=U4baiMXaV3k/kl85jh8EF6GEGIR0zHa2kFLhq0geUlA=;
	h=To:Subject:From:Date:From;
	b=laMNikPXEdWMCS5+b8AkSIp2V5kHfDTpgPdIA+COxmXAI2utDqdjS+q/448o8inzz
	 fBe3C+Z7hatbjC8LRDnPL6yyq8YtAWfo/G6mepX5XukKEdcc0waVbC66VEVDJIvMwL
	 MXYLrdprT2tmh/j9p13JFSRgQs1CYgG6I1OAtpdRY/dSbgX2dlmnRoNu77ETZ8rmSF
	 xW+PzI6Nd4Tu4GUpfKo4sybdsQxNmKqYEdMDncYLQhY2lx978//wNf4weerXrGDTcy
	 ZTzWR2yO3uF2KQ7npORZWblODap5c/7fJCAHOo865IRBaUdz5HCVg1IJsq9t+/0AXt
	 PULnFxhQwQ2oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99720FA3748
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622795361.15164.6643927788464944945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890d630ecbf67d702ac8e230534b6d60b960a1ccf8fb6ec1f88d68242861eec3
Date: Fri, 13 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726227953

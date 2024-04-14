Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493F82C6AF
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 19:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713123563; cv=none; b=o8jLl52VvVnUMBD5wSIRZ0EX8LWDCPUCsbbEz5AOysyI4uk4DJfb3jg7vyzqTqLo5Husk0166nNJZxLmhUZxSUXto7/6xkIQ60qaaSYGEiZda+WB8HpRVdV/F/hsqicA/dCfxer11Gc8kM1JPkdRgWWTQ1xTha8yNsh3fSJo5vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713123563; c=relaxed/simple;
	bh=eAmVrjYo17lXJfS8AfPEc4rX1LHt15BjcMqO9EyLusQ=;
	h=To:Subject:From:Message-Id:Date; b=OJ+vfQ/JCm2bQYkmlzWsZDCsR0q1ZcTVfjGtPw+M/Gc0/UK+PooIu8PQbgwAoncq7AnKCydleLnQkmaP4W9gYd5z9jrKY8KJ3oNTDbyRJ8anPRV2rMmm/cVP1m5Te2UojMW1AwD8G5YNYuOPR5wfRpxF7RApRRpxZOMPY/8NPVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9zrDq89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9zrDq89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B63C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713123562;
	bh=eAmVrjYo17lXJfS8AfPEc4rX1LHt15BjcMqO9EyLusQ=;
	h=To:Subject:From:Date:From;
	b=q9zrDq89ySYJ/PHsI8uEfz9djZdxZawMw+Lb5TE248VcxbA/TYVqKNBpOuwHOvfDy
	 z7+krOTp2xe9I8x8LffFEtSrN+5jFYlopQYa6x2gKH+tPlKc12m4VgnzeD66bfDeb7
	 pWq7d1F5MWtpgRw32fNu0Dm4pgRBnu8C/krS14nhhAtRTgpyPa0/kA/WiX3DKnr9IN
	 YHs15sWIEihDjMo3y7CAMpYXlVLe01cu/FVg0hPTI53TIGLJRnO3J8i7Cniy7lEYKU
	 SSV5bluGxeG4fnFCj5MnPToTO8EqqXEHijX927DP5p5Fin07a3zcqsphOh/ybNHbo0
	 X4jffPl9i9nUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD36FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 19:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312356276.13052.13023575087640073832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc092af0d4f549dd2631aab7ab2e7e38979fd036944e576d307f7c7beae4454
Date: Sun, 14 Apr 2024 19:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713123562

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179C82F067A
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755031794; cv=none; b=bUv78IOhvndCYnXV+CrFrYHQgmVRX5jm4dG2PNERAMnf7zw8lvNyPM5DvzpClIGGTkUJp6TfucuJePPmdqGz6cyE9d26/VGv1fxukgiPm10kqfXSlYazLUO9W6sBr/x6YvahfulP27P7SxSFZLC5Y/GKKkQjOhqHp1HXf4vNW2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755031794; c=relaxed/simple;
	bh=Rxq11BpMFp+FK3gi2oFNP9oO1UApFTw9ap9mxCrTCUg=;
	h=To:Subject:From:Message-Id:Date; b=NVIvf7B3pzpysjDCG1QH39ix/ObRgHubS4r3zGqKgJFIteBcTPowJ5WV2PUvVUMGfe4Aop+hssnGji1TCuCHppjaSZBGjpwJ7n01dKWEr0wL3jXwiF7JgcXNaKu2EtZS62OAvRemfc2HcXrJ0G6iz+jNJ/b5X1WYMXGBgCfTwYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuL6KFXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuL6KFXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E27FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755031793;
	bh=Rxq11BpMFp+FK3gi2oFNP9oO1UApFTw9ap9mxCrTCUg=;
	h=To:Subject:From:Date:From;
	b=iuL6KFXoyhtjcnSWTI6o6FuTU580VYMjGAOv94qsqhwksYd9QKvggyE1L/1QN3aOa
	 3BYbwbNfKF1Yp+JEjIaWhhkL3VSVWP61zLFYwyzGhsLlNVLnurfCVI8uqCE6Kio0X6
	 xSfxO0RiB9JduhPBMgprLG7j5xkSxrHy3r/RzBLJ7ih1ubiSPjZtFonfoLp6pCsODV
	 DnNBvwtuY0dpvzJNUFjMbjo14RshT4YHZ0uQplqBHzixUEKotPnJAe+R8SO/fbnhqO
	 F4nxApsOzTYXbYhNLNQwDzX2nYBgs7CTZBJ4lH4BDOp58nqHxhFCCJ3JGYLwwlIIZG
	 ELgmsKY134mTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75ACA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503179357.13369.13749346925423383837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a682d736307b4207eb2a2d6e197d1f1d90e469b0280c924a4ccbe55c5105eed
Date: Tue, 12 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755031793

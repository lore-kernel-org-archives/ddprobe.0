Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3507920487E
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762258794; cv=none; b=cZxwDLmjzi92tZ0YqYjhKz2WWj0r7efPZuZOoGOBwEXrARKEHe+kDYuZDFXFT90A6havATYU3Gfk7FUAK4mlSjXJfj5IkMpuFgW6H6E3yCeI5ini+Ap0239nDbHcb2UfWdgRKagoutGmkA1CUVt+jSD40+bDrgn8fG9dDO7IQW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762258794; c=relaxed/simple;
	bh=BD2WwZPJzBgTc3mLUSMISCli4dqzNd58htXV5xEwegM=;
	h=To:Subject:From:Message-Id:Date; b=cY2dE7yI1b8e6ObAod8XYKPSF4aheEhbcHbaGC/TEzGNwApH8CTxv1nn37Dk41CYN4QOOfQUUMtb12tfgGPebEK9o82iqqwCpuWroxlIeAoy6ASfaPPotieILTHdAmoERZYg7RPXpX7u0wKSNGU/jESw2k86M54sBg7pj7pjI/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASn8R8EC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASn8R8EC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762258793;
	bh=BD2WwZPJzBgTc3mLUSMISCli4dqzNd58htXV5xEwegM=;
	h=To:Subject:From:Date:From;
	b=ASn8R8EClSISnT2Ha/nR2ryXFIQglobkbpWHLfEdlX3HGuhvgpfCNVJ74oiDGMSGJ
	 dYh/JkQkMS+B4kig6ILp1kE3AWmJph2nC9pg1F/VQqzzFsAb+N7J6S6j+J+itLXyoG
	 LbxkwYl9/B7wDxeLCIGSR+jJD96VzuStf1w+xippJWg9ldzXn9vGmcb8vDaRxGr0LA
	 o9E5FfFWDALuUsOi8T1FSq8qv/S5soxrg7nxDiwtILXxh+/KsaidHkSbNlWjUMgaKI
	 iNfQpoBOdiqujidDeDTlZv1YE8QmOY/qTi1vbAFTYiXiTe/18vayRExMLwXSTusGt6
	 nOsIhYhX2p+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D89CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225879358.21538.16816036549474483171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4754dab847c185a8ed875e788df8dabcc55a7bb1e30ee31df02a0338ff8bf73
Date: Tue, 04 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762258793

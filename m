Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21023624A4
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766159635; cv=none; b=aReTNO70ljTb+eMKBT0FZ6RkEXmn2mAgPR3ZMDd5cQNELV6Zu6z0b3TgiQZrQPol3kr1L774Y6u4l2gBmsmD1aTr5LunVN9twCUaBcrd+lNcOeuaWm1AKE44j7bK4skbMv5PyRb2fMcU9OfrQlB2l2bBpEF30Q3uo70OJIf32n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766159635; c=relaxed/simple;
	bh=2yFTqnZF7OPtfspO+HGqDQKfOB/CR3anh9IuYHRcpGU=;
	h=To:Subject:From:Message-Id:Date; b=ox0usbkJr/M2dmpNQsvHnzNHLvZDAIqnVeijz0bljd9e0gmoOalEsDs8Y172Fc3+8M3NmfvP8BweLM2oRhTbFo/g2+hYXZuYBIQuAXX4R1EcagLcp4ZPBM6S3EViaOST9uXxMZqYX4Z2TA9V7b+NrtJaWA4Q0TPRtpI4ziwsJK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZyQ38Oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZyQ38Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD6FC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766159633;
	bh=2yFTqnZF7OPtfspO+HGqDQKfOB/CR3anh9IuYHRcpGU=;
	h=To:Subject:From:Date:From;
	b=qZyQ38Oz/0Iwz/sjoJACT9TkX3h5ERuPHy4v9jAQp59RhOitfiynRHjyrU/j56Ji5
	 Uif3XG/GXclT4Q+wGLF9JaVA3IiFFIAYWkGuV7HuTQCbDOSb4j/b+Z1aqFtelzvYe2
	 uMX/01z6JS7jr2Cm+Cxl1TtCJUiK1OSBoq7htMR5N7xuoXu+2Pc4AVAc+6Xz/gRwvD
	 Qkh5w+g10Ww6Y9kqPtm8VrxF/cyg/3tlrjGa6y9/VG54R2TlN1mWO0+rvzQ4d0+0Z1
	 gtd/WmtyBJN34AOLNRMYZ6JdZXLXJWb9C6CCkPcwcsjNNmPhG2Xn9pUPVbNqt1VXHu
	 2e35cyrI3fvzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90978D78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615963358.17189.240303211248895325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070b91f8235f99148aff4ca73d135317b53b6b517faef1c3d1f24e8ec7024e25
Date: Fri, 19 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766159633

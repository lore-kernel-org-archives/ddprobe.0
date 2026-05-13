Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEE91EFFA1
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778677234; cv=none; b=c9i2Xk4LSOPDBNOncFz0KvIUY6hiP2IPEpKEhNMJsttv67t5p2hXGLjDNSxRXpuqESLqCl1Sz/270FvAZpbb1V+WhCSFtU3Xn45PBLhNH0to1CUOASRwb/v/jJpVvRWAy/cyW0/XE/W6dYOzFFISqsFlkXBguRn6wMhul4K0tGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778677234; c=relaxed/simple;
	bh=EekzqzDHIxET+Iyvfx036WaePCn1q1j7I2NteFVpl6Q=;
	h=To:Subject:From:Message-Id:Date; b=W0Z5ZXMAbZ5vqF/JG01C1DYUofE9/57i9BkcKkluwgOTrzfqx5gDZLB52Qjv2LHKCbIX4zQ5lgmp5gvqZeDp/66z6nszEF3XGnxHI4r1ByEYKMNmT2vMGmXCU6ydnooUsmbcOAytAq0+np5q/2jMWg7zLA+oSBZmqJkSzvZ+q24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoM74fPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoM74fPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C253FC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778677233;
	bh=EekzqzDHIxET+Iyvfx036WaePCn1q1j7I2NteFVpl6Q=;
	h=To:Subject:From:Date:From;
	b=eoM74fPZK+uFVgACI35TcVLx1Wl9ECcvU7OuZNsfAohOs0cWe0Nx6UTddc4jHZNwA
	 Segy6Fwb8fMaZN8wcTg1sg2S+zcRcn7ST2mDv8Ir1d9kj499RggFqealiqYvftQqk/
	 rfoDKwU8ExgDCU4J6ip2rZ272a5InpKdJYBC+X9huGPWIQnlIri/Fw2+Q06+k4OLIY
	 4lbBgGLnAkui2r9lal0++8QF6jPSowdv28JZhtJ+rMWU7/9xPD10xYnL1IVMnUtat/
	 xnG02Yd2f7AHiGsGQis8Vn4Wxmq9MFMQLO2/uFkIekoiR7FobaL+j675yfaJKzmmqY
	 EEhF1cGZSnvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D8FCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867723372.14492.5580977512397547182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebb9a03da5c34b370e20e75d3d759bf5e578ce96932e02e68f27fb6c60deb36
Date: Wed, 13 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778677233

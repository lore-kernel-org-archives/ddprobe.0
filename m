Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FF3284684
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773484493; cv=none; b=bEMseFR1GCFEsoJRmxgtNaydj0G6fmLmJWOH4RA5pR/O/IjPELwT1GeVoNu9Mmj+upOKryokziShGZqFdYDQ+MAVEXUVT/yjFDqkdYgBGSSTZNGP6JGpC/fDTYlpfankcFD4hzUILH7MGa6jAP/2Uszts2Vcq2Ttz4vAJH8sze8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773484493; c=relaxed/simple;
	bh=NrNfTuSAF/cYijLvXpu1LkM+LGdYmDrxPXe63ZQs88c=;
	h=To:Subject:From:Message-Id:Date; b=Zw+W5ZkbxI5/JGqjfP8+016u5kBhxcsJNhO2PTEziJjtHpVqfSFWFVe8vK/Qh4K8fXDTuRUEYXMSY2Iz/6rC2qKA6yt6DeSkZ6Uf+O46GZf7DtrRnrFgsvrUl/a1+54JFht8XmBq/FOyT6BDRDR+V5rVQM7LO1IscdsCZG1z6ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQsPOREE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQsPOREE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A10C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773484493;
	bh=NrNfTuSAF/cYijLvXpu1LkM+LGdYmDrxPXe63ZQs88c=;
	h=To:Subject:From:Date:From;
	b=aQsPOREEDZRCTxFD7pVYF118lgoJgn/DH8FaKKllqvlR0/9i5yJGx0DVhPlNCU9E7
	 /TxhbHvPpnUysWIFhPR2YU7K9v1T9wRM4jPeW5Nskq94J4GUcy5PRzFjEeS3W4xRXR
	 HoSNsRu03qYpqnfDIgSG4OhIfK1Ts0qbkYtvhBWQkbDBq0eCa+GrOWBQnrhkHO2Y+I
	 WO6+jcDOiH2aBWzsqC3Skz4OvqLXr8/e/Ln0Vzb9pu4o4No/UnQW7uc36BAocuPJu+
	 3CT2ttHNLyn9CaGSNQA+zUs5834RN+8t0K8PuBM2aenP++X/wnuFWVWw4OTCmAcdEl
	 Oi/7Q+e4vbOnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD8A10706CD
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348449361.3812.17839452306016083462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7640d94850ac9bde5e28eafbda7c7c96b0ae1db4df6121d25b0dc7681bdb0f
Date: Sat, 14 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773484493

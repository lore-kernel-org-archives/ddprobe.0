Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DBC25EFBB
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752563394; cv=none; b=SWEAp04w6lJKtqxODrxTJYiQTdI3BwH01mDfoqyT2ypeYLArfuRRjrwh/QMx+yej/V8g+NR+OZI2n1A1pgz55ZR+pB38iCpxY1eY57M9YYPUFzFtXI8uo6ElZTtYt5vClLba6+8sxXNWnYHvBnt0bNWvwhI6RENFrc0uPaIHYJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752563394; c=relaxed/simple;
	bh=FI/hbfhyY8yKgtQev+kyKtch4SPFm62f7Nx4eBqgNWo=;
	h=To:Subject:From:Message-Id:Date; b=MKRkYdWdfWLEFRPD5rdh18aQI+utSktj+ZQ9nfFe1a6u51+vizCP2JdnusYBaIsYCK2DC2uMQVmHqLaK4rla7D5Zspzv3mMImAFYdU8vBUAy4oApT5omyw1gZWkUUVQWj1Fc6vqde3SBCu60omuCt6nR2vq1eyhKWS2NPKp1IEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNVPrhmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNVPrhmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C98EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752563393;
	bh=FI/hbfhyY8yKgtQev+kyKtch4SPFm62f7Nx4eBqgNWo=;
	h=To:Subject:From:Date:From;
	b=VNVPrhmdL45PoTKH9uCRQkNiPc3I8XuIHUVzI+8V604Y3zOMfFaZ5HKavrYmJ1VL5
	 m1YqZgsawYBm6r50cZSM2a5LmXA8tIW458Wk5wucS3nS9Q38eGkjBkw4+uSHcnXVCz
	 SO0cs/yA6wlaYhu6Xh+i521HaIbJawSrFIJIPtlfIBI8NI5SJQhmRFm9ltHe0xaQeg
	 I/nhKuopUoHFrpauC9shnDL+nEWmUHtLqDqNJHIeGSGo2xiLPxK2dSGemnvSsNVqL+
	 UpCJWj82sHLTNzf8OHwqNxvoVtXQGmH4pqEhKRtBZ/jkOF8Mq0UneTHhBb26CVXsr+
	 pVD4o5NTCisxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD4C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256339357.12775.2204573488639176615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb2ca3218b179e20cd8aa63a21593d53f8ea24a4273ceb89a18578e79889e2b
Date: Tue, 15 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752563393

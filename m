Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F86A1E487
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763185794; cv=none; b=QeyDI4Oz42c/Zzu1RqTUdcrdznCTdt3Nvzqbo52qBIp5BtiLycCcQmrNeRZGMfKMaxj2+nuJylgxS0aMcqWg4sjBwmFXwiIfI/d6QtBptvqaQeFOfzXxp2uLT0Jyi3VjRin53DiqALFSqf4/Z6RD9yHjGOSuH5lBruRCM5zL1E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763185794; c=relaxed/simple;
	bh=NCFDzOlfDyBQnkyNkDN6g35SnthjsHDVlry04ZCdAA0=;
	h=To:Subject:From:Message-Id:Date; b=g8xuF3jYs8QTZ5iiHHZnPHYCeaJiMHnvb0gFMp4fb+F6soizrYaBNyb3M4RsByhlmt2P9kq0xPO05JRg5/q0oii44yn4aQVjicQvA5TF7R5wcxRCUBz5IsiC55k8yRwC33bYw/QRrJnqP1Kjw7s1jgMo08glLVit6JeT1/uN4a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmHu7GB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmHu7GB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D30C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763185793;
	bh=NCFDzOlfDyBQnkyNkDN6g35SnthjsHDVlry04ZCdAA0=;
	h=To:Subject:From:Date:From;
	b=jmHu7GB2S3heY1YxUeJeywDOuEyBv2gdYzVUMd4I8bGJJwpJzh/Gth8lavB1Wjf71
	 j+jKyrz99s/HzPpV2RROIUiJHqjVmlJUHSnaWTNCQFdynV7RQ42D0N2kZP1ElcwOpg
	 7CCospitTExwcUtoeVYXKghLFS6HmTpTXHkYeXvNda6f4MPBfp+MzBhc8di3O7mJ2r
	 grm8E+5odwXW3z/sZVrKxeDwditfbhejgCzzJ6+Nan8PcgK0+qMund4lJ2+rW+sQd/
	 Gvqi02Un8ClVCm6nUB2S88G1Eaw+E+i/0PWdX1b3PPKED9LqkGld8s+NoVclMOcEdK
	 LNXnR+7kupT3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9337CCEB2C3
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318579358.32705.831981308050704029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c703a01c88fc7aff72148e0691078febc5b9ec0ab542c1d14146c8eeabea332d
Date: Sat, 15 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763185793

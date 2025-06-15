Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB491DED5D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750013994; cv=none; b=gLcWDxyOTqieddzVcKD6cFEIIqktVLxYVyiVj/pW5sBAGtS3hMVyYIFo3+x7qcR18HWsWmpc9VLhn2EVmYT+ow2SvfSBkIytWBX7gSxrCLF61HFbsvBEnMgDcH6u5hOuy9suUrXOEtlRT2OZBmw0O83uJG3kjVpeekiGVnOs3+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750013994; c=relaxed/simple;
	bh=YbyMKYnnMaueO3wiWM4pu40cUf5MoeIx+GDcuoa6xbQ=;
	h=To:Subject:From:Message-Id:Date; b=aM07xv3mcdDMhQpFmhIUbVomzFfsK5/OC5o8b0FcMY176M/iUm6iKF8rEoGyM5WY2YixEhIADZj00sOgpa6dadqx7UizL2F2cMFTXby0jefWAfYjgaiMvcjNdxZHakT1H+MfobOIRJooD+CqLQ0lkbb7Lzxs3qzQr+isCGGBORE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEjWu79j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEjWu79j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB29C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750013993;
	bh=YbyMKYnnMaueO3wiWM4pu40cUf5MoeIx+GDcuoa6xbQ=;
	h=To:Subject:From:Date:From;
	b=FEjWu79jG4pYk1a7UYFcCgJCjfBRI5q2zjnY61lb2DD/74zHpoaJnE1D9s2jubZ83
	 i3WS5RHP7bTGrkp6mDIm7IaCkp70wFskmtGUcqVrNDO+uvf3Alm5Wc9rSqwxGvCoom
	 noYRoJJAz9zjG2Ry8QJLYEAFJhIKAuIJ2JYIxcNyYA6D3qCuYW5teXg66E43PHmpFw
	 HqTRru9guAB5xbsGlVzXEPwnrD6ntR2I/7UvhV1RuvobQQ0IHLGCjvVmQbfmFf4WXR
	 17Cgz7EGBS7CBK6EBz7fRf5n3K1oNv5o8QM8iSP6cf7odzaQcWwtaGXg70EYDbgCex
	 2euzir6m3hmKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F10C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001399358.1503.12944986126384528953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95424c0de4d5ebb4eba06bf7df103e9dbf962704c2fa5db983726e627cf0a2fd
Date: Sun, 15 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750013993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2516E2DAFDF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756588194; cv=none; b=YZlFZK5O0dzGdxnSuhsq7Gz3dm8jZp5/nflHzrKQjSvKKrEmbtfvPx9lTopo9vn2bh6VbrHZrTDenDcr6KLDFzdPi8CHhPKj/lpeKubVbH5YSsRyX7F1VNDf2KPvVriaGpeDEJ/AMNQbiDxnq2cXsr/uyvldXvyeyAis9FDDmRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756588194; c=relaxed/simple;
	bh=LZXC18owK7tpEFA7lrKP8l/8FTkhlQTde2BVz4bF9y4=;
	h=To:Subject:From:Message-Id:Date; b=BDdv54Mbpa/plcW2THtE+dTCCRsqV41pq2jNyfEipLIarZWZMEFzMTCb9Q2QX2/VNICN2PjGeaV/1bsNEw3gnyzPipKchbR97xp9o7s6qqoT6G7DXC1S2xXNVsOV5E9q1ZTmBmo2qcMAHq7F1bbVZmgEinur7+Dqew6GhM+rBa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El3oLX8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El3oLX8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ACFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756588193;
	bh=LZXC18owK7tpEFA7lrKP8l/8FTkhlQTde2BVz4bF9y4=;
	h=To:Subject:From:Date:From;
	b=El3oLX8GGPShQr3AHPrg7N1XlPnpYfoxaP19rmsB3Qph+YSUxRomNMLB9Ya46d9YQ
	 gXnnorwtJ/10uMVjgHnjZvITWP5Jge7tC7v9ekrN3yWhJTOkgL6V1KPBknfBwMQy/y
	 9no5c9Wfly96d4s38or/rRRB6lpv0JehpTW5Bg/75MdCLqOdj8uRt18ccCvNnD36Qu
	 6KpxNrQmTXa+TyqLNOO3OS95TqoEvaOt8sYh7rUhk5emJ7d3uNF12WZkiviJmZPEmR
	 NOfNIWovapcIr5F1WUMqsVm45iV7EIPiqZSYUkuJGNt2K6gJANDLO0dLDpfOmR7voP
	 aXvLD73ivRwlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B50CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658819357.20553.16715505711884866687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c382de574f4db911ce59c17b9f9b00a4f78db75a1643ea0502ca7e938c5499
Date: Sat, 30 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756588193

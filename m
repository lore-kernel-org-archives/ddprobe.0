Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5D5945A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706355497; cv=none; b=aeSETrMY/LZnksvtRZgkGATyaUZOqfpeHEWVs/YwuRLqZJdt3mqV+3/kU6qK3at0XY0qrrRQ6VuT2avv2c3oSuQGFzC9YVvEXYr7pOTuoadxwOgkjARNyuYoNfHesDOc9/NHwxWWOI2eX/iJ1UddfFV7eoxf4u6Q/J1d/ce6aVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706355497; c=relaxed/simple;
	bh=6DTy5gdJogP/R+0nM3zkP1T5Um0Y85ReqLNXdndD9T4=;
	h=To:Subject:From:Message-Id:Date; b=LPP9stDnyLQH+62PAstFunaIifh0BgewH4Qxb4HjofddjqUeKCWnuPdVNzUr73S5CoqXzO3Qg8csh3mFa607+yKH7LrlmPW4A38jVEF61YudI+rrPt6TU2prK/2b883ht74IbPPKMH1hhTYeTtGTATRJQTc+SH8xSZ8AGGkPdu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vbf57iwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vbf57iwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75207C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706355496;
	bh=6DTy5gdJogP/R+0nM3zkP1T5Um0Y85ReqLNXdndD9T4=;
	h=To:Subject:From:Date:From;
	b=Vbf57iwjuV5y45RossR6IlYE7UTERIrnKYzjOU3142kUx3MAf/tRqck9s9HeIQ42/
	 hsZUUGubnP5bKO2Pb5cN2o9qjxpiEE6EAwy87fD4RMJcnqq+vvvXlcgim4mlJr3fUU
	 u+YXJLX5sFroToRPyvj7dTk2M+vn+P1b+tCuAFxTQ6lUrOk25d12qg3mEr/jOImqa3
	 e5/F9xAXtHPdpAR6ErT0ems9LRy9ghLqwULDXhhMkZXI8qBCbQ1wZ53lAy2yNwVeCP
	 2vho8gqCai1oGKXjxq5kXSNnDPirskTPTmAPhA1uHeVW/EoQZUrD+1ljTIUttn3ZME
	 pnDl67WCQSm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A324C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635549636.26186.16796859188054605032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e158789dfa7b88b2295cafed7ab0da073c87bdfb6df9b54e2a4c12bb15dde70c
Date: Sat, 27 Jan 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706355496

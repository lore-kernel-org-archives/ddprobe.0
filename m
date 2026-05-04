Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C223DCDB6
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777917454; cv=none; b=sxSX9apeOSBpfqDu0FuqZPu0cAeyTxUC5z8cN96urF5UoUMtko8vYUnd+HF8Xje0ljvrY0RFAC5+6uE8ZvnxRQs6H1/Jn7yQaOk2vrE4wGAT/R/5ejQAyEymnG4p0uhBEu0b43GYs5e0Lx2dJLRoqXyZ5964KKXDJRfLWnhsmEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777917454; c=relaxed/simple;
	bh=rS0vZOGwTk0fSe2y33fkc1v26YeGvj1EcbR9GMLuE00=;
	h=To:Subject:From:Message-Id:Date; b=VRSVgbRPG8XZAFg8O3Oa2ptaGJajt+XgkFZsKmaDqn3NHUDYOBIIuSpIQ1sf7ImyGkNRMXgtrmyALP/7/OZSTyKfIzSDbUcqm9nd6gDVjvmiNPLa5Enta19oY32tr4DGgXQOZVC20j7WY78IliYpm3xWwnzY7Ug7ZRLz6bHtK28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oujywNl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oujywNl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3DAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777917453;
	bh=rS0vZOGwTk0fSe2y33fkc1v26YeGvj1EcbR9GMLuE00=;
	h=To:Subject:From:Date:From;
	b=oujywNl3PlUg+obPkoF4w5qMhnODPXkJag7+i2EOnqtsz6iNFvA4Gf1Ja3meoCpTZ
	 YTybitMLJ0KqJv2SGNqZvv3l+62AereB43Ck2Np7QYSxwvdEIaEAVtkNBpB3YE57WT
	 02IUKzj18bpxSeqyunM36lsHD6tmlvg7iYNYAWL99nw+Yy7bwttFIxEL9pw8RcEstP
	 dTMUSqLUbSFYn2m2I3dY0Ztn/3injpfGXBnNiLItsjXYC7arEDdTkS9dlShiI3iDL2
	 RYsbsao8oi9k66kkmRadmW6L7xewP89QJKuPee4v2ffoMFUvg1DfRgRtk8EHLN/OPd
	 534/gXfMgSxcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A8FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791745369.23457.15247849537038686760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5167e56bd3d896f66c48d4d9d618534b7fa0a4e01775dadf5d869dac5c3aa2
Date: Mon, 04 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777917453

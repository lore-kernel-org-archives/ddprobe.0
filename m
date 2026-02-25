Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C593311587
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772015094; cv=none; b=d/dV3eMRyJa+uHKmmHYwEZzJu0AghSk2QtAogrX9oanNluiEs4nxXfQzEGX4KDWcW7iNvbrPxEgQeTbFIsGiQkIn3Kl3gzPSuAVIyzVAnM64F8wqWxf7D8T+qK62+t1Ib3GCQhvPAkAnmlDREsu4aSChbzJ6feT4IobgphP9m5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772015094; c=relaxed/simple;
	bh=LzL0aAj5zfloRDRsjZCgc1DG0Q40dlXB9+AyEKkmYVA=;
	h=To:Subject:From:Message-Id:Date; b=TZFLIkNzTCRuogTkZeLCD1A9nu7ozFFon2/4DODCradwipIM67r5xBaB5rINQJ1/oTRe/p3YPA9MV5WVgomwizfE++w/f0sGN/jgzQlCobCZDawxmHIPs/9d9jchDZKZr0dD1EQXUdGUh83C7qKZxpT4EexJ8MBkxpNxmONIU9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDO71UNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDO71UNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F06AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772015093;
	bh=LzL0aAj5zfloRDRsjZCgc1DG0Q40dlXB9+AyEKkmYVA=;
	h=To:Subject:From:Date:From;
	b=XDO71UNEmjmA91SVI3uqGi/4/pqpPmJckdaX15k7o9gmEZ+IBGl3/lHMcb44UrdUG
	 Nb5+ACKZQkWVChb55fAMrAx9BgPDjBA9LrVCYqkAAyJP8aE/h4vN7ELAifYWrhxAV6
	 gR0M5bRR24j6ugS5VCXzqLV+a/z7+qgLWsH5B2ut6XbHzjfA3/fX/AqiZNDO33k7AW
	 O3lCgrLot0Yx/GfsQ4EXHSY3Gm6ca0CH9F3/5lZxe0aNLo5LHELa4uJSwPiGkMPMuc
	 ihUH5kUg7BoQJMtGLU47AtR5eM3uI2DVLsvUhP5QwNHySJOQRK13uwgsVnwL/PX7Rl
	 +n4CtiyGcllwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E31F357DA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201509358.13758.15498525088751236249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a0455aa66513d9bbb50cb052ca2ee00780b457a16bae17dc2819d4124cc7d0
Date: Wed, 25 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772015093

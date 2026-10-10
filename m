Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BF1475322
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791630634; cv=none; b=nAS+M6mDQ/hRNKNXKXvgcnj8oh8SqsnyMZDnEq9Rt9EUvgoMAlRvT3Oa1m+wsP0Oa7P2YCWkCXL11DHtRFunjkuhbe0d+m8NUbmLo6lfxZ1vUahtl1AS/67Bv4C2Wyt0rh6WGKQKX55Sec/pj845+S0wuf0zauH3BfJDMPKUWcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791630634; c=relaxed/simple;
	bh=2R8c0gJLA6IRjTR2EHXpXA+sorFDCQTZazAZRHPXZKc=;
	h=To:Subject:From:Message-Id:Date; b=Norx3UX7G7r3gq4iCiZ7VXJyRX4YmJznu7wrhALCuwBlTcuL2wttpp1ipJ9LHqwTS5T8uWNm5yUFEIfEjyHD/QohzXM9muAEWypVFaGZOOtkOhpKLBzIokre3JI6S3m/bcg60E3ZqafYcJQX5wYkfNOwMuMUoD13X3uA0QzDAqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HA/kOoby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HA/kOoby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0175C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791630633;
	bh=2R8c0gJLA6IRjTR2EHXpXA+sorFDCQTZazAZRHPXZKc=;
	h=To:Subject:From:Date:From;
	b=HA/kOobywHUr6lZvUTOwDeHlGfvdhfzJJdOMzUpqpnLOLVCeQMBgrLmp1SKUPwnb3
	 4NqzmQ9PusClhcA/cZ6U4lvRDkOBFiK0Km59AeLqH3Wr7/3eI1APc8Etyu7GW14JHf
	 E7ZcFU5dGHYkSlDlyFv38JU2uXmgq9+BAbxgZyIj+febdaEDDyAbp+CTWN000TCKHe
	 ZLgsg7HhPenZ66+kqriUTp5J8zgs0rh6zUKGEjXA358nxo5uZ7LtVbs7qpexu0vbN8
	 fVNY3Gz3YVSdbs2X9yd17f2npSyl8NSQH6SQ//70a4HBsKTrBXbtUKyM2IX1Uizkxc
	 /ep1alQg1cUDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8E8CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163063368.31351.7304216011602597216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c991749867e557efe53ff0fccdce8ca10c7c4876b29506ba2ffe7cf568bebf18
Date: Sat, 10 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791630633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258533B1AB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755258594; cv=none; b=PuZxkp5EoSWQYBN4p1uaD86gEX7gmvrGvlD6GyuFlLMNIEDKOxYoO3QgAtxPgaGpJfcgu0x3nE4kBjcQdjZKEbRBgBKS2XPs1nsdOvbVmOdXVo3H9BR/rBmJgSkBj7jGfsMpB8lUTLjSlcpZgmnPxgPZTyfQjtt0z19mIMy09Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755258594; c=relaxed/simple;
	bh=DZYOELtqsTxV97lY7oBlHm+MkI/oPkb4OrUqf1I0Np4=;
	h=To:Subject:From:Message-Id:Date; b=Wgb8L/XKij55GVuTTyweVVLC1JhLj90KOt+ksGJt3KWj5EJ1P6sH41LVQgU6iyU+lWXT3AiM0R59xg+loKfsPo35VUgO8xgzI0IguxNrY6hDXmayDj2v0Dun/xhMYA46PZeOsOFhoRrW18ycjQvBLvwk3aSN9jG1N0w50z0bwkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDbhtrad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDbhtrad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5552C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755258593;
	bh=DZYOELtqsTxV97lY7oBlHm+MkI/oPkb4OrUqf1I0Np4=;
	h=To:Subject:From:Date:From;
	b=gDbhtrad0OrV+6/jNBiBAAUW+QksqDMlReC5yjJskxr6rKpqCHlcxuMg6ZQ4nDPt7
	 TkaFMmdEm2L9HTdMm39iadm7DxpkEpNkxqQA3wBuLBLLmKS8xGNEwQD/xSDPXELrm9
	 YAVaNjLn2xZ0hthmtGk/e2j3KkPIvC84X+FoJ2qn8mqFqiZEzICA/mYl1N4QAVV6bb
	 jdhif/McVnYJRXC0HL5j9nqgExV0kS8mXEB2RTWI873b/XbUwSmRMu0gjUJQZZatDA
	 sRTjwVwwHGaafxpfRUvmaclfT9kHeN6GEazmPgbOJfu0B9ZncaedB0ei1jtTzaMRR/
	 KL1DOtQtOI8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF5CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525859358.2511.14617994510691915803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e672d54bea5d01bf90d84285f60577be67151ebca39bfd18ca9fac903a14e41
Date: Fri, 15 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755258593

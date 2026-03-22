Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030312FD1C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774222494; cv=none; b=LODNQVieKwLNss7myIsRSIYzqqgSGBk1IGmX/oLqW6pJLUyk5rc4L2G/JpHYGm1T0aSzHmIYBP3VY4kUeB9y1LaS1J2h89IDb4VNKgIBlNTECBDpjlaWi7heFReWDrZ7TvbXgPjWivJSMTxqUIO6nhgo8RtMRJmZ0YVj3zKesuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774222494; c=relaxed/simple;
	bh=hP/RtsO86DhEnCp1v3BYuJNhdmrDsRFuLwOm9jjFqSU=;
	h=To:Subject:From:Message-Id:Date; b=e4V5wHPVolK+JQzIgIubI/ypStopRbhsO59GLHg3CT9athNIyJDSgcXhU1EzlCwuPDYeCpsZshi9zUuqr1DBaorEBSr/xfxckdL5B8brE7wkPFk+oA0fk+Q8K8KphVqEPnQS678rumPu1CGBK2nr+FEzPcffUyajS8VWkYMMuto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL5FlbWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL5FlbWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E7C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774222493;
	bh=hP/RtsO86DhEnCp1v3BYuJNhdmrDsRFuLwOm9jjFqSU=;
	h=To:Subject:From:Date:From;
	b=sL5FlbWD4brhaWhMimZtiUzmyfWz1qnBbXZNvk6Bcn09z63Led0XTY9GPBaQk6i75
	 WVBOZaK7u5hEGJHee1uyArTowI3Q2ugzQ67E8rGNkXaRV6NY3jfV5mpM0lfuq43GlC
	 4UMo5F3pYTpUUNGctT7x0McPMr6u4GnapE5fDG0eCmJHZ10CVAPpxEBBnrvRPACDAj
	 qUjT/bDSHnAUkJbYJUlYraNim4VyEB7ci8ytQz/NNUvBzfnf1VMI1UL5dkxbdk3Kdm
	 Mx3ztk6uu4uNJhgP+PNokNkYE2JWRVnHThkuG5WGlrALJAkElxjbVglVzE0bgwYuQK
	 nwymtXDC9yzrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE00D58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422249358.7611.4589382756325142337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3461e5993302453904cd1baa950e34ce12430e97627dcb84edeeabfff569e660
Date: Sun, 22 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774222493

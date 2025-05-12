Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2401E489
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747010993; cv=none; b=f+EGNivBQbWBwgL4g+ne6E4YzyZolINnWytZb+b0h6A5LocMpRu/C1C9ou2UP+DDQKz6QCJE3dcny27z9K0KrQ01iah7vUqsP+i6O5FbcstZtrYCgglWVhzyJD2D1exrUk3eSmqdnFHQWy3A6EkVAYdpmbsy8eCIUv9Rql1YMsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747010993; c=relaxed/simple;
	bh=ViL4ZbQ9dIaXClPMiD4ASYRhrq57bQF7wUf14sBRQC0=;
	h=To:Subject:From:Message-Id:Date; b=fBP5Smz3bwgyJX7sZ1LmvfFs+Yf6FP76vre0lauCVKXoldG/HQil/6fQhr9OAdV5AwWZD7H5FgdDU2SKt9xa7WbElDnwrgBR288MHEU4X+irjshInjzN3oj4PB2L7J7eQf+09hXL/h9Brgg2jlU5p0y0b7De3vQoHVYyfL0ciH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKEw9SjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKEw9SjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC0AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747010993;
	bh=ViL4ZbQ9dIaXClPMiD4ASYRhrq57bQF7wUf14sBRQC0=;
	h=To:Subject:From:Date:From;
	b=iKEw9SjSWdDIkSxr1G3bQn4+CaBMkltUQPKD09Dywglh+upKjIWto6O33u6JM/onx
	 ZM02sdIl8UdRiRTiDeAA/wPFmuPe52UZI4MDRCRyChBvRSEsn8AFQU2pQippkbK8PC
	 cMVrjuo7+BkvROvcmD0+z7d/dqCuoqeJH/PxE94ZwUnL3/s1SHArW426zN98sFErnQ
	 2O6XvoCSETIdHWD5NomolrDx2xyT9FyQ9/cXaMcHMS+gQho69BKLad/ukxexG2yfUj
	 iMyhxXoIIf8557vADWI/9zSMeZnsCPW5V/kwrvr5/FejjkOUYxo5NfDXi6eQ6N5+ru
	 EX2GEIC1+/12Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E890C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701099357.24256.11699341022757293034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c70af9b7f979757181b1078f179f8e5994ec2b59289091fde0365471f0ff12c
Date: Mon, 12 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747010993

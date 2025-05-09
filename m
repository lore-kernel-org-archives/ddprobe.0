Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2136B211491
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746797994; cv=none; b=u4KgYUbN2Hj38aHCN0Ud8zL3+Tawk/aVp76/8VAXCrzkbjbzh56PRptL8gRCL0ZpNaIbSK4nLl7hCVULqphudXj+f+Q7HT052XIFPNqx+CilJFcYpIaUDVsBWndSX5qSGiIcK9FYQ4J5NK6ozMIMbpPRcfr5FhcBkJRmSu38y+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746797994; c=relaxed/simple;
	bh=RxOQ6npBIL+ZdPr/X8Nvv+64G3Yv/wUgqlpZCRcYMDk=;
	h=To:Subject:From:Message-Id:Date; b=mUrR3PaV9W/SZPNzngnMQ6LzWW6VcRm43raDEbP7bLTMXwKT46I/AEOvZ0i5H+W4Aq/Swkb2/ZhpwMXkx4r3uvdX8rNg+ybEJNXYbKEiGWBa9sXukWatIvkaXwVap5zqFCILi6Kl7dv4DZwks6JYVcqe76N/dZMx2IKpMqLw4CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrJRRwsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrJRRwsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D830C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746797993;
	bh=RxOQ6npBIL+ZdPr/X8Nvv+64G3Yv/wUgqlpZCRcYMDk=;
	h=To:Subject:From:Date:From;
	b=LrJRRwsx/ET6X6thq1DYZnClILASnEsX4QVZuGs3YzgWab9kdtkwzPWkBl9elvDpT
	 j75BsXKlOQ5KaBXAVAwzSzQYg8nt0Br91xtLt83UDKBMQ7fsPLGrPAqWK5KlWNafb0
	 yZTwS66uv0iz+av+tP48fHUwsZ+yjzOaG1Tx50gdegJ1FWuc+kwjNKEGlIoHYiMvUD
	 j2QkIwvB//pf/Z5AHBgqpfhSoKWn8zu08kctmGEP9MVWu+I+07j9qxSNuddxCXleFG
	 E5DRGPiE5euVkHwrmNVBHBgiPZpFruCk9witVH270p09N6anKluVi9g41vQMX9q8jQ
	 +3bxIRE13OKEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFDC3ABCC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679799358.4483.5550912387307169449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f55afcbfe5f4d1114dd1507c8740c8aa67b23f152a0597c4f27e60af1537e8
Date: Fri, 09 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746797993

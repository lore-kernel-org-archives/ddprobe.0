Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5793EBF01
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769301834; cv=none; b=Vmk2rEc7ErYFgVeZGLJ1OUbWoHpYT6p6fLId9YL/ljtRM/vthOtvPYuEO/cDxrxim84EZENIPCVNvI8VNEMsYZmoRI5UM+CN0AmWi5Q+zZHhyY+ROxZek03yjUIqBFHySDE5R0zaIBt/UhSGc/DCgc79mETHFVTzXagqNN67ZgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769301834; c=relaxed/simple;
	bh=z1CHpQIxGn6MfgpugNnimkFQ/ZBXi1zc6suLY74f10c=;
	h=To:Subject:From:Message-Id:Date; b=YyhFqBZu4zsabfl+pOl8blZNijuBdFvNbh1bSc/OXy+L2fyTOHOMQUEZujtf/p6qpRy4JEku6iFKuvuMg1Opjau1nrzhckjkHBN3nZnaj6SZ4BpBrFX0uPxOH80aO4tDvVcKWKdMb3KTz4K60zy8RlmtXUMcYWUGaqp4Wxi7pGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFK88Hy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFK88Hy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83E2C19422
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769301833;
	bh=z1CHpQIxGn6MfgpugNnimkFQ/ZBXi1zc6suLY74f10c=;
	h=To:Subject:From:Date:From;
	b=DFK88Hy/Vx/85EBnMsy6LNjGwZtMgNUHYxLpbKpELoRHGy8HxLTnMjigCTNVicx4L
	 wDaHttQl2DIZr3hWl++Uvm8EWa62kTNmB8zRv8gNSEBsVqD8WDcCKhhjctcPIob6qf
	 26yhZob416Jx2MN6LKBHmKDHEW93i7UFxsH8wzdqius5w1yGtcf3et23EofynuF472
	 2z7dovZXGPElTjtAp3tMQkgotJTAjzIsFiRFe60TUO3PVunSxp5exAUe3qh2qIAoni
	 pB2JdcoMUOYsOXNAlf6dMjEQ9+bCRdC3drV2SwwtyeD2CN4VeKjmUV3XcDJ5nSNpob
	 ABuF/ovQz/8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93169D7237B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930183357.25453.1282186792241198494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f215c5820d0f76037303d22ea30ebb9381b78169b8f3df891cce66d7bcac2067
Date: Sun, 25 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769301833

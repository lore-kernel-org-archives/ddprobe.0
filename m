Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5501C01
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736813154; cv=none; b=HarIUQ7bwhVBrermtJS9r0DQ00n75Q2sKd2qZSxcmn+Od8zyeVTQogRq+sVlPwUEb8zkcOo7+gzOIgrNu/h6ZLKPDnPmEBvwzvPz/FYc1oRP+8YKHwzIM0NZ+sa0rA79VaoYiJj7PQ4oyEbv5d+G73SuQrlEXSNWvta/VgB6Grs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736813154; c=relaxed/simple;
	bh=Bbt1aDFsQzAnIFkrUqyXN7/O2ljzKYXQr7+TEqQbS3Y=;
	h=To:Subject:From:Message-Id:Date; b=Eqis1gKLDxn6zKAMH+CVdZgaic8iExB/kRfcQxo7bmAnm16USxdCol4EF69lEN7iqlOltqgzaIrUHGqBlSLzvtoFxU84SzsYXDQg7AeEHU+hix7JrLwu9VAza/Si1+JkQvAXhQQQEEFINJyYXPkLsD7KbOdWcdyyIjdw8GG+bcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFQHHN6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFQHHN6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D0AC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736813153;
	bh=Bbt1aDFsQzAnIFkrUqyXN7/O2ljzKYXQr7+TEqQbS3Y=;
	h=To:Subject:From:Date:From;
	b=DFQHHN6Mk97G1jU1l04ailc5aJg3onX2q50hjNLFb98Fo3EnhBi+s00EIWrXW5uSn
	 +tga++IP0P7doLJg4mihMVr3LpHCpx5QbjtF1FUElhGSrwPO7u9AY6vcMtVvCbcX9o
	 0V18REIK4QCuVckB/wbT8bGLyZ8dp7KO8wxnNXk4TaT1knlnkRKwDEoyys3bT0TSC6
	 +/Xza/QcXgw07rGAvUha2EA9LYYjckdkUvqhqnz93LzT2AMIvHcYP1Q+T0n0cv1gEC
	 dHGAlcntAPpuA5VsnTOS1LO3pDPEr72p3Jy9mnEJ3dkNgRkI28ftuy0OR7/l9P+3tD
	 hwr8njqBgogBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEDFC02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681315362.15667.1746013947615031953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87b8993b34db11c427d4e212b53047c8be7972dfaf4895c28a5d1d80a8d4245
Date: Tue, 14 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736813153

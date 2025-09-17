Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFD5261B97
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758085794; cv=none; b=Zrpr4Ok2EjKLEVEq6DZm4xSDjKgRrEiDp3TBfGeD4R1JTh4yMy3HjIfm8FAsU8SuTZC41J2PImSiPqUsdxZefFvXNQd94Eek07eGCrhz7p5dsFP2PCj3RqsrdwbxkmsvttgneuOpI0OTXRqWNYyqRrtG+F0e/qcnofUaBP35+/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758085794; c=relaxed/simple;
	bh=fKph3DDjDdtHjsRaawWl1MZ+Cgf/svFtYzQKt+WuV3k=;
	h=To:Subject:From:Message-Id:Date; b=kXfVzboiM1KnJtEf6ng1lkjsxrlFXkC3xlRu6IM0HkTtCilUhyFxjd34rm0+tlbZWBZVTIdyyP2bAgdQ8l+Qae112BzRHfz3aP9GU4jL5u0nyP+Da0vT08AnaWP7X44uUWQMHjO+8RkRY5xHkHeoVlnYZU900snj+xgqu01j2wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WywM6feG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WywM6feG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB257C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758085793;
	bh=fKph3DDjDdtHjsRaawWl1MZ+Cgf/svFtYzQKt+WuV3k=;
	h=To:Subject:From:Date:From;
	b=WywM6feGZ49oXcSTse2cByVPSEN1BP/7D3cs5UEuCgm72VZhVvwokBnv9Uw3GOwFM
	 6fpgNmzhcmS5ARtr0HFYTsYxb4PZvbCXotr2Y8Q2ZOMmYM2T2hbAt6/bAsjd2OU6zK
	 BeCQp7Kxeavzye547xYLiZQHHwAPPL75qthSMZZwdlLk4fPbn47S72KPEIQHTvWCf3
	 3QWG4irtuTFAN0Ak/5KK9GOw+l0DnFs/ePFTB5+ctW9V7Y4RF/2PRI0Y87/yf452Cf
	 wKRqDwIj8YQSmMfjGtOTFWDauaND7rvh1uTekh9+klHo97AmsGn2Vhm+rqWsR8Liv4
	 bC8y7mCFqgCkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99329CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808579357.24341.9420697126959159167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26779969557914997a2878345f92069900c6c189ed041e091a1a772e2aa1f14a
Date: Wed, 17 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758085793

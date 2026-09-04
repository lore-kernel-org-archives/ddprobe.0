Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5256F248F64
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788495034; cv=none; b=QeVDO7Hgxel+gkQ+bDYipAC6AKKP1ihlV7WqMHsMu8s1V0GXTzkrQDFndKKSCT/SrDhT6D9XSMwjZi1/V1OosBt8rSRoW4P0/DhSXo6zPn6ZLHSBgeBg+BUagklHlgPUqN5sZqw+Wb+n/ljvgywkvCmXZC78QD9AsLlSIdoKrUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788495034; c=relaxed/simple;
	bh=kB9VGqqJ1nTuTWbDBSSqzJyADDRzC2YYNY9qO1kt4XI=;
	h=To:Subject:From:Message-Id:Date; b=q/yzEuZKJhbQq4MJK5sJbwaRCSicoaQIK1Hu2bgO73+9XSJD9p5az9VtzikKl/2/GnUucTcVHlE0y9VSwMGqV4uMlsJUVyeGZZgclohZhE20z8Rxjkdo2SWJIFA8C+nm/vrhnAwaj3x2SmU93z7jz2tAqIPGtHMGoTmK1tnXVFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1GxKJgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1GxKJgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51D0C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788495033;
	bh=kB9VGqqJ1nTuTWbDBSSqzJyADDRzC2YYNY9qO1kt4XI=;
	h=To:Subject:From:Date:From;
	b=I1GxKJgT0cUUDEklUN63tm43xgOFXGLQJyb07ntR5aNbQu+1t27XXp0bc2zwU0cyx
	 ILp+sumAzAHoKJobowzrNTcESviurLnEJ4cZZ+M4s5yQkpaJ91havKCbq/TNLAVhE8
	 OdsqNRo5j/yOb/QkXYZxKhd2N/nLSVSQ0KA12SrAbLz5oBh+pa3Lz+oqR9jZWR240W
	 RH2wJFD+3JUjGTnvJp7UmVDxcDVtp6Ad9L/i5SpNGlcISlpIG4AuLoUlnN2THF6fAW
	 4ybKIFT1e44ZpBDXXvCrEBemoL1yWn9MyPGpnV5St98UbJEUu92aCwK1VtKbAGd8S+
	 FFeo7a2cOt7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF832C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849503370.23743.4077011408216705769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fb6b432628aef885aadfb84b2a9f0c4f763bc0a92535399be1877de28cb84c
Date: Fri, 04 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788495033

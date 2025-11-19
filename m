Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8085D2139C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537514; cv=none; b=TDyUo/JTQ0IeRtbiTRtsSVz0DJgCS2p5Hek8n+Um4l1nRgQHlYb4+pbJbrdD5DsvT0FbaeMBg35mGlkaaZP6dZjFcDH8tx/blkjgoGH4hISBnjeCza0EQdYH67zKe6mapaTSQLqCE2cZvS9RSCltLHDC1+2jUovMmKOgTTC6//U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537514; c=relaxed/simple;
	bh=vSR7JvSWKzYcjmbSkEZTdSvnqe/OyqZerW82A1HNkeY=;
	h=To:Subject:From:Message-Id:Date; b=Tv7sPj1ZOgqKwewjk74k1W21kvFX6wGV+k2AkW55pJaIJ86YxtiXPBKEjt+UmrYd6n0FvEZyJfwkFOHdTsOLv97DYhF435XnHeI96N8tfhRh4A21BlG50EWwvme3pvOMSUPC/UxFMHwka07g8NCHF7RHqvnok8uFd6IY4CXflDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/cMWtPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/cMWtPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CB3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763537514;
	bh=vSR7JvSWKzYcjmbSkEZTdSvnqe/OyqZerW82A1HNkeY=;
	h=To:Subject:From:Date:From;
	b=g/cMWtPwE/V7yvZJtV4/tdc0ZoLFUUzsBjSVgkPM0JchPqdxLzUmSOdWQOuiMBKF2
	 H8js/nKARefcf2dtXZKZIyyj2gCtypGTurwQqChlsCFeybTT9B1C8SRf6WoqbKEecg
	 GJ6zYTT+CR4NBYdvGrd3VmF7zLfrAoq8385PKZZ6EQvUbeqnP+hXmvifYg1EfnOAsa
	 Oj9xlwPOwuwsO8extfe2KH2HqrnqaifMeMWKg+4TMPq4tLLOyikNv8oIzFLD6CnZ1+
	 GxrZ2hs0Do6psKEKR9gE97RQXPXdE3/A9mpat9jwaB1OmlPIptNT44Emos95KRGbi4
	 GnUO+tAX9jQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEEFCF2567
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353751362.27472.6695772094025652584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821f10c9102ed839d231a3634a065704025cd70a8c0a943b7d350c1613559b6b
Date: Wed, 19 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763537513

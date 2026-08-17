Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BDF44C4FA
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786990834; cv=none; b=jgtH5kfTYPZLWtyIXDfVFtWHdaYViBD5tvlzs9CpDXtD5zmcFLBEgTiMFaOkxGmn+0/EBAQmk/lhR15GQ4gjNeXkLD2P8E1PAGUvEPKfjxo06Vvuh5BMGMmh12z3Z/dtq9UF5Zw/3YlmUiuSySB5vSLmBhsTsG0X6gX4c6/EXxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786990834; c=relaxed/simple;
	bh=IgE9c5XuVmf0Qd0g6bt4ldiDwkE55uihztyjRDRc5YY=;
	h=To:Subject:From:Message-Id:Date; b=Q9SBQzexJoEeE+AalhUIv56oz1LHNY19fKH5BsIHBZFDEyAG5WW25bpV38oiUdJ9h15dDBtbUSPxnhRMQA2IT8YwgofTdNG+K6jegGfX4ScGoNWB+Xb3tLcAgWCVFKaf5epcbaaMQxYIfNp+n62plRT9+lI9T7lc8cPkqacLWjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df4E6pux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df4E6pux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57DFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786990833;
	bh=IgE9c5XuVmf0Qd0g6bt4ldiDwkE55uihztyjRDRc5YY=;
	h=To:Subject:From:Date:From;
	b=df4E6puxRgcN/+fKTLP/TSI9DBH+GpLrx0uz1aX7nGVyMueedGX9fpOdRT+njIGMw
	 1LQOEjMxcBrUC7RfA8rr3kPZRyV3aVPkLGVo00OLFgP4U2MRlfmcJbIMuIENhUUFge
	 A8ru/UwrchFczTaPkFGR0Ogpho4Dx0JX5JEVepQzxzEO+65QX3a4EWTkbKiUpY9PFu
	 KTq3fOTenDvS0Hc3RCEYTc05g5tiGSmvhTDZGLY5/N44Ky/JsPqiguGunPhS8kK4++
	 VDqqa30efdR+8RQ6Jce6eYjqt2RYT9Bp2cN6ZdYMVusHDi/vESnceg+oG7vA+JfC9o
	 Y2xVZE/7r5HWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF059C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699083369.31280.4598225167039416772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80364e3fe42e825faa2beddcab07da0760057b8ab3277b870ff793f4d4a0dbb2
Date: Mon, 17 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786990833

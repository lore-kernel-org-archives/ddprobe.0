Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6895618FDAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738970154; cv=none; b=lW5WntiDndl34X8ZqDMEVWxiedYLilDSJ+zaZ2BjMcYVV+AgLs3NoTuz6XHAfXNSbP9Pue3bvP9Rl3S8iW8QqFOSLYCD7MFFPyUYVtrvMf2fn1e8kDfRiZ2KDvICrAINJ150dirDzT49b8Nv2rkBNQ/WQzBLIczTB09FIvf6uwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738970154; c=relaxed/simple;
	bh=fWaHf/m387hpXVCUKp/R0o/6vx3x4jOhQxPbdKdRNso=;
	h=To:Subject:From:Message-Id:Date; b=iraCYuyZU7ab43+KM+fCON/s3zQnhuOLbncE7io6/rg9t0Pe2DAr3upKky435XlBGFiDJr4b+giVPE1duScPPjdizXMpG70FIDSpJx6auu+B2rsT++x75uhde9yD8B500ocoSQ2uDrMnhknAFBmRU7iHmp7RMVEAcbE2UP0CoPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eATfA86G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eATfA86G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7ABC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738970153;
	bh=fWaHf/m387hpXVCUKp/R0o/6vx3x4jOhQxPbdKdRNso=;
	h=To:Subject:From:Date:From;
	b=eATfA86GkATECQX6ZTmH/o7rnNl8wtbqaaQ8bFVlZhHFhQIo7+l4mSXqf18PvSKfc
	 i+gCgDx7xwxaPd19QSzItC7NPtzA2aUwT6A6vJ0m8qA4J79Ssmrid/eZTu1XM56eYS
	 iI6a4aTV1khXy6+QQPhXSx2G4HsJtT6oxqNGW/0NTikAk3xHXWz8a3ssUonr1flEMp
	 N4hAk0wagrK/u4b7d6sI1cR+mfab1/DkXZMOcIAmGiHrPTA7bM8pSPVpv9RkxsH4eo
	 O5xTo1UfEkRhADsu3oCI38iZGi2cFpx/MdByVkQOCd8p54NLYHzzF3gFGct0kowl5F
	 BojpQkqByJCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3681C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897015359.16610.7428671311277996671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f592b3401760f4fb1b0bd529602634c97dd0c6e484ce1103431a0e714366d98
Date: Fri, 07 Feb 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738970153

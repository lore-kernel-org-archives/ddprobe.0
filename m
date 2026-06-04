Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3381EF9C0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780535074; cv=none; b=Jy36IHPU0mRcwcb6RFXZO5/LcHmQrHlbw2u4bPnk6gxKMVWVAlbYxSnAlmil6aRpdXUOymOSMWINqiOXgutSZHC9q8BMSXzc01j3nVEaAaSs0/sF8HcBViWY02LmlVbGTOZdPFcQcQrNUkvS5BQ4hYVT94oUMIqSWg9o8zN66+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780535074; c=relaxed/simple;
	bh=0sDDVCueHjOO/VNS5U+/Mcvdp1AYDisS9fnU1hYoXa0=;
	h=To:Subject:From:Message-Id:Date; b=mCxbCH6KHIAEYebKq0z9YyfeIVkIkSrTvIUIgVxQzH6nzzmA6Wc6LXJmbEw7Z2jNM/b/MvXZyz+SWUKZR50C8CawRHKdfhznSTtn6Rd6mNbxP6aB/v9Aw/gc+tB09Ow8cMLvTErPrjY77TNEGViGRzs9orNP97O1icmgXIW0OOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lz5fFXG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lz5fFXG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C828DC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780535073;
	bh=0sDDVCueHjOO/VNS5U+/Mcvdp1AYDisS9fnU1hYoXa0=;
	h=To:Subject:From:Date:From;
	b=Lz5fFXG7WTVC7EZ0YIDV/8vYrIeQEYcCuSpPcMBUl/MF9Xsu2XvnHBuyWqg0w6P4p
	 61Fy+KsdLTGChyriuidwQii/Y8qEkEMCMklYGIrta9rzLs+UsucX3ZQUa+W7MzQgVw
	 LPD4YAZyy4bueY40LYOnZ1Okp0L11ClM5Tydatl3UggVHNiN2ZswY6mBqCPKlSdzbu
	 Rgp8iPOGtJBn1RXrZOrlomErIj4BInvWR+GNs1C+wqR7YsR1wz7b+idxuVHQITlHdT
	 0YqTDAr0g5vprzDWBTjNAmebjnsrW1YiCeJNQuUZwftMcxrJZVF3kjYwGe0EcuEkEM
	 ebwbnXJsSsuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA186CD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053507369.30046.1301220346884935575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ac076ce989fe17ea15f2df26972d53b12d0fb3ed3f941314e0aae2ea966b97
Date: Thu, 04 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780535073

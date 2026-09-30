Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD193624DB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790767834; cv=none; b=bn3sV2kb5sxwk9GcmJ7tH+7qxhXP5BbVFWTJdKIE2dzmwiRfFX/5KeX/EXa9sfQDiyot9OTiwHmoXfbOArXVXlaz1yDx3Pmxbmg+gkideu0kGeapTlgdlkX4hPoKle2TOi0gBE5q/3KRaD86eTcFNlEtNEK5ZMriCV1ogefCKko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790767834; c=relaxed/simple;
	bh=JZDhUHDg4Xh/tltDYZmIi6TgLxoD2owyk/5m7d0eVQQ=;
	h=To:Subject:From:Message-Id:Date; b=eYpzDYT0RILGoICtnyvmMSgsdYiKwybuSvtpgVGcK93UstapOR8MDkreBfVoLgIQsm2p/F/v0RefpFGHoMYjxWsNwBM+yDAsZsoBNB29w/ATpTHg3mwlwujX4i49aVh0ytQ1zRMZmIAv147+5SGU/fKi1qscijMwISOECbheSdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg3cb3ZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg3cb3ZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26A0C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790767833;
	bh=JZDhUHDg4Xh/tltDYZmIi6TgLxoD2owyk/5m7d0eVQQ=;
	h=To:Subject:From:Date:From;
	b=Dg3cb3ZTcoQuahup/1IJ7mtpNN+8taqBkHK4Eg4/5+mAuYfLJRFsiRW7Mda1KND2u
	 /4W30uYPJ4wRj58YoRMXHuR33REVGVNdbYfjpgjF7kqLOHhExhPedFtNrbFs/vuCDu
	 VBxxbr1wd8Pdpl2/U4oUhh87jMxcc54GiNq0SGJPEYbTrRre50lwrqL1yJYHWouEDf
	 kNSndjhO5COmgfsd04rikXcrptln6EDCwcqw88CCA8Hsa0FIzeuuZ4NfJIpdjwdTwZ
	 TryEmGGGfP6lh0t/06nYVptwEfaFYLI8YH85hvDGQHrDb5i7s8nwFraSUN4ZCAYPDx
	 fRox9wldQdXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46CCA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076783368.17980.12167007690855097897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e374c0dd6d20aa8663a24673ed7846c1ea580458ecf62d19d530acb470a465
Date: Wed, 30 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790767833

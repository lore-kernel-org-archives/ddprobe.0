Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210DB2EA146
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760956794; cv=none; b=HQXNFZjDmXvm+/FH41kth29Mq34ojIbRxpITGQ2xT8ihcb/OAssJXBDWv69/S7qTQCOVzgcmIFdcTzaJkSHs25eqfT0EdTiFF6zwltfkeIz5yTS82NN6P2tGFh8+IRcDDtK9W2xwxGrTSuffTYd1JG5MgLSsqBgoVnmkvLp+3K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760956794; c=relaxed/simple;
	bh=HzxHAx435XfFaYVypw6LX8CH/CHgYeCsUffKgl6f4ZY=;
	h=To:Subject:From:Message-Id:Date; b=D+GU1bAfvAf/vrQnsG6XoeAlNAl1DXNeL/mSGGEn9QphHmtsLgdUw5lJcZ8abJWaYOx95lvu9Iiv4rN4MSmlHPcmXh4WptEaVx4td4K8B7tuQS5gIy6+5nxvmCzqJ5W8ehaLevjMNBLRGZfqnOY/Ow3P0TqBIw8tXVTM3mp1PKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf+JNpyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf+JNpyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7DAC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760956793;
	bh=HzxHAx435XfFaYVypw6LX8CH/CHgYeCsUffKgl6f4ZY=;
	h=To:Subject:From:Date:From;
	b=Uf+JNpygOuSgFvkYzowNWo6+Bnq3LHniA984f98od0eAXKZWoI+1epZduhvPp9sq9
	 Yu4Vg9+b1uMl2ceEd+jcyNHAz2PpOOOljyEtEWU4X4KyonbOsphynfriDIwpeFW2g+
	 /XfQ3D0hDL9fKQ3dWTGIQBDYNQfrmOvbO4ecE2R6OzVsgI+8skkM9nW8fYjdW294Gd
	 sV7a4mMgTxqmJ0U4WDjePbC5bIsnLm6Gycr6q5zuk5cSnYhF3YzNHIp1R0bv0r+axL
	 GfSO70gvolND9uVCuBcJ9CdvFgvxUhPm2eIGOewzJcBqmnt4WnbC5cEiDcW96XqJnP
	 uHwFCdRUc/46A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99274CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095679361.28639.3356484409369669525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed646f71016e40ebaee0087e21a019bf9fdd2310a1b82f9e6feb2dbc029881a
Date: Mon, 20 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760956793

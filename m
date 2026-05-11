Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261ED231832
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778468434; cv=none; b=qqssYJ+iFpq2AekpouTpWqJJGtAxDRIWqPxqaKOWRwL8MWb2vYBbYtG1+SsJ3DLGo895RHb5nwWIs1doKkjX2LSS3GdUMjT6tqHT/sSkOvdTfZl+n+UCIQpLnNEd5Q80mod2sd3CAtpJicRNqGOdx9hig7ETHAWphH9765DNOe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778468434; c=relaxed/simple;
	bh=VzUwXLZmyd9j6w+nEBBTSVBKoVdDrI+GPrzbaPaEkRY=;
	h=To:Subject:From:Message-Id:Date; b=tLab0/w1jP4i3pxM3m2e6Ej3lcVhajFlmBFupm/L7mBywGJnd1lgtWvO74S+MyptbciaGeIAkEYy7gUKF8NVF4ahfsEtxKLZlias7CIV6UaYDuUl7l326I5kMAFGXh2tsGgKWdglaOCcDqOVvMYTTLMBRX/w1Nbiy5lUx93Z7xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UC+Q8I7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UC+Q8I7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CA1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778468433;
	bh=VzUwXLZmyd9j6w+nEBBTSVBKoVdDrI+GPrzbaPaEkRY=;
	h=To:Subject:From:Date:From;
	b=UC+Q8I7QTFPDB5n8jVmlDG3aXy5DfiVyjY2uPtiAU1HpriLAlyxmle75PKy0gNzGm
	 tf9CXzEMeUCpPkDEUgic2BwJL/SzPcswJFaXwb/8j0kenAlfTY7+M/jG8vm0Fope2M
	 JeraOJ2R5iY+B/vSSSTwHv29wmsEa2BmAZzUfrOyMwh/ECMmWPGwCILkBVlWSho2Td
	 u8otFA2YJ5AbujA7sFhLG2tYeFaNpnezR9LRTFFLQkbdGCwrN1qfp4bR6Sn8rw+8b+
	 C5p/X8LqzsezM8bAuo1yGX+D/QNB01xGehzxPC204aDXUtya6kc4aOI3lj0Zw6Y1+j
	 Yh7JUg7egyg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD939CD37B6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846843369.13636.9477722301137217513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3b08acb7f442d62e04b252179cc9cd29a97df8d5cbfc0e6145008eb5fbd5a4
Date: Mon, 11 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778468433

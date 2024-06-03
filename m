Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678CD631
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717376723; cv=none; b=MwRFJt+kwTLublaNyVd6zcHBDYnO4uwxqorC7qKjExrBdf03HHKBQsAvvOekXWTySSmGNwNsV/UHma6yzH07ji7o5rTRZG/3d5T7YLq+5mrpwSzPJLMmpU2bYQHeKAfZFFJlSShu1v7gzwqWPMRgOAlMAkUspFOD8wqqAc2goFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717376723; c=relaxed/simple;
	bh=aMW+aAikJ5DpVegH4iUtkRnYe6h+7UGimmFfhQEvWAA=;
	h=To:Subject:From:Message-Id:Date; b=FceeS6+mFJlau/+5M9P1T1q13vLUTT4k5eR4y2sQOfQ44Z7x5kufW0/oLN9VdCuFiQpOEJYXs1E2QVl0noVDCFzWsaM36YUhiHlQ/TpmhIoNVyZO7X4Gcy6K7r3kxHSc3vlcFi8hHu5qi2QeXWed7Fw3PhAV9GwLITw7iLnYw1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQh0fDfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQh0fDfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0612C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717376722;
	bh=aMW+aAikJ5DpVegH4iUtkRnYe6h+7UGimmFfhQEvWAA=;
	h=To:Subject:From:Date:From;
	b=XQh0fDfaHMv3SEGw+F/aXmSwdSntdt6TT1RWa5s10mnEW4cIG6f4EdsFx/My5GlS7
	 xbocPj3dd4dRlYG7AOjeHsIi2hqZSouQ+b7YVrtCRCg4xac0IBVN/PvPLIxGSOVi9t
	 N+bB+AKjzab9AiXGohEXCL3uoclGg6X24v6u3L2hjhNGW3dSPVXLlxqpOZawhy+xoG
	 2NIGCHXjyHZXzR9j6gzCdU8wFXyxo8uJld8RKswdZgr+otWvpe7RO0EQYhC850nm70
	 7ItPL2Emmc5Yv8kUvmot570XNjQSbLqSTxFmYoUhWlsXtoLYUOV22pD/QxM0weD30G
	 i9xzm48aCC2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E7BC25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737672278.22043.18165964843002712860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c2c6ee1d1a9f552ce3f66da7dab51b25640db3d8bf0954dc685fc8e0903d6c
Date: Mon, 03 Jun 2024 01:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717376722

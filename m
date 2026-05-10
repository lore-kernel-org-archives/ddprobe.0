Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6C22BE056
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778397034; cv=none; b=AHdFwzPK57lrOFA5RR4qb3CsFqWwWyPbvsBHnHA9uS6h+HcHJV9MiY5kaBv8i0ZTTwvHGbaf8ZiGOfNpcdHiSt3ghF1Yd6kYIX20r5nN1bAf3dSWDdhxZfwxlTxt3bOVcNVXQcSukk0as2clFBVufsu3HY0BsMzsy8N+1Ob+sjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778397034; c=relaxed/simple;
	bh=ukmqSmacA/ERhx3LYTeR5KG+ld+q3JPjvseOThKjHzA=;
	h=To:Subject:From:Message-Id:Date; b=nsSlCYILsdakGKIE0mVcBQS4ZrRcHpmw+NSJmW7UdSx1Oez8q15tS/3b5j1c97yWT0BqvelML9KyNhgoPJTKW6vLjP8ykZzRIvq1D61HdRT28oqWCcYCEwJqadncdGPAnHeV4CFQ0qG7Wnh7lPA0AmJyrXOpJgj8fPssS+SBW3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2ZvLJKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2ZvLJKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C076CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778397033;
	bh=ukmqSmacA/ERhx3LYTeR5KG+ld+q3JPjvseOThKjHzA=;
	h=To:Subject:From:Date:From;
	b=u2ZvLJKe1FCgVy51q/oaSy6tEUBH03EmZ1jVltEHpkx7hJ+FDjyvEOZQVjjsDMbUk
	 1zXAejYA1Rwrj9CTEkgbRSY9zBu/QA7UgzuIUBJYuIvHnbnmdcv1MKvMy/5FHHOe/I
	 l4wueRSeG4+O7fmElZj3iZ89CJEj49U3PyvgRxz6yCmMPDLAGIU8eCm2Px/VLEt9Vr
	 mPGwgr85HVR4+fR/QgGUakoMx10XvCmsguD1LX9ItwGljxt7ejzeZR3GlYbXEqwkSC
	 MqeOrdu5HMkFF9gtUdHaN3/XdTTvQ3HLtq9CHCfRUSZkZ4qGIFslyFFCMQg5bSSEtb
	 RkpXEXWzOmuTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B074BCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839703368.28065.16229248627436087580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b9be2a1d2304dce91448286967586f3acce9913e35c84a9e65e27568398821
Date: Sun, 10 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778397033

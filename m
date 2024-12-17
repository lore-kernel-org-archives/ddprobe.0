Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25145442F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734410154; cv=none; b=Xz0HESoz2dEZpyC20uaK9xpOmOQ0vR/pqf99knsBy6gHNcrP4Fc5tx7bTuby6dr7PwxrF5pdWd7Nkmnvy3dRDzFJfW7JCwfV3NcjpBTG3BsHeLUxmLXEuLpWms7lyI3YaVqpsEDOcmkBM92mPt2DKBGi5lYQWSkMyr6dB5koBP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734410154; c=relaxed/simple;
	bh=ncP1+aerczvo9oADI1va8RZs4+L1G7h/sSLWXWYstZs=;
	h=To:Subject:From:Message-Id:Date; b=jPQK5G29fO3uxgCAQZ8Rieq5FeQVKA2D/x7TgYevYQlN5MBeMKXgAje6pGCyslPsJj+EcOBBZ7VODoC9a1YvVNIVZeX0Md33HbFTAHdm7UahC1mEf5kKsR+3W5Il5g1RxOfrHlaTjc2Krhvu1R5r0y/dqaD4s1a9Hgo6l0nr1tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1FnIWf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1FnIWf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A615CC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734410153;
	bh=ncP1+aerczvo9oADI1va8RZs4+L1G7h/sSLWXWYstZs=;
	h=To:Subject:From:Date:From;
	b=U1FnIWf4vqwJMOUIfG2Uc9vaSRPvt6IrdqNy42nJBL7x78QeIY900M0RVZkEdo5ts
	 Hu14KA4vQ0E3WoDGjJLtEF7Rowz4ZTnbiFfRSaz2ErsxHzZOysEPI9QvDH+X9fKuNl
	 wq6gUqo18D/qRwBDi89aTKKXi04iU4TSEf96Uf1M80s+nWk/1wyS2xYPpfXAbr2NkN
	 tTR05j0Tl8EfpiEE5x0OUk6gT9Iqd8zwb15vIdu6V3jmY73+0EcENAi3jxzZX0INU0
	 EL+KW9kY+epRCn/0x6f2bu34tg902vezZzh1uARbn/W2CvVfVKVVZGmQXK6rHaJQwP
	 TJN9v0gGaefBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C01E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441015358.24392.4182364924517618530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03230550dcff8eed0a535cb13492d0fafcfb9466a7a9848e1ae0fd80d4fc7da
Date: Tue, 17 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734410153

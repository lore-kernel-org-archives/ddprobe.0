Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5EF3C199B
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791565234; cv=none; b=YrXzBi0X3RZ9PNAX4DEqUYj6j29eY0rKoM86473GwEYFimxvGWj6HPgGAH+mHUT9aIAwte6ugoQn811NwC/UrlDOc1mnDULJc93NHZoUihg2EgCDxz/USShXM3UNu0a/8vLN6XeZw2k2OcHdBk4jyTEnC9eylyeppJ+rzU/j5M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791565234; c=relaxed/simple;
	bh=VoVCQkPOxWM68HeUJq9LgxQsb+JDZb/xR2/ftcqBUo0=;
	h=To:Subject:From:Message-Id:Date; b=ikD04UcSdFoPdoEf8cIXPZmSLeSFcdPkynvcKmJ6NIYbh299rDGn4WjLBEwqhPV+z8RBGQKm4AS7CGyLAuaBSVkhYq6AbyD9OFTHNyYCzLhDYUVQ4aPYu0xbmD3wPv/jJO7sivnj30aIrzXG44Zo2Iu/PCyYowm6b6gJmd34EfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpyaOTin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpyaOTin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E4AC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791565233;
	bh=VoVCQkPOxWM68HeUJq9LgxQsb+JDZb/xR2/ftcqBUo0=;
	h=To:Subject:From:Date:From;
	b=EpyaOTinzoE9cTlj1puzRjaqLU+8mnV/G1iu14bgNj4vcAyFauwDETajyvHnBc3lx
	 DcKlBeRO4qYh7PZ/tW7ZHXnqBuCkJ06aUgVToiGanae2yvB643IrSmrRcuEGyqkDkv
	 XEFSubYlsNerVlOz9yfpAt4WNaunbGY/Omk6cmaN5bRd41MmjForni5V6+srnnXvOr
	 x8XoZX9BovFuT2/n/xMgqpRvmdog9deaqYjUTgiGWTEv38pAiSODD/54Ixo86grQqz
	 KguRqFV8E/yx6H6W8+48EeDULuEGkqdty7gn3+KCrFZnmpT9cm0oHienlYxlqu0WCb
	 uKKVJOWdDH+tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9ACCA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156523370.27705.5407003506038715788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5311663fe37773a87e228e864cfca320d2885bb2d8ad9c6b98b7a920c06ccd4e
Date: Fri, 09 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791565233

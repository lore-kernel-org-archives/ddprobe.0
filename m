Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EE2230D0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765945434; cv=none; b=c1E60GwATJ1A0hkf3P9ZjkB00aHz2+8ejTe7RaYgyRvY8v3/iF01rfO8ktMmkgKhB+b0aTP26iYZv4kytBSwRcvRt6qfcGVkMzG/1FIkQFL8/6WF7yCakuqaAQ4S4w8on1IXlngKsf4+cL/sp4eggur58wVnxYl6y94PL1y75ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765945434; c=relaxed/simple;
	bh=hKI0Noey6u9yI4EXM+ysr+lN95MDiAf+ULWIZo9kex0=;
	h=To:Subject:From:Message-Id:Date; b=JluEbW6tDjLwipgZ0A5SH8yhHG7PFwLerkjeD5/fy3NknbcurisHpizxEbW3IYQJrYQ4xeBXhnWcrFg+XVkiKYOfgnqLjNEtfnhfejO6ym4CRl7G57N+lcC4yaqiyczr2CnjGfBKd3oSQaYqAZoDx7HU2VFRC76ORUsWuecFVqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUr49DnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUr49DnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22EFC19421
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765945433;
	bh=hKI0Noey6u9yI4EXM+ysr+lN95MDiAf+ULWIZo9kex0=;
	h=To:Subject:From:Date:From;
	b=nUr49DnGDUnNNoax99IMZ00koHiDvGBxrJADTmZZodMQ3Qn0R19z6CiL5NSoXGdF9
	 H5FnW/ewoR3IMl4SbfYyE/HnjD2qJxSivPsx+gJVrcUv0i7l/OgIpN5mVimSEpnH4l
	 VcWf7u1+kGrNFrey9iobnvKiA+XHOUxDAKSHfKgYFMqy8xT5sqLXyO+dgjxMSdiOk7
	 yTnmBe5I1x1hBq24SqcUGSWSUhJ6QnAplcfk67i4YB+KLa9e1MM5egyOpei3qaStGk
	 +iCziTlA9+oG6OcmH0mIzZg1kduWEzXhnzfls1BIhhXs0dgNSPvcWm1Z9qOHdgZkCC
	 oiKb2YQJQ65Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6E3D6406D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594543360.27704.12700141496982805439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14c18ada3d29dc658f314d47c94b4aafe208b944530bb9f560e7eeaf338f671
Date: Wed, 17 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765945433

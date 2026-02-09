Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A01A18027
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770612834; cv=none; b=aS94TnC6GjfwZMrMAdOT4HQufk8Q8Wb5EVWxFnnWRTEbbu3CrN930KOfUhPeRuhuIBZqdUoOUmDNT1oNaAvSqwJFfF9PMN8Xbpv5XH9P0M3WbtC2+Yv4IJsX5HCfPBLIRqVfWHoKmKcPWeUuJE7KKOpsKTVpoez22k66Jopvy58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770612834; c=relaxed/simple;
	bh=w73r8PiM0bzuaSv8sxLXotBd8LtzEYhavm1LACbkl98=;
	h=To:Subject:From:Message-Id:Date; b=s10Z5/GIhIsY3/ic1mwaovzW1M1Xc0MFIW4PW1SqCZ6tJRum6asz8Y1MBOSipAd2YF8AYKE8XXV26bN8IM4CzRw+jG7UCXI/yue8lTdeH8JBupsm43ktJyKI0X4OTS7QYM01Ga2oOm+C+tBwvHTe+bJLaXtSYM/uPrqdftaCgOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpT2jOVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpT2jOVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5FCC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770612833;
	bh=w73r8PiM0bzuaSv8sxLXotBd8LtzEYhavm1LACbkl98=;
	h=To:Subject:From:Date:From;
	b=mpT2jOVkN2ucTJ6MamLiE9W0U4uX6SF3IyIFlYDJJ9dSuUhn//98tO0BVhHwbJagd
	 dByF9Zzi9JPuo1lzVLts5x/FXx7R0jeMOrb2Ek0LjC2m9eL8EBTjbMC9sMlTSgmhkW
	 UIDuN7LguzZ526r1w25P1qdWg6nCyWjC6kwBTwm7fEp7bndcGG3PuvFexvq5yl/tNk
	 1HkHpMUVATasjjVaB/m/bWgZyja1uBCNa5tAcessSpMYCHL954FSdymJ6DyhHDzLEf
	 8Jneil9LyqCquxqLT7vRlRlN22IStBTtjWugmnozqeHGGHNJ0046g/Vlhz+B1UlQEx
	 AWfijh6EuN12Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBD1EF070A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061283368.14937.3551270985552055473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934b472032e617d5af88ccaccfecb640ef039e1c877bfa86ab14008b546c4db9
Date: Mon, 09 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770612833

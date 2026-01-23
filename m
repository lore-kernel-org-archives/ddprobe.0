Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D081EE7C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769202834; cv=none; b=aKFo5DncTff8ShGlgqiIC3vQblURJcZVheuilKcDNxnSHvnno14g/mAveLPpiodH2TzkH7DhYa81VRv6G9GuXZyq61FA11Bg2jcXjPaXwFZn3FznuLOWTg26cRnWo/1DhFDflLKAM50vEDZA24NP161bqbz1SayAzEotiT45za8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769202834; c=relaxed/simple;
	bh=N+7eIhLFldq2za01H1qVOjIdwZO4aAkBe6i030o3Qhw=;
	h=To:Subject:From:Message-Id:Date; b=qtb6fDj9bP85I4suB1MSXt87VyZj48v0SlLQPQdr33cn/sRYI6/bzdcI1xweaEIosVFTT4XiY4bedVNu8r0kIb6NdRJ1C07ePXEiKDIXLbg9AVPh7vPsDQ4vVFgsV7G8ufiAWePsQ3+PV3MDB7CZ5nAJPgiZd8LT5UffWtRFJPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg/EuoU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg/EuoU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4701C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769202833;
	bh=N+7eIhLFldq2za01H1qVOjIdwZO4aAkBe6i030o3Qhw=;
	h=To:Subject:From:Date:From;
	b=Xg/EuoU3Ih9k+kn7O+qh02lHQW1p0eYbQQPcFPC0r6lwlnbA0BgzhuppP1tDG0J7t
	 n87R+YDvh2B489WJ6fMsILncEg06DNxubWFzalN9CQqLkUWP5AjlhjOijx9yDuHk1o
	 ukeh+MzS0b/TzwlTr1fzEJT/JPk0J2xezH8RCMjKtLAvDm1fgeuCyXBUE2knrZhBbM
	 HhAnOQ4H7OdG0+KtQn/kp7DMPBb93aJ/0JyjH/GiXVeb4fIGuWcLGKunqMY7b0E6DI
	 q9/dsKW7SYz4A9mRsrkCkFdngmz1jnhCqEtg50vJwrTriYUHgDjBrBRF6pZO1fqtDj
	 WmsKG3z9y3+nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95632D778AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920283357.20369.1688628162050868467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f4d46419fc6b0ba9504671741f2a80e714a97ac725630d048a5f74fadfb465
Date: Fri, 23 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769202833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606001A9B58
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784435914; cv=none; b=SL4dfvhSSM3ExUXdnPVo0AIY8cq6kTBpMJzVA4K5xAWL7MzSaOryDptnwGVgp0u0Syf4TwpESEFgzXT58j9Dz6zljDgU/KqcYukZYU+Y/YYMrha0Hj4/hZOwbNs0RRsKJAgt6aqQQ+DK8qI6r+MbAfHETRWykY0I5vkZZ1PL9tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784435914; c=relaxed/simple;
	bh=M0JsMo1YoBsgGjNFtyIuv3pKfhbIZH6c5B2rRWlbtno=;
	h=To:Subject:From:Message-Id:Date; b=Sd+IUI/8BwQT6FXBH26q/9tA7a7Q2T8XN0tft7km332sh6GwFxZl53hPCrSu772CPtWhzg+BSjDCi9igWykX2ZhDNnverEnx69jszI0Roc5i+F47l/9ZgPLI0sFw5drG/xDd8JqQWc/5wzChRJF1SGWof9kyC9prSF+AzL2Ie6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f72YqWta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f72YqWta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61C2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784435913;
	bh=M0JsMo1YoBsgGjNFtyIuv3pKfhbIZH6c5B2rRWlbtno=;
	h=To:Subject:From:Date:From;
	b=f72YqWtaJn9pEln3CiYjL72RNqrXPiBtKYUwnOwNI61TdntjZthTaAetm1nu0iYjv
	 pqGVsPPTy+Xd0A9zINvQJ9uZJXe397CzlLpmU0h2AVy++V8CWIv8BDwFvunZtNINXI
	 EpTsZi1IvfAPfVqSzsFGANptToizIzaH1ck21Xbg0SaU6tS1tP3cFt5phGfjjstJ/g
	 uXSw45DFa6E2E+DYRYCSTKkJxS4eN2cKTBeqFTqoK/34r0nxUIZxSb0yikWPCkmTBP
	 zuKJKc04kpOquXJeWShigO4SOH1V0HkzUV5cPRm+IxV+LZxND6+306ht+M5EOqE0Z1
	 6wy9wY2Vaalug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5BBC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443591368.26947.16462790876367972044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b70a4d92a3ec1ebe87e72437e517fffcde3e2fc99d2274013c67aaf3edbc79a
Date: Sun, 19 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784435913

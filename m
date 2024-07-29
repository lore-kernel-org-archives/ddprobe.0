Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2892836A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722215753; cv=none; b=hLk6Os5esCI4dOf5mVm1VzsAB0K7W9h6bTNo+EfXBrPdb+/KfQ5DyR6ZD3+2i6OpgSTUN8vVbI9cLoRfoYnQ2wOK2JeCwbtMkrUil2sqVVCVJQdDNQRcnLTTyXrxemzE+/rIn/54IJ+xIMd9FCGWZlFrgFsFugaJdnmD8+4IFkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722215753; c=relaxed/simple;
	bh=3W2Jb9CEjv2gFKpWKhJcuU+uFgyhOfQPodSy0nEDUFI=;
	h=To:Subject:From:Message-Id:Date; b=LQ/Tlzl0/F+Y5ihMnWv9qTFRzHTkWKUfiKT0rak98qbwzs6SJxJt6hycWnbc+lzDcSO3kojxgjtuTcDDswHMDNybDNjOcvHlhPYPr1Cxt7H1SOOg7riEGl9y98kimN1j6n3BOpEyhmb2N3cJgGfMeblMuOUqfHO3H7KAZQmaSQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWlL/BZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWlL/BZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF3C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722215753;
	bh=3W2Jb9CEjv2gFKpWKhJcuU+uFgyhOfQPodSy0nEDUFI=;
	h=To:Subject:From:Date:From;
	b=QWlL/BZzanBWd0QtbtIHRb7oUHEshKO+Rgpovr6F0ETrFn4JQzrnavpGscKzlY6d7
	 o8uwprf6UBYZyDvGgNGCMDCXwhTbe9pdQxPJezMLPq9sSztJaCNp59AdnVvT5jWND7
	 VmpAZQ+MXPi+L+NNmrldmBoaOgk3lhsMH7px/b56XsLYqMQW6eMsFQoeGItIfLU+Zg
	 frZRV6SVa62v6KCGyIkfb6rTpqS5Wnit4cUSgD1q+kG6PtvsTWJYib1Kccuk6X0aFS
	 A5To2cYgEz1Id+uhe+iFCfBIzw1DeTWQ8KtughT3eyg5/T+uOQrP6pgk9DIKKJnaPD
	 Ap6h0XnctwPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1BC3DA64
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172221575358.732.14738126589388876670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4e4d09354d286c7a883604f872326aeafb24ff6ac37180e23680752818c02f
Date: Mon, 29 Jul 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722215753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6071DFFD
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757802593; cv=none; b=FPMq7Exh9f9AVOXPIZ/Cx6PaicdqOlWlc1wVnWxsqpVvzDETFfhoj3UTppi0et0zuYEb8YrA/HUX8yLWfhFHlbXMBdTf8C8XNIe/J/jGKwv34uK63sfkr7SBXiA6pDCMN/gePbedJf9P1MAbXQnbixdW5R/vvbc8TNEmlzEUmOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757802593; c=relaxed/simple;
	bh=Gqv/RZytIK49dQsfJqRozlvu+LgTsdKoDyti+TyqfGM=;
	h=To:Subject:From:Message-Id:Date; b=Q8lZ9AJIvovAMdn8DrMG/uJlggfdF76KSto70Yct0gK+UG43g43pN0+bMAItlgRSO4FyAtR/yFf6nGvlDh5TeRKXTLy1ZIqGMuvPGa6F28tzXwnkw2129oYcupWqrZ7QrwnKZxMfvUr0OeWc0+KOJEKLo5MIaWyAY03W9kdg3qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxvQ8gVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxvQ8gVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B1CBC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757802593;
	bh=Gqv/RZytIK49dQsfJqRozlvu+LgTsdKoDyti+TyqfGM=;
	h=To:Subject:From:Date:From;
	b=rxvQ8gVE0akYBdGTYzhyNAx6TF57KmV6bYcanQVFfW7Xf9c7jPJI+NeuCw15dC12D
	 6QAYXEbJEgGJHjfHK1+wEDK9ObTUyRsu9Kh7umaphJPiwy3P9lDpf3nnSMYI2zVDfa
	 Nd4xfH+nsiS9Pxm+D0pmA36VcOwEh7QXtFdwTmSQEFzDYxx36oF3Bhz4eXkIM5MjRo
	 7B1EGy+Xe7BbIrtcVO8Ue958RYqSTJ9d/uL5Zgea/pZpKggnUVwPjx32ojeRT8k+US
	 cQXGhArRgMMm3AfZq2q4xN2a/0BnmnEBJPhB0chW+DZ4ItEJsrri+g4R6llK4HCulb
	 UadaH+to7mvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90849CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780259358.22543.17553306193604898062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5fc405d7e8b4d2a0f62bc0b65d5f6fb9f9d5c2df1527837c9b2848d2c680fd
Date: Sat, 13 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757802593

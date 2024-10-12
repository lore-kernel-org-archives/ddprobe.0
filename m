Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CD34C8E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728694554; cv=none; b=NfCT/Kwmn/5Do+5YuNsgHOWjHrrWDL0g734zvkzumpWt+M3za7NgYuOlyaKt0AGkWkWFpUrzwRbkRGVT1JQ7qn5YHRBRovxxcNvxwHs+Mx4gVkmrMLKP4R9ysLQ0WSa41FXa9rqNI/kw0zyRi2AyuLhYsoDS+FAXZCe4aYuyzMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728694554; c=relaxed/simple;
	bh=N/Eyp8qGMZf4nMc0h/pO8jD4zVItdbH7Be9QM0qkDgg=;
	h=To:Subject:From:Message-Id:Date; b=MBtIATa9CU0yAziWn2TCism2vRnBb65vre3DmLeikVzKRRyMd7olNyPFGCtvza/Fr8V7GuwHFewlUTUL19DeChKhtIXAA7TEgK2POKQdPEDrDkGYPYnwal3vtlnKl/79tq1JpFUJkxAGTbVsoLsdMNx9qqM8g1qFWVbUnFWERDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcAWOQO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcAWOQO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ABBC4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728694553;
	bh=N/Eyp8qGMZf4nMc0h/pO8jD4zVItdbH7Be9QM0qkDgg=;
	h=To:Subject:From:Date:From;
	b=ZcAWOQO/jnh0XjmAQWpuvM3srJYsRfAa37L49qhc3CDm1NQkp3tL5C4r7341VY2LD
	 zRDFI29AcWANpOz9DEzB2o50FENcCweiq3zLQfdwp5s16MJkLzb0bmzsMQUSpAhtsN
	 suFZUIqJnQ8PHqv/cyz45j2qcEPUFitDDH11XtXlP+dUopImnCZc5af8L4AdLOQRuU
	 zYhCC1kE6oTMydniu9S6KSVc5ADn0tvUoO1MFskh7SZQ9EPrOeaoop7fdCKRxD5ApW
	 ONlCsbrnBYYGKX9XIeGHzZUsQNIy38dxDVYyQKS4o45xxNATNda0fE08Pe8vhljQkz
	 jwQWlFNq2Lw6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A306D0EE1C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869455359.23145.6831105069715154604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c47dd9e2c7213cdd8eeaa794e7abf19cdfa4dd06f6139e7b6f0b9b47793bef1
Date: Sat, 12 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728694553

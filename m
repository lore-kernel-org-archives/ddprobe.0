Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5431862A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756564794; cv=none; b=cT7deLvnr2ZrHmgm6BD9+byFp5o+s4xVd+k6Jvfze8oMXsyDol5U1HBvTM1N/z7yQvBzKXIO+H1mZNYoDsm1WFffdCh1G3YvmdqrcHe6f7YyadfNyR9iGvch2e2MqpXOfGlR86t2c8Bksf2EULsXA7KBglFvSl+W2nPT4mKySLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756564794; c=relaxed/simple;
	bh=U6lAgVsIWVeNLHOiGinwDBtLyLwrNBV8pKWSJXdrydM=;
	h=To:Subject:From:Message-Id:Date; b=rsSecrF7xKS+gcNgCELfIw5yCqaVtv6Z2uTEuGTLy1/UkuTe4jWXVue1cY/zFC4S0aEn73SRNBPsWRKIAfuvJre5m6ShJV8KjhHxU0rBQ8sfoHWJZgcJRlHBF1ObEnCxzETyPOGqNfvThFdl2EPBkjJUabZH3IrRAhELasXoLdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMdfMqcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMdfMqcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1373C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756564793;
	bh=U6lAgVsIWVeNLHOiGinwDBtLyLwrNBV8pKWSJXdrydM=;
	h=To:Subject:From:Date:From;
	b=TMdfMqcK9sLckdUsE7pqbtCV6ff5n2Gn0x8zO44+58gKSyu6grG2Rclzst2IdmOIe
	 ZFcjWQ7n7ULHOnUh4jDib4Mpr1mcxrB12kwLAReXDUQY9qVZG5FDEUiS4gIALwjXgf
	 7s8FkyKLiUTwTPy62YMku/m5wWNmpNYdLk+u/GOwy5m43pCMKeKOHSaGPJD9Vfl4ZE
	 WfY1Z7Zo93IWc3Ab4me1UCJvbjXPprLtkafpbrC3K72dqWSdBJ2RotRcN+1pAaKP5F
	 Qoegp6BKh+AhrWtyUorDnzBzskDR89HlEOCq6EBs1Gr373xZvJYfm/VUbeItTt2zxS
	 MDZtbG05AT8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F095CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656479357.25879.2319943570249940386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c67b98a43ec73f68f26fd764467016e884f858fd06a0d304fab1d5bb458956c
Date: Sat, 30 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756564793

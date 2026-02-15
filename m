Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEC213AF2
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771121694; cv=none; b=tjfTqxf2ikCisQyjvjSXT39b7+E3ad1X95P1RUZvg0q/iFrCFWgvBp39R0Vfl+JBOFEdtlmAtdOrwSnQYSWG/bh8kHMo9MmHOR9sBuO5SC4ghSqOY6Q8kYFUWYhCEZInaJCmEreMjWultyCsm7VE5iEolnYHxzhTAkrDqoIb87s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771121694; c=relaxed/simple;
	bh=gfHbgH49EQM7BOsZB/puBrc4MqqFJRDiB51qAEQMKJ8=;
	h=To:Subject:From:Message-Id:Date; b=tHuxXRqNYUyA57zrdAV9g2qoLtOqbg/NQ+FiINKzoHMgbibyJZnIYCr8cH80te/skEs6P4e4qcpPrBUZOKDHyBiaa9+rR6YOV14KHRtEJIwtDBjVsxBlYvkvIXakXjj++F6fNSxIUHTCUfYiZFjicFJbpwr/iISOjkZYJL/9+eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU3+XUJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU3+XUJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E91C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771121693;
	bh=gfHbgH49EQM7BOsZB/puBrc4MqqFJRDiB51qAEQMKJ8=;
	h=To:Subject:From:Date:From;
	b=nU3+XUJlSEngRKleT3MdTA5tI95za96Af5EiDm7iMn4C3wm3ONH3d+C9ao5IXqax/
	 E29B+V0Fm/qYMBsu5d6OqpRMs4R/BYmVGWQUnd8hFI0eZNJThlGBOrL+8i7IXS770D
	 SBcxU59RWxqbgQJmwvb/DPU1ZZMoH/0B8EM2UiMamFGSF/gnzudJO+gcmLA94GtcNh
	 ML6TnG0neHaY6CJOM7JqF5mxC+xhG1RzzrP51gfk5CTH03KkEH7oe2y1iToBK4t16f
	 5WBquPUfRGbFO0sEjuUUrSTQzPA7azmm+tSsm2adcV2F3QAE9Z56dPTSfcvtHGsoVN
	 FHZDhq5Yr2PJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A013AEF585D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112169363.6782.13609884377779550190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524e3c1d0a36c1dc83866951740c23f718a7c48fca42f2769c14e361d6360fed
Date: Sun, 15 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771121693

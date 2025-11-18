Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF4226C3B6
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763430114; cv=none; b=m8G5oaB1sEkwqxd/p11P/1zCNMOFm8umjpIKSLzwaKwvQWt05mr3//QVyDFfc2tIQL6c9SdYzGd56udRrFXJ71tgMtK4irG3hy0tGguMU+X8L/XlA8s4sNcOwbHf/cAG5LYccKNC7vT0UJXodbIEraSkJ+rekZZfUP/cN8ZGx64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763430114; c=relaxed/simple;
	bh=K/+zwGUPaixaTWkIUMG+2455lbCNcm6LnV3fvOV20Ck=;
	h=To:Subject:From:Message-Id:Date; b=Cxhj6GTYWR3JAPmO+RMP6U2CmtVr6VSx3QTis4fz5vWGFmfRBt3Xn124VFfG2UB9PUOrd5qX68bRf9l8hsqyZ3DPHVI9pDtJYG+BE2KTveok1A3jHsm4amUHrRbItih+wlH7ORe2M4V86VjSl0FAtXX8l55j3X4LvNzooce2FVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBInagJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBInagJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF425C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763430114;
	bh=K/+zwGUPaixaTWkIUMG+2455lbCNcm6LnV3fvOV20Ck=;
	h=To:Subject:From:Date:From;
	b=qBInagJYhqTQ6FwnlTW3Y2/Gp5XYAZiiLKxxvJprLBZtmteQyaG1Mfj/mTVxnvVxR
	 QTP2UzHwAEREwVeTWZjTHPEIA5IGcgHy3CSar+rkdiFB6bk2nJpyaCDl4Xz29I4nnV
	 h8OJeyt999RqdXsGojfjQ3wAsZ//3qhJ3GBSItwXKqRih9+1ZYn18JF/EIOvkz2IqV
	 JlNYhKd+OazGO/N15imVmSVSlaT8ykBA5NRcZZvoNBd2F1/Wh/UAvil4IxA4maSDuU
	 2zOpCJM+e0dnAMWBWjL/Ea57Ly+4NCVwgk9vzB3WpzxSJNYG5QTDNe5lnhLLIfSG7a
	 SxdRxmGmKWX0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3CCEBF61
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343011358.7711.13188578299652097054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fe7bf337be9b436a05854857163086b6958567149918bb0c92dd28d6d3469b
Date: Tue, 18 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763430113

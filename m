Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C721C862F
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759065596; cv=none; b=WiQ+7bJ05M0l2sWJacKHDYrHRy8n6F2re+/zkQkiK25bM+zep0cHfQzUE4JzmmPgsadnVrNN/xcDyCceH97tKIVbIRRhaj7IdKIsraCoWBM9IT7mqUWo74vH3BT2gx/5eIq5JggIt8DTya9XJYhwLtOSLMNKtDR2Wv0/IWK1eVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759065596; c=relaxed/simple;
	bh=InIwYgRjarcQBCN4nOnRoU8gfabYxrbs6PIJMJPpZZA=;
	h=To:Subject:From:Message-Id:Date; b=EF+Qsu8K8it0vewv5Ji1X7EUtTptiWszAfM+fV8kbdDNtL0VJFkp43CtaAN0vqNAeYkrkOkG8v4EsuD6x3dVTVUwCxqXWW68De9lF3HozU0RBLGNnbpkczZ7f06CWF9YSS3emjr65ENFIQ5018WM49qLkc/I3oKIG3InCai2ykU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuPLnWDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuPLnWDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1422C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759065593;
	bh=InIwYgRjarcQBCN4nOnRoU8gfabYxrbs6PIJMJPpZZA=;
	h=To:Subject:From:Date:From;
	b=WuPLnWDau2ZVdE6TLIPYsH2cNeE4AfRsO9DbKXXGpzrlAhzheaKHCtg/25cEQxegk
	 H2rqz1Xd5ueUx/OelmzNPRjaWFNQzqxGz1AjdOOSHFSZ59Nck6L59InXn1mtzWSeqh
	 IdUx1K8CSn9w9O1R8CObHsxjP25czhPGG0iKUxx1Y/9wRCLawWWuBmRWGSALIQK58S
	 9ZiuT9BV7bNbvNwY+xnByfvRyVLGiRa0bQKKsGbbekZRcOF4F5u/l2+aWCfTosnSwT
	 9OhT0oLwYbwAEja6YzogGYBMqesPGITgGWUuKZ7ZJIC2kTcQOXa26Y0uS5ZqB4dEpK
	 QdLgY+eQ9d9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF72CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906559358.9623.11080505451940078471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e7de2b9091a90fa57dff93cb61f024a70c222080c6628b43d45dfc6eeacede
Date: Sun, 28 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759065593

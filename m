Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AF215A86D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769578434; cv=none; b=QVP2Z5C7U5kP7Z33bWQf6xiIYihmdJbYNG90bv6s+PkCh9LBbLPNDpB8qTSAZVzdtSmDitpJVixjYvvvIt2vqJZ9X86Eg58wKX8T8L2R0S1yqk8qnSVy5QRdNwPy/wMdy/zP8CeKI61a2ShedDWZB7ylgJQ6Lj7ajSEqwQZ6Lg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769578434; c=relaxed/simple;
	bh=hArquLioiScko9UVqUkzHl/1kxs6F9LF3VPRyGtWZNM=;
	h=To:Subject:From:Message-Id:Date; b=eiwA8wZAACzU+fOs1ezH06OSUmYXh4emYwfD6Jj6jeRcpI2kkKxJ4e0I4shqKC44i81Jk+IzvMWNpowXUcsYwP9D7dWU2/5DBmvOSRfEa1CtrF9bAdiXsN9LqjlBDT3lkwIwgNTiusrIEjQ/ur7H/pPR8MxIz3sbp3pYuKoSGhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWoDN2VN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWoDN2VN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DEBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769578433;
	bh=hArquLioiScko9UVqUkzHl/1kxs6F9LF3VPRyGtWZNM=;
	h=To:Subject:From:Date:From;
	b=tWoDN2VN0FSyCeOiAQg4popkDLYoGRMSmCh7IenFEMUWivCpVtgUqOdeN51EiQo7T
	 LWeQVLfSn8D23ckJcfH5L/af0HW54QSHtGvrdZGSwyO66gOxCr6vlCDcs3cNSnJOhG
	 yux6KY5wlF6jcr1y3veIA2grElDoIKTV4o1ff9pNvwT+t9z3HcSbLnL+tnx0gHQshv
	 KkHdf4/bAZoSh15KrbJAGwf4cBUYZawmPq01wlrKkZ1IS8oOssHZJ116oKBFS+7jgS
	 HB5Xib+4AtGl+fQQ/KHNwnHeVDhP1UyChGpCEfkMXyvweBYDKoH4cAOpibstwRhIfC
	 Qhqw1mgZD05TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C796D35672
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957843361.22555.14476960647667013665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a521b72ff19aa908085c1d0d52a8f7316d402ccf9eefe75c4fd9bc0354c927
Date: Wed, 28 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769578433

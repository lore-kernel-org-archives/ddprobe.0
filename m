Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1F7319600
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766661234; cv=none; b=k0hJBsdC/QkRnSWQB0cpbQGf//SEjAv5Y27VCPWt6HGWnUAClPPvdfubo0SHQP0V0KDuOhnVaoF1ZrkgsCJri7HI7wVlLffAHQaBWNBzsY2NAIZ6G3TrvPHdhDkOw7nCTF/z1SiLgLsVEQLbNtYHKu/aIQBK6KA6lIALQDvlg4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766661234; c=relaxed/simple;
	bh=fQCVcztx2/q6fp04iht1IQErykeVxinKzC3dO9YD3Q4=;
	h=To:Subject:From:Message-Id:Date; b=pSMZzq7Pb11RkVFvI8jla/orWKM0rWBSQ5MjVCkM3Actz0ztgQhrYLCvLwXDCXVIvOKL1SYqpfOptaopE+5ki/TnuyCUOczpAwkXKBFUNSvzv67Jm2uvY/tng0e2OIsDFxCpnDc3wgcUOQ4e0mDPFZsnlLFVjMtes6WcM+8O6R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xsnx1lVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xsnx1lVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E0AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766661233;
	bh=fQCVcztx2/q6fp04iht1IQErykeVxinKzC3dO9YD3Q4=;
	h=To:Subject:From:Date:From;
	b=Xsnx1lVFlx2sAe5DiKF7NZ5Q6G9GaCji1AAXIl1FR6QzHZJ66ZzrL+/uc0kUyxDC7
	 foQQnzQ1MWbIRrFK+5jwtRsfRScysTDt01qBf+QqVG+P71My7hWIUhyhHf+nMlC8ty
	 NoUAw9L4Lhp5mQ2tujGpmaWGQ/PzStCkyuoopFhvy7zNZxNyQHpE7xGOrKVezsyb/D
	 qLDq2x1kzBPlqg4yY9kYIoEvZ/jAhP1xV5iUMFzeUqez6jnn5nceVq1A4gt37h7dOg
	 k+wsml4i5MRSVgSt6PZ31M+5xKQX6UMQzDqvJ41WRFgrRLKtLVzhsUCv4hnqi4DT1/
	 QmFpNG/cgxRMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9AE7AD49
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666123357.7480.1166506841656343378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349226ed63b13223860a3a682b6516feca7d344c5c63c9714c27661d966ca584
Date: Thu, 25 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766661233

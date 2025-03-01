Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9D31B85EE
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740814134; cv=none; b=HM88K9f/M87i9iTY8XHbrisnefEWazGmFGJx+t4/CqfpIaHTvDeYuw0JOFOwxezjSKCIHIhyGwAIzFxbnrDmvIsRVNzkD2SWC1Z2vnLWZ8gmgZwyQ3C+R0RaFTQ2nNAC6ZkiH1vjKyZ/IpzaUQjcmf+Ld2WQijHqfcvGy3z3a1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740814134; c=relaxed/simple;
	bh=rOQCmA4eMU6jOt/NAX2+7ryDflEwbgAD3lW3QsTPceA=;
	h=To:Subject:From:Message-Id:Date; b=f4rKNFgj9PDslPo//9mEpHztf128yaSzBkqtqJPU5dwB7Y8osuIWjC2jkZijDokVOPC+RhsrwTd0TBZ9o9qi5hRDItGkh4OOCdGJlymtf4NQwQjfysHdLePkZQ6UdU+PX+2uiMfHekj8VJcnwIyPjYsxQuyIzB5J/fJxEaWqn7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCv33Y9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCv33Y9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B16C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740814133;
	bh=rOQCmA4eMU6jOt/NAX2+7ryDflEwbgAD3lW3QsTPceA=;
	h=To:Subject:From:Date:From;
	b=eCv33Y9LF7ACq4DyXvP2UCgo+qUDOqksnvo6ktCqlQ63VJUvfa5R3orv0DyONvFTR
	 iHBI/Rhnl2eqXS/x4rLJdEzBBuAR1pC0K9nZ/4TaDuAsPZnbQolIlStQBEy2ajptpJ
	 Tm76dd1fvI/kWMQzTqv3C0fiSsu7xo7pZyehxUCcGPbne+7KRm2r6SLx7Mp3GPqzSm
	 9qy2SNIjT6E6lMXXGYkzYJzoR6k8+XcMwTzYi8kot2/AS+sXROsP9AYtvdJ7gnr8Kl
	 ZZZQogUED/5wlDxuywcgW+Yl76DP/7NyfCFcpD1lQGV9W9uzgF+CsTZhOUOeYtU2mL
	 PnOba7WeD8kcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4B0C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081413361.30997.8587277832257939706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8d982ca907f7f50bb76ba7c9adedf9f476396bd0181a649a181a25c0164433
Date: Sat, 01 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740814133

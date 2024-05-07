Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5034213C808
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715069543; cv=none; b=eBJgCVnLoxed+3NAfe+eA048S1TUpHUXp79oXGY0Nd7gBbqQi0/sAKXSjpyrqp83/g0ZAyS1QEUTMYlFQJYEw6DgtJ2kg8sTuLMYwFZh8k7suC0FXPKY6FVwRJ4DAWrIuAi/wvJDdU+AC+buXzeuldMIdwqwH2guG1JHMLk5yG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715069543; c=relaxed/simple;
	bh=6rty0FOxF1Fes27CWFTQiiqnEFguk77lcY35Tf2iBjw=;
	h=To:Subject:From:Message-Id:Date; b=gpddnN6Yi/J3mV6srfnXUEuZ/p4dBUs6mYkJNxR7utcejk9i0DWoOJ8VYTkKmDKC/w33svmWoh5TaZtg9Pd1tLVJfztr5Lj5TQMBYq7u8+WKaGViDSFLK6t/uN/2V3gzKUsgIP0myYmDYShtM/HcvvdKqdaPxk5gD5wbsdJzdic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hY2Boz69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hY2Boz69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8C3C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715069542;
	bh=6rty0FOxF1Fes27CWFTQiiqnEFguk77lcY35Tf2iBjw=;
	h=To:Subject:From:Date:From;
	b=hY2Boz69dCPKq/XgmAdZnA8WskvKAlnyn14C1ehy3WeoVR4KN+okmheX5CyTGoMFq
	 yMVIfY6Msw4gIicmp7bX54yl+cZEuES/ndsszZbY2ZPJukO08s9a96eg/TIppfh9IT
	 fM/BtvS5SyfhgPMtM9PZ1qzxmxqxW3fRIaE/NaCxiMoLYkMZ8Z0Dj1vBKiMyanrbIv
	 JYMcpfpNApMJPVe0GMYLDUN2gB/onuLK78bTXuhpYD+63hfb2Ok0JLd4nGdQq0mPYB
	 0o64ZyVHTtdq8i3N/b+DbRJJAOHwcGNrIyT3IohYdYNE4WOHkryZFzfvRkn8GtfSBI
	 IBHwSo5ZDIX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC8DC25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171506954276.9443.14766074397885030565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86936550fbab2c4a29e111f473b54cd8620e3b572f00906a91002d716f6a889a
Date: Tue, 07 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715069542

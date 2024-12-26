Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37899182D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735176954; cv=none; b=dfV2dR0e+6doL1ndQT4PyRaGlZv71/biRxbRkFLmxIydB0B5R1oH9MlxKo+43CsEUtMOj6FNjcvyjz5fCmEIwNRJJSGOeyTSFgWKBuoE04ZYfM8agixWdNXtP/gb/yuS/3iugqGv9PCZkGiq+L19Dj0fMwfrE78jyBJfwSBMFoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735176954; c=relaxed/simple;
	bh=OXzLE9MUrUqH4gQJojC9/vz1M5jnhuOp6yyaoNcnDp8=;
	h=To:Subject:From:Message-Id:Date; b=RiYeqU4ZSJ30KAn9IaQWcpbVLA4LpQjo/1VPuP4OssrZp2gsSbmBo1mM22+0K2EzuvCySQOyur1g/CplifzEmp2oDLC/jJ5wdWYhRmbd+86NkCpHuTm3oQpuULGMZD2PJcq1hk4sCgudXaeVdsSDYHN5F6WIUDHD0lbyrVMsZ+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFhI6mMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFhI6mMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31CAC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735176953;
	bh=OXzLE9MUrUqH4gQJojC9/vz1M5jnhuOp6yyaoNcnDp8=;
	h=To:Subject:From:Date:From;
	b=oFhI6mMkDNSWp0HMFi3k6nsENA5NaQq9ttNSESVoqWD6PMxUSiIvHwkv7yzb+21pJ
	 AOlXFzQZtQP6/9avrd4okiwWeGdg23RtqDtft1etWKLu9/9MC5em5En/5+3/2E6LIA
	 pWWgHvOewKhxiAca0wR/HyU0b0JOnJCnKhCwYnaFtFfwpigmEAZmIQRtU/qnbcRjwa
	 xiScq1yiUbE9pHLCPOZnB47AGD2NJQILlSJEYPAxkBuO2U1QpQYc4Af48MLuLBdAzU
	 3SgGLDkAajAfkjJIydjLcI+d2FeGmZVtSkD4fpVkYaGSLwGSNKJOT6RH3JXOD1hk5a
	 Ljzcji0+faumw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1C1E7718E
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173517695362.4157.18399922074062674965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7421f5d0d453b7f92356903ee6c919af5d43b2e47145899888162cdc465c36
Date: Thu, 26 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735176953

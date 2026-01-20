Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F43A183CC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768873434; cv=none; b=h3KtifM9U3QUxUdM8J3C0QSAgZSl8rXYB0wTtnenqHCJFJkVS1GErwHZBJnkWuHRAS5TA4PdTeZG/8fF07ZdWWM8sKpay42+p4m0E+fZ4N+2eXxdgMQc1QpV7rroNVsY1ScJ5J0GugWvAX0LyTfneGhUF4MdfCp/YvtzEVXEyiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768873434; c=relaxed/simple;
	bh=KSmwr39EzghVE+EoDLiO/2ldHFTK3YVdBtYZtMXVAwk=;
	h=To:Subject:From:Message-Id:Date; b=mpkfLz0PKPI0f0rgiD6col2dxNl8Ia23xHQEBWgDhGjxgC8vpbRWK6DgCzkfZ7mKNLU3ThY/oGFe2M2YQI2yPQaxXgxee50XxtwaPgbBAXaOWw1iC5N2dAn19K6Bw+qGeFFBurnFtYiskmJmNj1bFcCsfC5AZbEc1sngPcnDqpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDWgjxAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDWgjxAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E85C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768873433;
	bh=KSmwr39EzghVE+EoDLiO/2ldHFTK3YVdBtYZtMXVAwk=;
	h=To:Subject:From:Date:From;
	b=rDWgjxANLIwWvaOTaJBDf5cPdkpMFX825+vIT5ghmdDSq2MNP4dchEm91Vc6R0gfR
	 hhTuAII//l9gfU2SyPCjyKrqY6olExK4BtAaAh4uTcuiZMI+Kt8qOJZ6L5AINl7ybP
	 o9fiwAHa5pLGHbGFCsZXMEeYuDuUdKx8CwmwbNKuUiSc04ek1FShJ1ay0K3MexLexB
	 7KYMVXSvhtZpa1d6tRHr0YLhMFoMcfaTGT8jnb6wd/05Hlm8OVxi5u6Ce+ZBSAvOuc
	 ZF7zvcVpglenI9UvpesLLhns2Ad/yzg7+Bnzvn/tOxy0W48hp42vbvccGJH1CXPq1A
	 56YHrzd+O745Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E8D2ECFD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887343358.8307.1026836653139580066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7644bb490778e29ee6b341717e2dfc99ed16529b7d07ad1c1423ec017e9d8a5e
Date: Tue, 20 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768873433

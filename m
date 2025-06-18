Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372AF136A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249794; cv=none; b=KL6ay2Vy5w4e/WDPSrepXmVDdaaLGKTOtLnAzzoa9gjo5PVvAbG2n/VIhCHX6aVPwLQqG+ccxsHmLStswObu3Q/H/BAUyL1OYpnZ58/0K3MNC9eaNSQGrt9kY4x4Z+mj3DtoWG6hAJkdzvBBS2wQX2rS920FPtS717vB00e3uLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249794; c=relaxed/simple;
	bh=vD5eRnIM02CpkLmhT17eXoM3nQZoY+AmW1fHuURm2M4=;
	h=To:Subject:From:Message-Id:Date; b=ncJDEdLLNpVXShH29Iot8EQyuHCAVpQrir8KL2UTXeY7rX8t8hFnHNIJf0A6P2z0eYKAVdc3DA5XMJpwYXIpRfBpIlXodSZTEOh+K1OpcKK9rmnT0Bj1ZXZTc6xqb8mbwCwbb1q72zfwZ9flRhdg3vUs7VPaOiZMNb+/ke/WdB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tpt6Oazr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tpt6Oazr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A847AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750249793;
	bh=vD5eRnIM02CpkLmhT17eXoM3nQZoY+AmW1fHuURm2M4=;
	h=To:Subject:From:Date:From;
	b=Tpt6Oazr3jA1gOnCJCVEYpEQ96YkJM1FXb2aDGylCDSLcMdHF1JFpiukl73Mp2icC
	 uagrk+SxxXPRVdBg1R0Cw+rZjkFZf+XIHTamk8zmbYEw2+KnFLvtz8UNgIlvyzTwhV
	 4lsy+u915bw7Go6DSLN1WFxch4UnsAkFYuiAy6ywVaXSct27Rc0s8vFeePg8KrnZgN
	 zVN6u3PYoxwlzj5+SN/22o3kf0li4Oz4XQVLpIarZleJeWMJ/NnGH6V5I6SrjB2oWA
	 gpq1Oz7NX405BDQL/FXETVre8zPQD5QzPcR4okkSn+ihOvPvuebOsiojo1T7qSBIlP
	 hhfh7qY/8b78g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242EC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024979359.21788.458864121770932810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc169ad11b4a9f37b2de2dfc796af9be8663f61f356ba85541d2fb686aa88685
Date: Wed, 18 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750249793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F61AC431
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727346954; cv=none; b=R+5ZBuKmta6j8gMAEXtO/CP/Ue+K/Q3WifqbYAuBTlOPcpLyFUIZhXnxxucwrl8+WRlyPGj87mtlAR5fyqCCrEBJzQmsw5yCoRZu68AVGHuSO5xnpl0dBZzvFturgOXXykOxIty1iRD7OUMAt0gec4a8Y7jEQB+zZP0+aT6ZYVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727346954; c=relaxed/simple;
	bh=EGNh9yxFXbbkYZlz9al69JIy1k9Jy2rt/UhBMvMIuNc=;
	h=To:Subject:From:Message-Id:Date; b=nIGQVbaASK6izGwYUgGBFDuEq1KWyZ1XvHtqTsVcDtkDeAax6N+XpfNmRJ/09xORBOg0pFnsyal/G6MnfzI8JvjzNwjNmd/7MbxsPeGb8Zw953OqH/yXU2/LJrFIq/wf+rrcAa39NBcz8M+inIND58qUUogXxA2awbCmbE9uH4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgbFmCC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgbFmCC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DEC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727346953;
	bh=EGNh9yxFXbbkYZlz9al69JIy1k9Jy2rt/UhBMvMIuNc=;
	h=To:Subject:From:Date:From;
	b=FgbFmCC9gDHJcZ7AAFUq3d1USccOpnpfYfGiYj5drn498kDd4F2PPQhbYUKnS+nuM
	 veyp/9RrRy7lH9OuVD5dMERTMG6vknfb1+6z0VwB7euq0WO6arNRQd58MI6Nx9StS8
	 Vr836L61sfsk/a+NqPoK2cwJIBGjJZT3mo4T+s4dgd1+a6IrRiHpnec80pbJYE5jgv
	 7XXC83WI/u6wWH2BnSDZTXNvFWZ7MXxoqlwOT0K1AtlTzMULyDGjoRDPODliJcGtyH
	 28ddyuZqO5vtt4TZYhsRPl4xFV9FaOpXR8fzPBoayM0Wp8GBdiulIE113AS19Fzabr
	 zjocs/s0x7E7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961B5CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734695360.14079.7909020481079605076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf595922981142132f2578f6b549397b0afc9ccc539daf297eb80a17e4929de2
Date: Thu, 26 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727346953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FA6225768
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757564994; cv=none; b=nNFFF9lrxlvyLqq/oV6S6D9In72X/d3qRVK0S7RK5u6qa3asDnju0BakIqFHj/i2RL0kGPMV+B5Kzz0PsZ5Pjv7XH9u6oyuzTWNXeRtO27bwt2yNEo4qqTiRXecA+yeTAbAp0eSZmSGqHbD0KwV2Jyry1sdS+aqZBnr/E8ffVpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757564994; c=relaxed/simple;
	bh=6xyFc4bv1Xc1EGvNnYuYzB+u0uH1t4SS3ipj1alnbHk=;
	h=To:Subject:From:Message-Id:Date; b=rL2sERQVj82emLV9ZpK4QvwURXOF5aaoE/MOcj1HmVc05Tlz6LIkdROdy+Ka/zJN6uKdN/F+bU6da8nmWaIbPNeSqv4tVvZ/s0sLPGG8rLBe9Egvcs+CeoU8PEvFbOY1B2TYzDZtaRRvx9acaj+TjNPEoPbWrMH2nJyjNkODlSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqNILxEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqNILxEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08ECC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757564993;
	bh=6xyFc4bv1Xc1EGvNnYuYzB+u0uH1t4SS3ipj1alnbHk=;
	h=To:Subject:From:Date:From;
	b=RqNILxEz0WkOHbDGyu/pIBGQOJzLKuA3U6IgdcHSfKKC00d0294cclaDaE22rZ7kY
	 iwm9ZcGs3Xpzhw0yrr1gymMUBIrW315LvGJN/Lc52+aGvD5Zr+hADNx9wRyDsnor8c
	 vHLhsTICGx0DXTxer1HUpZ/wKOAacjMtTn9uaybGtEQ0HK7pbuwv4Xppgk4vDnrcDg
	 brXSmvIx1V5qWn3qxL7uG1glH4XrZTNYH54M6iGZiK6hAGwS0VTiH4jnoy89AcitTb
	 Wfnh5ikFvxCLWtrPg1buo1SrNSpST3fU+51zPe5PC/Xhj2S8xuk4p74775oeGhR6tM
	 JrHOFksrazzGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A4CAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756499357.6849.12431138054518275367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5a2c79fb8bb85f1d71429c1624a85f19fa0b7f97d8f9307f89944ba08a69be
Date: Thu, 11 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757564993

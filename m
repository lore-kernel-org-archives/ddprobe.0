Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10323009CB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777069654; cv=none; b=nAbYVbu3xVeS1OXYHpge2jUFP5IJ83RkwOZ8kJ9VVd0KY/2g4RRx16ad2z3HvabFW3/jlRhxhCCSRZLDiZOjAR1PtTxF+v3IDYJyKh+Y5GUgAtkKe264XppWiJvLaQx3ddhe9smoL49pCmstIdPUPKJ+DAFEtMl4EG4vRr1/jbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777069654; c=relaxed/simple;
	bh=I2WSAI1WXuSFvHTK5JkESmqixDCVLCOxhMAoAUIEAc0=;
	h=To:Subject:From:Message-Id:Date; b=h+O1dhZBH+zp+kIysX67wS2WPHBFnpp3l9cTlc3JHou2u+I2vqKvB3vrn5rTWPSbCLamy9zOGqn3gDBF/rI3iKffUcLLU5gPtoUPoKBnWssh7NHUYU+8a4PJsBLTeix3FCVfz8xZJSOcZfy9ahrEg5ZENdQMRvMZYE4rOAQV6ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJmu8Z6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJmu8Z6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC209C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777069653;
	bh=I2WSAI1WXuSFvHTK5JkESmqixDCVLCOxhMAoAUIEAc0=;
	h=To:Subject:From:Date:From;
	b=GJmu8Z6bcJBZpsB9N7NiggKygnZFJu5Oln3WmsmsD6hlLomKpORA01tx/L8OLO8eg
	 3bRJB5I5XiJwpUr04K47HMJpgGibeQrgqMhGh52ro3iyJLiAGxOAZ307eulTQoVgA5
	 t/MMr5YqZAUqyZUKGMhhh1Rg/F71Wb7gY2W5LGoqYQrQsus+cRZ/G1Xms59k/qTbC6
	 w579lYr+XisLfWYeOjQ6crN1PJyt5XFoRJtpkqzG2137ezXTPVR4D6eCGHypLsyBPq
	 1WiNVsalTvFPPmyDxQN0xYjfJ4XuiBZE8UUPUFMeAdfmaEMhMa+0kP+givJbxhibPN
	 fjk0HdLhxdGFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB0FF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706965368.27359.13911103205689804291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a596d08cd1344a2ff73582fb8d4739e6c21e8e07a65beb254e99948dfc56129
Date: Fri, 24 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777069653

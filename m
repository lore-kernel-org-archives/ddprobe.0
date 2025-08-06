Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC4714D283
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754524194; cv=none; b=kea2rmlnvo31mIyve2ulJCuzn1mOaOAV5YqzEHQlKWruiwafPwCyUWBa9gKE5028emMWcr/Abuh3Qq5Z/jHjlidfqYEuySParXgI8tjslGeCfrhyT4WJxMIinJAgdbJkzTdXRoUJbuxVPs6hnfVusR0aIb7/7THlhkYG/Mv3Qvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754524194; c=relaxed/simple;
	bh=I6ZTgaHMYmwHhlVp7VEE7iNLog+5gZr0hpzLVODiE34=;
	h=To:Subject:From:Message-Id:Date; b=TLWZiGHVFTOUWF40OnS6l5K8gNLI0FYrdzwf0agXF0r8pSdblJVKoUOmMddf8G19AeUcTokJwv33EKvP4Ov1EzWfjPGMcx+dqGx2gvWxk1RopaBWsEJo9YSaUOCcn/HJow05tOGSe4EHS+kSTcGVJBSz1/dDqw5H3baO4FrLLU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAkOYCIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAkOYCIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51DCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754524193;
	bh=I6ZTgaHMYmwHhlVp7VEE7iNLog+5gZr0hpzLVODiE34=;
	h=To:Subject:From:Date:From;
	b=AAkOYCIW0R3eG/p8IyS62/ZJq2yqHGIlnSiKjcCzXR5RNFIih0rFXrBemfQS4ja/b
	 0IsOQfQpZ1ViMHswinYyVLKGnnMkmb/fTshovGSBCHk3OOuIw7bQXmGV3Yz7Nt5f+S
	 Lqm3jjn2zx9UeUtK1EM/fxx7oLdhp264XrEyootuXBBKRYPSNH1ApoUBCpps7IYjJn
	 PCpZREg/6z65mIWr4Ijco2T0cB0DBjtC2sIGs+2HYSYgO+Kvp2CUtPkZ5SJny7SYWk
	 XE0MqDlhu6qcexP4WEILyKfp2gmq4bW7C0Zfu2SPYXJoBKE9k9azr364SM0DpJHXG1
	 pSDJkyyKmnggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A02C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452419358.9418.13783087430607439857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33e767d5b4b3c6088d72a2b59abf3fd7d9712aa18fab8cdd4dc03cefb5b9332
Date: Wed, 06 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754524193

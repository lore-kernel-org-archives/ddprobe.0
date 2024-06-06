Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FD7C13C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717648643; cv=none; b=mTjkojrweyoPojbujZxEZrEMkN5Idv1Jnr8OgI7Rr1/x6jHfECA4SN4MadS4YvlCEawR0mXwIFhNiAiBq6J2UAL9FkyQvf5y/bumBD6HyLEDAprJJSlNmZ2rLxkLkrXQRVUOL55eO9Kx83iHmhhPJwO6DXfAEDtMemssfv1Unc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717648643; c=relaxed/simple;
	bh=HXcZzVCLMScYd+chWeyyOMn3t7yMPPfjumfutZZrt48=;
	h=To:Subject:From:Message-Id:Date; b=EMft22SV7b625I8oUdaQzptm/EHiCmO6oQzDXDaZpOoks39p2m3j8EOAejhpR9/EpmjaNujCGq43ZSur/u4ZQaa/earZtK8WiV9TquKUC0NH963uHMvfcFYeq3SHOkKJWtwtxSnZ6zpYQO0/A5BIHMUoVuv7Rs0hjnSrPoEzsTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkaufXSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkaufXSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E59C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717648642;
	bh=HXcZzVCLMScYd+chWeyyOMn3t7yMPPfjumfutZZrt48=;
	h=To:Subject:From:Date:From;
	b=FkaufXSKc+d/Fy92DMCkcV1EVXa8XPMQjneBAqqAF5z6zH33Yh2WGQwpE9qB30OK4
	 LAyMh/RFziwy6xgTht7Tr8oPKSfvxLJsc7A3xGmmd2p+IVU0QhaCfZk0CH+qq1NK1b
	 Q24GbUca8CqhM0FqdKF+iYHMgd/upAAoJD5+M7Rx/mW5tEP9FV706kb3IAEqPyfvRE
	 Bp8OzokPqq++A+tL9EW3AiyykBs89dVZAs5wsGzgqW7zkPENZczLt4E0WGgFQlO93X
	 qLrev2n2yIbcXXJH2v5LivQewcr0ccm0TUkNIfA/7S9EpF4x7h8rup9TEgVuMTVmBp
	 p9+CBlkSQGNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC63C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764864279.10714.11678821695971467489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da190ac39c4ea1d7977f255aeb9ada0d55f594354807d772f7fbc1120118bd1b
Date: Thu, 06 Jun 2024 04:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717648642

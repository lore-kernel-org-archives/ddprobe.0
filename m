Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D62F0C6E
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758581394; cv=none; b=OqT7ST9lqq4XQar51Ubk058sQbBHpFiUXi/6/0lCUPoknYirXkCNKmGcuAzWkThJqDllD+nK9aECd/xw4Pn/aX/CS+/GlRN3QzMc+y+m2/c0XYqXCWmpEjI4pL7V0BF33eXBJRaCs6QS6ujQtM4kR9/SDLNYHFGCKwNqVm8VuPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758581394; c=relaxed/simple;
	bh=w7ldlv1ML660nWKjgl3G3fxc2vMW0Wm+CqJmMstWEN4=;
	h=To:Subject:From:Message-Id:Date; b=VhWLXd6UpUK/B/Ffzh/nS3hIcUkV6NAgIETGKdpcy1Ccg+zhspXjDt4GvXXm6xwu066yr03u65jXPSNGcCjNU3ankNQ+WDeYxy4jKwcqMpn7Mh2J8/WCuguImXWeX8cdBCDoQtF76/v2bTEDsr/PxpCvNePW31d6/SDxdlbaf5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ET5N2ZCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ET5N2ZCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758581393;
	bh=w7ldlv1ML660nWKjgl3G3fxc2vMW0Wm+CqJmMstWEN4=;
	h=To:Subject:From:Date:From;
	b=ET5N2ZCjHbNBAlZ6QwaZSRPhdLdvKYZkEfBpI70MeWMBQ+KjesNHqbgTDg7UEcwTW
	 5NWdUZV20oASdBpFWseBoA1yIqcUy9wBcmKrXldOd4+d1eZELsbMg2oUAV0TFLJ/mI
	 8ReGCzhzvQdWe/IyjYzh9vZEKwJ8hc7h7dxBTYzHhV3FfMLIJUnUB4ReeSZWXb1fYf
	 +2bYc2rR1D5iu/ahq2cNYCl+s74kEBMRX2Vj6zJ82EEjyUOLALeFZA6blwSykIdXtE
	 LnbxJBkDth/2ddNIy6WDNTq9jmsWXyruvGLnc0mw493ISAmssNf7CgSMtzfE3nB077
	 cKoJ3kOuyCQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D3CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858139360.30148.1440627429939101570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b65d4821f49de574093d8673d5d6229b3ff33026c83b99cdaaf3685cd7a93bc
Date: Mon, 22 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758581393

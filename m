Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB112FFF99
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778964034; cv=none; b=kluF3gWdNeViEe7s58+crH5UADE10iqOGI1ujqO4FofhuzR00XZtMYnlqhu7O9Qgba/fdmV+2kIDudGGigMdrlGOp6foThbb8byqU4dJ2PzAvKYEj1KEVMHaqBBgn+vjiH/GF1ChJBlVbWdw3ma+h/WSOVc4ST8CHH8QoBwE1lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778964034; c=relaxed/simple;
	bh=FWR9FnculUTlmKjepNxP5XkTlR9zUzhkKR6LxM292KA=;
	h=To:Subject:From:Message-Id:Date; b=XN8b85yjCjPh9t1SdxNGXqheianNsE8IcwtW/EkR6gmnejpxZ85upiGLMUVz4/qIuMWLTum6/BE9BKfs4gSys2PvpRKGBt8u/MSTExwaPd3BT8vHJMS9gtiTl9lkMHETBFp1ech2JzMBukKubIjSKQ+nBl6c/dLLD2TRtErLpnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYxrv28K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYxrv28K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AE3C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778964033;
	bh=FWR9FnculUTlmKjepNxP5XkTlR9zUzhkKR6LxM292KA=;
	h=To:Subject:From:Date:From;
	b=WYxrv28KgfQv+Bk+Gkt4PQb8kN9QH9ICXgjygZWTGL70MoDJ54gBh16csUmziJp2R
	 /mRc9V1VJydv8Xbh9+w5JCj787KwH0kjSo1PXcuCEvt38w1QbzkJ2u9Mk2aa8ULvi+
	 Ktjg/5Q3cYDGgyaAeK+SM1+EU4CHD5q9Cm5pCNgmD2jykp4IUkIi+9AxDcmX9nRAod
	 tnnvU6mcUNHAbuMY9jNF2LoDJ/b4K/bw+f8HCMsgTV/YgxyyRdiyp8e8+xpsPq1O0V
	 UBekb8YF4T+VQKe4medPqVT9bobITUWSbIplm5l95v851/ORBfZXfl1z9M+ruLtRxS
	 oR1i4BIr8jMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E20CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896403371.28932.8088945840241303061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce5e70734a8026dc5f288c36bd18e76c396afcfe3812325fd4f08864bc96625
Date: Sat, 16 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778964033

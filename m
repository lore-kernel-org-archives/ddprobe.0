Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A002BDC2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752860994; cv=none; b=hFBiHYEjdIrwV/yH+miTk34pPpZhTv06sMLHrNNSjyk4dg/5IQKstuw1WoHbjbFsOngQWr65A1AbPCUot2xsA/ZN1dJohfPpLe/8IDZiAP3HuppJX0B1xTsTLtBdmVbb8J9QeH6cx35jfco6Js9QUgkbF5/8b378XR2JYeRXwE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752860994; c=relaxed/simple;
	bh=SLGb9a+gV2pfdUIV1A0oragdjWhx21eQHDLi1jYEriY=;
	h=To:Subject:From:Message-Id:Date; b=PxIcoxc0C0wu37IXu+dpUr0935U3fZ0IkWMVpLOwfbudECqj+3HxqwEX9SZeqPZ2B+pIbsKB/MvsipCR6HQ97cB4QnALvJMFDUN2zX8qhiCIXXSmHZ840UGVisO44uB0ie8e4eviUg/lupW2fsw6IUFZ5IK3ZsUndhh7WftYR5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6QGZIPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6QGZIPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E35C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752860993;
	bh=SLGb9a+gV2pfdUIV1A0oragdjWhx21eQHDLi1jYEriY=;
	h=To:Subject:From:Date:From;
	b=B6QGZIPsBYdMy/Ro/xuWUDqQbhctxkol+Pnak00e+lka/TjlunW0fTUTH0nCH5vEv
	 ZDpkko2S12wS17Xts8LoLt8fIOFNdH+oPoyJtSaUMLWuFXTo5Ixuu6styuUR8xif5G
	 lGFX4ItHEc9zf7Ao4KrJjfWjWXWlWeNaarBl1ixPqkXRz6rLqZ0dKQ5BJoG5Gu8yDO
	 HlfvhW975BotB5QgK70nd9Kj9hfYZtJ6uL9NtbKoE+lwPT82x9BgbepbtJFrWN6QTR
	 e5w7pM/DjtHlWKNtg21WaRTbM3fJp3TMWLEdlM9bthxVRwGsdrBkJP0LwZG8qtVFwQ
	 RdhnPGIMPf3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD4C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286099359.15669.6776419171211095337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab466e6c9abbb3a57c6ff0c1b6809ef3e597b044d4d40261d1e852fe4739936f
Date: Fri, 18 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752860993

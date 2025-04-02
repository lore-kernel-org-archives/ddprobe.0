Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F44B1F3B82
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743634794; cv=none; b=V4el818+UnTscPDaDZc9H1tI2dLQ1ZgxLGag47lsR6GOKYTwDUsc3IRLKF24HKChPLsgr5QX5bDzifJSB2zG6kSE1gGC8ThVs3Yn6GLizopM0upoCCRVQE/t7L2aOJpWVYTbKPFx7ORuBpxdwWtPMoZXSqH5Wc4Uo76dt6Tg+h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743634794; c=relaxed/simple;
	bh=tSIP0ijyaAx9Am19dCPX5VpNj17XcemhCHamwjrrVP8=;
	h=To:Subject:From:Message-Id:Date; b=Nev+X3W8LAV5RKElRvcyD2PNbSYm/TjvoF992lr2GSjFQeKSiCT65bKvL2bueAlxP3SKWuHAEytGNtpH4F5n/VEh45E68JNLkUEDdsRlqi2uF830mi7JonoacXiX+PtnRiEEL2Aweu3JSYNWlsO8qja5Jh0rWsKBEBXMM4mCdZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW8pJk4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CW8pJk4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B354DC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743634793;
	bh=tSIP0ijyaAx9Am19dCPX5VpNj17XcemhCHamwjrrVP8=;
	h=To:Subject:From:Date:From;
	b=CW8pJk4xyyYItuTGNcgDNfR9tmcq06HOqX4sfQas4R0LzJewXFajj1isBuJPXUHiG
	 hE7YS8V+clGdtFWLMAVnj8OYwTGiytTAbVk5rV8JJp8G18Gkl1heaCEz8rGkpp73l1
	 TIPmWCgtjNEJxNqlm4sR1VyoQlm1DLJX/lNIeO9mTgLKVCt609xeGzp8yTWhjoDSSO
	 Poblfyn5e/UX3dpL897TbOVZAmCZQgsEBlPE23gKsDQI/JKNdDeYevjpXMhDydRbTt
	 I3SdI0Lmc7s3lC0BE57CAScJwjyOX9ieZD4hTy7Blnd6WsH2YbSibiFERL2KIZgv9h
	 Aeu9xNcCw/5Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E391C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363479360.10283.6878926339549756485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1232325243d617edbd12ace175cf9d7568e0ac4a2fd0519a6fb371016fc3b0
Date: Wed, 02 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743634793

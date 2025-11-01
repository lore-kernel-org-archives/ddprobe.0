Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24ED314AD20
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762004994; cv=none; b=liBumOki02Qgy+vItGUeGwTtg0frNaLAhoTapGiLWdVsOlV1M8OcXi+R+zSMQp9+NTEvWJd8FScVtQgYeHy+C0/wTpjs2xaMed59e9i0bztt8dSsw4eDsuR5JT+5DbaAaYEl6QbHzBKwCQVebXnkbGe+Mekq1UwS4MoZhrY8E/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762004994; c=relaxed/simple;
	bh=GzTnwFYw7iGodl/7W8h02VPMefekc41QlcrSij0ltu8=;
	h=To:Subject:From:Message-Id:Date; b=CR7rixTMqGKukfgIj/9pOaP1aOZkbI9zh7Supa1jtBXp6d9vEQF0sFze7HD+CDUShjYJ2JvHdmO8J7PZCOomuK8wNh6kiJVbN3YKEytRtVfGyuipt4gFyYOxN/QzViuZmeOkb+R2p9CzKOJGi+ThM4hpbRcaEKgzUiKnhSvOGyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXAFXPtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXAFXPtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E24C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762004993;
	bh=GzTnwFYw7iGodl/7W8h02VPMefekc41QlcrSij0ltu8=;
	h=To:Subject:From:Date:From;
	b=FXAFXPtPj84cXRG5bHibry759BVRwgoRZhaMqMdCwbLvbSVGoG+ifTCJVO8jq9PYH
	 3065W68KxKgYKWC2BecN9WivrthJUPk8MwPNFux6/MzziGfong6TRNIfkMJ33Ynvm8
	 qeuCkxzowInwNGhYruqV5jyRnMMTFCmIvXu/TVjkbcAJYnQ0xNRhCrsPbEQIgkG16k
	 Y41y+H244MN19LmqlCOepJXJCcgPvyTO7naV24Lm2Pt5Y52rwVe46b8omdRmFXO0Oq
	 Jlq4bipNX4O6u7upD2ceL3zgTRdY3kgZ8wvb/h3aoaaWshVTxYk82bYsCbvb6+dld8
	 Wmp6vKQT2DfkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940FACCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200499359.26775.16812080316716071686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da311b7e5e600997263c03975abdf63a13fdd34ad363240ba1373f80150a9a93
Date: Sat, 01 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762004993

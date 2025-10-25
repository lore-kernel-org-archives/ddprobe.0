Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F60335B12C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761380394; cv=none; b=oI1BOtwmCsLLIIWVsLcXodOsksqVwq9eFFGm/h/au4zOKc+LMRQV2hp8dejlWxH9rTZAih+YRbbZ2hLYz1dV8+WBk4eFqMPp8IpPka6ahI+M3aFT/0MPyUzY/uZejjrlRTuoMlXm/PLRp8vVR8kbvKFD1CqiURkH/2+W5dkTVLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761380394; c=relaxed/simple;
	bh=tdsWtw4RmzE2EXcrekn6vIqulGFaLUzhoPy9F2E1bww=;
	h=To:Subject:From:Message-Id:Date; b=NSQGW3rwzEVjSAOOkDUso/6AcvxyNskWqg94CYyvoTvh3WVQnfeJe3sABPKdZ+xVSPVxUX0jJPPr3J1NYiorA+BPAgNSMOPoTwC1EPEVJ5a0bZCoGTZwiJb9rYTVugZB6vVzmuTiPQEBnNDWGpIq0sWl8XqZ9vmC5jVMqdoNX2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy5Vx0qJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy5Vx0qJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9D2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761380393;
	bh=tdsWtw4RmzE2EXcrekn6vIqulGFaLUzhoPy9F2E1bww=;
	h=To:Subject:From:Date:From;
	b=Sy5Vx0qJCcFdTMtoA4Hmj41wluaZ1O04wXSyRbAuVaviC+0Z6duIW2ekBA4MAu59X
	 nCcejWo8yQigAYvEp5RMYo+/Jd0BZeTFphQvSXNd8ZTG9n0CtBSC0FxZ56rJ4SsRaT
	 lcioJo1A11OkTQ3XTpsSlqXHOld8yv7S+Vgmqq25kTFHJl37UmcwDP1Vs93+q7HIIx
	 4olqjweDlIG9A4tIakTLwdEL9rd1LEfirGOq221gxp32SBXdoA3kD/EXaVKFGegVRr
	 AZXRXVwxfdxQrcC5eq6/cdKrU8NwV9vCYukqrRFllreJwlVB/FIz/vqsQg/QreOXkI
	 pIxb9RCkHJwpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA2CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138039362.2320.4125989066689136273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f283c54a243618d8301e7ad30c0152b28518dca8ae818ee793512ceb78c63f
Date: Sat, 25 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761380393

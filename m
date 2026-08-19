Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2CF397949
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787127035; cv=none; b=eCPlVfcp87pwTnShkDNHqYDN6ccooV7HztjAo5UbcYFjUtzm6dM6Agszp0ptmmd3Yb2RxEJpyeQQawlF0MNhmI24sInxun5Rl92AUY0lyPwNxJiTkKjUNbffNllAi5vvj/MKw1rb+K7OT+XB8pO4Kgr6FoFbsOHuqehe09ED7FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787127035; c=relaxed/simple;
	bh=yLvqhEXJT35LiszTBqLzI6vkA8YdIXCJ8hWumfBa6n0=;
	h=To:Subject:From:Message-Id:Date; b=qbpez+QdT3bFPC+WoHIBnnosYLxq7bYfU5pWqMj6imBQVUswe7zkIweiTn/wW/dF0UvsTBLx0YKzijjx6YmILfJmLPisLEdFSxauH5E4SunPIVoOOxEr2mva+E1r8EWejN2/YCSFmzc5MaEEcH/81vAVWIdWMlbbgtLfdELGpho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkQM2eNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkQM2eNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C26C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787127033;
	bh=yLvqhEXJT35LiszTBqLzI6vkA8YdIXCJ8hWumfBa6n0=;
	h=To:Subject:From:Date:From;
	b=CkQM2eNZ8AAJppgq4dXGbb0/fLP7ezEMICiWaUHEpswtISCHmz3yGeuAZ6KESYK/N
	 CqPhTvWSq3JSL5Sd4jQERm8rePiwfbpv1onBy9JNgPoECCCfdzhr1ZLzLbyaRkiOJc
	 j7OVU829ZEW890DEnOM51WlPH6VrxW/rX8fKaqSCL+v2s4C7QJw8MLwtA/E4RUGnPT
	 EU1BTHhcsVX/R9LJMIB5g8xRxrVvh4VccJIRi1LCmO37AmwMSdiQPsMpdnS0RZMaui
	 mBbarIdIXGEpsyzmLbY6lP94FmDYK4AdNkkW7WrjxGBxAiuHI0BgTsG7MLnTaDfaHG
	 +rL2bZ0buRbxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B807EC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712703374.11146.9108759419269814238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6fce92f6e4644a7f3b18558150d0f1f2248ed9d862bcc8ec6fcc49814ea0e4
Date: Wed, 19 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787127033

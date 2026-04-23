Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2EF2D3220
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776977854; cv=none; b=ows8kZrD8BkJI3IoCbYRZP5neypLy3B+to7AAEjNEUgNjD7Ju/Lu5e8R8GiLhEwLY/IKu6NkRoJIBroJurkJmaTwVPkmtn0VoYjO8f+SGGYJHIwm7Z4lF5I0TnD8xXVIqAPLXepQpzTGUKSZHo0gsjAPXPSQGNOGzvO1u7Jmc80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776977854; c=relaxed/simple;
	bh=KKxfYuDdHiNq1QbkH17lkljKeAcY1VDd+dbUb0CjYFI=;
	h=To:Subject:From:Message-Id:Date; b=kLaZTCbX0dpV2iof0SvrB/lYeO/eTNbgQuWlX9dEOzNQWcL7F2umsXPpMa7ircCgcQ6rOOA6HklZWSPYZPaEwngGmxbo9EwI3GbQaj79KeBCs1ymIIWDC4gOndovKJ+oU4CmdkPVaQ2RFTU7i5uebOvu5kmVHLHIXVk3j2MsI3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUOLzlgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUOLzlgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF1EC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776977853;
	bh=KKxfYuDdHiNq1QbkH17lkljKeAcY1VDd+dbUb0CjYFI=;
	h=To:Subject:From:Date:From;
	b=MUOLzlgyyzruBjmxjsr7xW38AkSEZVZfxKqdq9htQr3ncMobGdNWxsNJJt0HxiiQ4
	 dkvfQaiskW5mgSAjEDomz2QHWTkQ+gmFBwdL3CrcYkqc5LbwjDm5PAae6MX4OLeU1m
	 CWrCfoseDPHITFBLNFVufrRGJ8ulcmY6SRnDJaAtuv/34q1OXmCMnJIZoDmucRk5Q+
	 JJWxAmBUEKeYlO60gSO5k+DuzMVBj6aKtLFKznejscT+JI9YEKC/YKumBef9IdZc9F
	 nApk75aopRjcbPeJzlWuN0XcR2mZW4MncRwuj3S7qLE39WJk+5U0mkyfWjUG1uHg4S
	 MOgPpXrh+TitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D8FDEE45
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697785368.18723.16138107061283418696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373e124f8e3aeb92f0f1f620f78f577ba1c4522d5adfb6171e4836d37fb372bd
Date: Thu, 23 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776977853

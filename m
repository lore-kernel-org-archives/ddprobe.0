Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03CF3E49F6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787741435; cv=none; b=K5qZihdrRdz/HxB+2iYsUVcIeFauCiuzbT/nGY4ZGQpDuBXN9t6tfwQ1d4h2Jul2dlTIbaU2FJ+5VBBfXD6s2xMTYYXB3osXDlgnazgPrFy+TxjcW0H53IEYb5dhLzAqET2/kk/Tu8o3CtheEpQD3JdQDX/qlYk43ymMhXK234k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787741435; c=relaxed/simple;
	bh=DeZGj+mhWenBKUL2L6BKJhHVp7UHDxZ5OKM/v8z957I=;
	h=To:Subject:From:Message-Id:Date; b=LivUpbNnGlAtw0+eKoSRBRPcTYIiopiLDJSJLTU0wihyB8dIm5GOUbwjXGo4+WC9qFp/6ABmwVSkxRA4VgiTj69kOYHr9GTvH84gp2hlkQDwUFTSu4CUHbOAXegQNE8NuQaPgIQPIAvD6g5Zayuu5SzxDKko24LSTItOZrEwx1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndDSF7O7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndDSF7O7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6F4C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787741433;
	bh=DeZGj+mhWenBKUL2L6BKJhHVp7UHDxZ5OKM/v8z957I=;
	h=To:Subject:From:Date:From;
	b=ndDSF7O75vm7t1HglUZn4xs9BNxML7qmbreWF6EecpktJltujlWov1I8ZDwa/iotg
	 smtYFr1Fy2mN2xJoKak0tzBLWGjSHaveRn7XE2ZfFywGLUxwOI0PT+qjZ1Ryq/8h67
	 Iwmg68Olr0SxngAzZFbyhGEYnA+CcoOy875VPX2lFmD8B221c/TVBeIZE2Uenf/jd3
	 x7Oh8qqEfSOxF3CnU9GDTvZT/bT13u/VHJnnEvqDaGi67bW7A9govPGdZvqSTPj9VX
	 s3y6seI6HCAz3Ep+tUwyNI1oHI6SYCymY5vXQ9ta6sl8trqqtAuoMjFcT6C9fs0N8x
	 Hov2i5SIaZSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E7AC61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774143373.25786.10867731663607484667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfafe54d64b1f3b0403551d9a4aff00f16eeaaf7816fe6a63cf2dcce6667014
Date: Wed, 26 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787741433

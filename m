Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2029325B305
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763297454; cv=none; b=mwDxOWR9odwnlnrqVKfKNiroaK7dHWmLQAn2m6RGhyzQRu4cCyvgBVU0nBklyyM2LKG/yBy6uAZYXKSvQuT+3g2nXbcuL6nNbo8MsyZYhTdk6Mn2SNykEj5M/3Dp0Vw2sli1s4GfJ+4i4WT741xfFlZTM69hBgLiUVajMg9GRzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763297454; c=relaxed/simple;
	bh=s0ZD5hnst/5qS704qIjAaSIyzD2Yyqk3zoHxLZPsO0c=;
	h=To:Subject:From:Message-Id:Date; b=BYdA95bFURn8EgkQPTSyXedXtD3txUfJeZ0hjlGgf+kXezSGrAepMGg8VnmMZ6p8F5ZP/i+ecTO9lRkJtqv5Et3KFJUHndhpNnDQ5LPxY0AYETww0iynvMqaQ5kS1m7J+yzWmiaELkW8gsZvDZxTQk5b8tJ+Zu2JHXStnBXpq8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChPyWeiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChPyWeiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44F5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763297453;
	bh=s0ZD5hnst/5qS704qIjAaSIyzD2Yyqk3zoHxLZPsO0c=;
	h=To:Subject:From:Date:From;
	b=ChPyWeiUDnaak9BrtPbmnIhIVDCY1gfp/1mEfUMbV9WWM2PW5WLXXrWTcPHTnYxJk
	 QJBIwv2hYeTwPgFr2SUW6aegK5NPkGHbQemgGipoMGrOf3HvRI5yn5G3xb6YT9QXQ/
	 aTi/LR+BrbKgehepdHEFR5jMvIorASxfQczZNGPP9a7zr4yiWXFuGIkP3hXg2IUvA8
	 C6gPVc/YBUpWk+v9ahejZPA3V8q5fHn9kqPMuoJfb/KMoJXUmRPa2MKII6cOU242nO
	 yNd73buxS4v1iaqjWDxezpnU2lVg/2taazAyqlAN2eRN5Tsep+DIthlAqiaMXQk7YN
	 RqZ7PiiBSvQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9770ACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329745358.1523.12905075405011190324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bf50b149b202e393d82d34c74961deaa87faa123a11e8ffe3b92551120f89b
Date: Sun, 16 Nov 2025 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763297453

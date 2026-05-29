Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312123A0B36
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780039954; cv=none; b=e0i07jiHLxbnZI4dA2ghhVlk48WcwHtTArngGONOXgmX5dHcPPdVlkHZbG6Zxa6cCN42kye+M89bEYacoFJcdfSpF4nmh2dCmDBF9NmfRMhI7vwO3XpRHTTxZpSR+rwBhyBi158fDV1tvG9+utJzVZ2B98cn3MqNrAWWgfA12VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780039954; c=relaxed/simple;
	bh=M8qkTXGnYYEXHTJwDojWyohogt9pdF7s7ugxoXI5VXY=;
	h=To:Subject:From:Message-Id:Date; b=SKVyoG8Psg135mctFGM7ZSrZWvT5o1RFLeN6zjDqOPWpVvVG3ygPCE9Qo5aZwEZBLSACFB2o+PYwwsHxydin8vcrX4wJon9WGbZTAhZsKez7HYSCV+78bpybGA4KkAAv0ChAONOr6QfZU1A4NeTB7UxQgmC6WdLroL9nbf2Ckyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj2rmuC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj2rmuC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EC7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780039953;
	bh=M8qkTXGnYYEXHTJwDojWyohogt9pdF7s7ugxoXI5VXY=;
	h=To:Subject:From:Date:From;
	b=uj2rmuC1mITE6amJy/uoqXjeryPBsnia3wvSYFmuuxOllNBQyGqM4anooixrhwuzh
	 WIOV2IPrAEIBP2jtdcOYEArzVDuHygGfT0jgwgjVmR+Ac0PnnK2V+o8yVJml6slMzr
	 mb+71oysoFFW+LBq1nH8uVkoCdZbU+tzd3O6GMQQYj3wHGaSMoWMw2pgcItc1BKso/
	 rnyCqAf0oXT6zNaCpU1rmxdPIT6T6ux1pFd2XffrPdGAbJik+E67KJWYPbl+LWlgB+
	 rq+1W79K5FGAkqSGOGLyznO3fvUzZaVNOg/OF28XDU80AEtml4StO4XxUQ2Yh2EonQ
	 GBBcGGu90GSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA304CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003995368.27204.4172304508968783055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e75131b4ad2476e2638987dc7a49e16ee0f19c53be63d4a6a53db6427d4044
Date: Fri, 29 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780039953

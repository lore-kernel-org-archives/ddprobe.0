Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BFA1C695
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740886135; cv=none; b=pDLnBD2SiwsdPHoIHOAAghA5mQUuHe5XvE6jf5rhdADF+/twE4rXQiPXCAi6xt/Oo7vwVglPYa0PPEairAAmHJIpPJLgb09iUfY4oI0PoduNNDgI/sibrrjgR+xqb+PI8R23/e4xJdQQhvw+Cnct9t67bI8jQqVqeihAHjU8C9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740886135; c=relaxed/simple;
	bh=/ptJrWd4G/FQ88FvyQwrCRMe9EqCUUPYMVQoV8JnPk0=;
	h=To:Subject:From:Message-Id:Date; b=oRR5gB2DWs/Tq4qVtXiQiv3a3V2fzfeegnAhWHAH/+1YQ3AfeysLB8/vQqJ+M230UDSN+qFl30Gi07fg3Jr5l2vsF7rNze2pMssHkiiiF95qar05XVzKtfW5wkJftpn6khlXjEintWa3rX++Z9ke9djooYHtHpChdo8b+rCVx+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb3a0qCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb3a0qCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1DBC4CEE2
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740886133;
	bh=/ptJrWd4G/FQ88FvyQwrCRMe9EqCUUPYMVQoV8JnPk0=;
	h=To:Subject:From:Date:From;
	b=Qb3a0qCHX54uB09EwKRKeD+T/f+G4G7dh6tG+eP0/PvO9Ec0ctkZwR6MEUh0ZYknl
	 yT8Hr0ztw+HmhentZRTfXTevGxtAxMTt7OmGXIEjeJdi99TzN1+3jNtCK4WWoqnL7v
	 ppeUZf7sYHBf/xkEqRSvIgarUp3PH6tk7vaqoHlERizsHyfLGTAQ6EwJ5Ba7GoeCpq
	 UmULkASyB5iBkR65vowoXHupa0pLAriEcsSi2S85ySpNC8W04SN50rul+4aT/bY5+V
	 FwCH3La4redPqEsSlZr26Yu1zvvbMCOBgd8hSH/F2JvLRjRnKaR9OjA8p1BdWAak71
	 zc3UHVQB4aflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A19C021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174088613365.4482.4691661748306371919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24534ef0d564c81685e0537c1a66401df015a642b27b00c2a5cc48182f107011
Date: Sun, 02 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740886133

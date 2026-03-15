Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EB619343E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773581694; cv=none; b=dycKXrhQXp3DSUMJxcsg1Rf6+XuPUWbOG60rAeZkLmzRJCg1xbhfcucj/xnaPi8VpTAGXRijZIYB7Kxxj1G40BG7GBMARAvyLl7R/gRXB7I/PKOx30nSkJIDqi62D6ePHU7NI3K9r27wO2AFjQ8PHF1Zx/wrx7jDZr+xoGkB2FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773581694; c=relaxed/simple;
	bh=UpWXGqHpDCtXvcM2VbOYZd2vvofFQIbInBS6i8S59gs=;
	h=To:Subject:From:Message-Id:Date; b=lnbku/n+E+iH0G1Wv4b27bst7etSmMrn80eE5CkZG9gmGpsKEBlK+pxbVZ80yfNS0KXADznf1SGf1pZIWwbk29yzEPPvMfNa2T/rRzL1fJ/04lu0+gHu+PM1a3ZSn6GlLK9e0CFGh4ehK1Lbz3I/5871efF2nbtc7UaWIUU72Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToouDh9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToouDh9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A723FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773581693;
	bh=UpWXGqHpDCtXvcM2VbOYZd2vvofFQIbInBS6i8S59gs=;
	h=To:Subject:From:Date:From;
	b=ToouDh9r1mgvAwDs7OF6GzTqf6WS1RI7ROxsRZew4WR2vMDS1rWhFFyVYSevJ0G1Q
	 xPZ2H+cdpPPLvecJqwW6d2HDK7hlp2RdkmXsuUbz0EutTYBzFA4qFhVAgOkzPjODyP
	 4zkbpbc7dcE4AkZMcAaJx4A6C73sMzzfSwd553rErgqpJHn5ZZRYzBCy8O7cRKE2jx
	 CeKV8iX74Ij9r36hV8ITWpC6O6g84aHMwofW7PnsiOeAOWIMPzAmjIJp5VIROpKrX1
	 jGzsldo00x17FmWpUE39JIUk9i95OM6goCzNo948B2YeS45I5H+G7I3mU/C/yI24Vy
	 jjb4caAir9ldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92324D58B29
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358169357.19797.13180199131323978412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c687132fb024e82e1df16516f6554a047ce612d711f3697d4b4ada91c4fec8b6
Date: Sun, 15 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773581693

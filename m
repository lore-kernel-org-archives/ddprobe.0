Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDEF31E83B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780904674; cv=none; b=ZIbOiqHUjgSET+7uXM92aezS83m365S99KG1WwDm4kodwUqRHIys/1j6fEDR+jj3MXoO2vQzs+29+mPEvknTrBWDmuOrW55zKAXZEwVikwdNrBDzKLoozG3cRp4Evqt5COGc/pWYTcbtgg1QtwPRYohXnj3jN+o7YXbeN2bRZDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780904674; c=relaxed/simple;
	bh=ulimVduXK2vjbnrMiMIciikhgYa/KiGC1M4xUsVM7dM=;
	h=To:Subject:From:Message-Id:Date; b=sXItjOoWyVq+xoMKudgb8n+yvLixg09Y3htryw66E8kiUStwWpmPoxgURgl4cVcnsh7JWMAsRD6nBxapxcNIiA+LFr2fcs7Ni0ZRhTEntodwWk5L/CIo4Nldt4rVO4DnbfNQ5msZE2WxV8ANilrbNfSntg0W7rGr400dtvcJDn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4zW8riT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4zW8riT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DDAC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780904673;
	bh=ulimVduXK2vjbnrMiMIciikhgYa/KiGC1M4xUsVM7dM=;
	h=To:Subject:From:Date:From;
	b=n4zW8riTR46M+Vn/BgPCOMlUX7gJH42ZtjVD4ivz0SJ9OjVkMDLawJqD3F1iE5sVN
	 iyS1xdoyKSKTmSnwCf4jvPaMyhkkYp1K+kS0ZSy861cs3E9tploQWwLaC+ItnxPUmc
	 ZSaRl2KKLPk88oAbNuHaoSszXxixHwrUK3TTieqVnxk58HqTtWYnnkOfUEZCGxM7jH
	 rdiBW3LsTN95zw4/i1nJkxWZ9NeA1aYlHcraNk6Llz358d/Op/mRvz3eZziOvZnE9v
	 ap/g7P8Ig3Dx2KKylZj4Q2w1aosUdvf6lXjxSXCQEaUl2mAOLdSoRt+mYzZ2S+d/PP
	 v8sbo39dr+xbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD55CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090467368.17756.9206106943197349510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f602feb1dc158c7cc9350013eb26cb774f7f00a3f3704198523d395314b8a5f
Date: Mon, 08 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780904673

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2982615C0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756685395; cv=none; b=C/sdng3X7E00EFaes6/r0BEP1jZwyGV/nlZaTkXWkGcOMcbJK3rvQCRC/f+RQL8k3IJDrPmrwthqIS0wzllESTBpg2PFGmJExhZEfx6/sy3HIZitapuHlrTOk98D4uXfwkQLJJh5u1Gezg64rYSpedw2z2df+abFHUvQ4a8IraU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756685395; c=relaxed/simple;
	bh=atDeRJLVnxsdaEKpC0vxu1YAsUVw76QLT0Xn5CfWZB0=;
	h=To:Subject:From:Message-Id:Date; b=U7qIb8PNA8BpV080uKwDsMwYlBznBP26UoztQNBLR+YOl3rYGmDyIJL9twiutULr9JWf/5usGlK30vxQCU6v1W0OStUWLlyYwouYYq3/lO42yabOU839538eZoA5Bae/mhzGeD26IUvM40N4BKoYnHV6uUy3ZTSg4qTDM+5YHZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmn+FnIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmn+FnIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46E8C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756685393;
	bh=atDeRJLVnxsdaEKpC0vxu1YAsUVw76QLT0Xn5CfWZB0=;
	h=To:Subject:From:Date:From;
	b=Lmn+FnIeSWW1G0KR3hVkimQMJ0+cCivg2I/kJGkFSwkHTZvz3vNoCGQmBSRJlWZ+N
	 /ebzyiyzNcU/spCMmBx9QnfjLOCmfiH4f1bAuiLT3M+/DxtqWLfceu3Zbb4AcgoSXE
	 NqlCnh5xhZgQ/vrKkORGjtHN8VHa3skpaoIunlXx3Od3Kt/7QsHQVEu3Z0KQfC0rNF
	 7rjXADZNPrvRUUbY7sCsZVzefKJTH1JWGA4GkXFGb7A+OxlfoZbug2yK2vDlmMX325
	 fRoTTPgicr/oPuLEQnj6Tx1PDpWtAdUfiggI5XJNCwpMtck/C4QwfPQtto9W6Rd1kt
	 nA8gx58/f52cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260BCA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668539357.6801.1582221178586704856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983dd855f7bf41941ddc7e056b7cd0a478bc6f06adfdf00d827a33223c74fa14
Date: Mon, 01 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756685393

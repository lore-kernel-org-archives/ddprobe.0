Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2558E1A9F92
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871194; cv=none; b=es/234xjzYIsOV3kgzQGUUslVvh+84Ov94CPso7M4k0Houqs83SSRgfbDtqx5mY/W97YM7NLuYsZvxFqhOPgSs8CAo9akeSx8Jx6I9NQ2zrrlujsX+diMKWeCyVP/vFRx7sd8xwvZfdX9t0+vIczezgTUhslQZtlU2mC8AgR7og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871194; c=relaxed/simple;
	bh=Btl8RIJelAIvnAi+DB7HL2COrq4xHezK1mszL/xsHN4=;
	h=To:Subject:From:Message-Id:Date; b=a+6EFELu3C7iyTZN7rUdN+i0lG/JBQyo4cht3jhgUEbqVcMZnKr/hqKFnR4+r++k/u/Htb6RQB8PEtKSaVBJPoNrJ5hfrDsWeIigtRvZJjVYFQbyMnjceUyoyn64zMvakqIa4zz8QvILI/RdQUYah43E1XHBQja+EP0GxjzpIMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKqXPcSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKqXPcSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C50C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758871193;
	bh=Btl8RIJelAIvnAi+DB7HL2COrq4xHezK1mszL/xsHN4=;
	h=To:Subject:From:Date:From;
	b=cKqXPcSMld8Auhs/wbFuImpWaKrPKDP0buIGcjbg4JerBsrGWJtn7lPk1+fYeDlWZ
	 Syf72lbV6s+hLJ49p6UWMvtiKlxH++bNubBVysE6eoVMOPFiPp/o/BYqqzdp9eswyN
	 9DqvpMrEsLyTx5XegEfwIfVKCtMan/v3bPfm2cXZMGOmRHk4IyA0Eo/ZI/fJk7taFp
	 vABxmM4u4vjPsyKLCJHZOkRbwPwLd1hhF4mEB1r0GU5jB4kiBU0j/utNi17Kmaa8MA
	 pp4Wtd664FA+L0KK1KpeNelSdPY/qVGr4HnE6v7bSYeVCMyZ/ioh4fsreqUK6qb5Dc
	 e+/IL09nOmleg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC15CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887119358.2757.6814399441090099081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7206abc6e17347c641ade6f16f8945a90b43d58d45c881894f03505bc7f4e939
Date: Fri, 26 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758871193

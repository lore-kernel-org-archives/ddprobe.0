Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F44B35CBC1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762993194; cv=none; b=QMTy2X5cKJXjbALOu1bU9kyUyOHRwAK4wSt0wp+5/XFGmarH0cfmHK65cEn4KHNe53DY52xdvOw9UZzH7v+bTPp3zRnTMjJ0QpLtGrvf9dZbhc/DusllyBE0v1/qnsYBa76b4KPUfPTmXb/yLpjlBt38WLPNnfTd21Tt16LdHyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762993194; c=relaxed/simple;
	bh=TxylzAKNI1oWqSnWCCdANDm/OxHUzjpFv6TuQB/KsCo=;
	h=To:Subject:From:Message-Id:Date; b=sJfNyw93VoKDSg7Ehur7p1xK/g4NnP2wuhVvRjfVcroQRO61JNG7zhXJr7hDNhhVghKBhODqTcpkeCAVNK+B1IP0u4zbxT8AQ3cUr8M1HK6enY5p5TSJwz0ha5A+d7oaFg/iEL+gRkUitJNes3rYXMksVQVy0JPdGIrTtpsWIt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lut8XQ1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lut8XQ1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86E3C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762993193;
	bh=TxylzAKNI1oWqSnWCCdANDm/OxHUzjpFv6TuQB/KsCo=;
	h=To:Subject:From:Date:From;
	b=Lut8XQ1dKzZ2SuzpubPQEE0s5xwg42ZsPR8sQWQd9pW82lALYz4faN5VgJ24Q18xL
	 QB4AYQ93P8lxGulvUHP8CtV2lmraQaWCnULI/J6BqbL0J4CwtNQBXhx/x5VfqkrIaW
	 QWQvQ9iCwprKIlOajeCMDI3es8OIkKWkTu1kOKplatt1I+7183DL3xWdp+ubghCere
	 f14t3FwayPke2hcoyNYBEXGockcmrs46DXLirE95xOWLQHBLMcn2nuExSlE4NtgVoS
	 /JHdDkAG1SEVXg2Wi8SIQPbxpcoD9zv7uPWozvaUPnHs15ScvgOmROj596AjJ8K+tC
	 om1bAMTDlSlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A04ECD4F26
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299319362.28674.1280693532726920084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab7b5491645d46d4c87ec56af6590525289dec333f61b5a6c17f5411340529b
Date: Thu, 13 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762993193

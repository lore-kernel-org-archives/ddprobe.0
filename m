Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FEB79CD
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778499634; cv=none; b=n1k+lgrkfNPSAfUp6fdKAF8YC0/aZcGpT5D5YfVx6FzLsHcGigEuicAYWQ3R+K/AbW4sov1la0aKq5AFmseutu3N+WndpeBObx2or6INfs3Fl1ejiJcB39eOclR8BjXjmtT3pmXwIieZD6mv2JE6fqkvhk4Tcqv9CGHAu2CdM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778499634; c=relaxed/simple;
	bh=qR37s9qCPUgs3YFf31gakw0WBr0lS9VAiMp38HkqWhM=;
	h=To:Subject:From:Message-Id:Date; b=bsyWADX5LvTkB/4jYEBMKsMMzjQWmSLdu4LZhqlJOY6+x+Z2joDCFn75svwCV2frNe4XOS37RCtfeOMeXCaTH0PSKPalaXck/SvJxVcclEtxnjQgtAEfVWbn9kfmWmJE9HhDWTJPaG2AmtOh1aLsYtiGSJFPNkKuzcWZYHB9H1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zari3JQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zari3JQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC91EC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778499633;
	bh=qR37s9qCPUgs3YFf31gakw0WBr0lS9VAiMp38HkqWhM=;
	h=To:Subject:From:Date:From;
	b=Zari3JQxmBZFtSy7mQVCV05PjASSf6Gvw/jkF+uHpCJXHn9GvNZqku7U/pJR4KN4v
	 e5buA7r6lnVVGR+ztWcWgnUDPniSK+XAITSZ9B4NzmltwD3o6UA1oWleBl71dROwOT
	 jbwHfJ4hBZwUVc+Hb8ophkijjHuFLBEszK/VMZvlQMsDOmknO864PAZSJtHyeacV2c
	 jfiB5LGsHILLRAoGwjmeyXpnwqCVeUyiXrsyS/QyI+69FbCNtvzHROZuMRNZ7f02ci
	 Qusx3RJQKwuh1Y8SXo4uVui21bSDcphW2oDepOPVTAvshWLi0lLM2sIRoBl45J+Pon
	 VUESe+eZLQp+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51DCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849963368.22428.13471182035750731287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8359b00ba137a7a158ebf24dff16dde53f5fee9326f08d451f4e930c0ebe25
Date: Mon, 11 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778499633

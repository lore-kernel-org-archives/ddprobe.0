Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455322D8DBB
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790334634; cv=none; b=N2W0IByvyNFPWmMjcg7um1M7jv1rrfMJGx28aZ0uFA0xxkVUT29YF+6+exZLxpEo1231SDS80YESEBKPB4FeldsOKIImavsGGpJhU49fgn9FsTqSFRjfxhPykgr6kYEreXeDjAo+T/y4VEm69ErY+9/vFxfSy9RLCSM4LVaP9og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790334634; c=relaxed/simple;
	bh=el5I9JwjX86znegGrR0YeSQZ4kXIAVYRaZpqKl3cpA4=;
	h=To:Subject:From:Message-Id:Date; b=Hth0eglTpawjmerX63ciRtqA6tqt+zbqAj+cZvVlLi/WzpXgEYxHraYfCYXWna24doAm6YjJW+96UjuSWdH6WsXaONCuj23hMryIa1L2sK5UU7HKfaBa2/DWfGP3kAiqa/K+EbAzGv6hhpRut260FxehRW8azCq8at3gi2VoCEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J23SG5/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J23SG5/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0593C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790334633;
	bh=el5I9JwjX86znegGrR0YeSQZ4kXIAVYRaZpqKl3cpA4=;
	h=To:Subject:From:Date:From;
	b=J23SG5/3iSjy+7MLmFJfK/I5pA7FZs6RYKAFwLEK9lAIozWYAexFHIDvHSVRbuQ4G
	 EWUrx6F0Sn3MaOe/YiR4XY63+RY2q13nouJZcAUzMYn7ee4epSGrQRk15/9w0mLGsa
	 THq2JzneFTj9hn5+2nW2pFY5zUrFrUVCkgBaNylvWdDEja5IdZUNjMx6HDiSTR52h7
	 7uiHccOBg2MHdoidjv/QH2fuhOEdpb+OTQc56elBITrXsW4IN79jy74gx4zH85QWJB
	 AlQ9FMpgbzPWH8+zdFlKKnzH4ANe3w/lnlkeuyQ5HGBbY9MlvBhBbMojXPSpCYmG+Y
	 LNn/65zwGy14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC49FC98324
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033463369.7406.6900017411449823286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7182708cd1d8c5f305ef821f63ae2fbef075b495a76640193aae677a5f5a34ce
Date: Fri, 25 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790334633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE3F273D93
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751374795; cv=none; b=S0lr0LfWC4nfSpp2VD9S/9Fp3bWp0Gb2jQpvTYzhr5XTne/MEn1jCM4fZyj8BvKKUqtBlHF/gnvTcHetm9jQKKBScojsewHhRqKpCRvqVpwmD+ONJOMwCDHR7tOu8YeOCNG5Bv27pJul+8Jw6jOl6vm1yWW66CLSrTDPpo5RbHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751374795; c=relaxed/simple;
	bh=OwtDgnsF6KeD97BcolXOsuafeqekMJLQQyEnD/Ob0TY=;
	h=To:Subject:From:Message-Id:Date; b=lprfEBAD9r9CDjxybtHsZr6Fu0Dor/ZJY5tz2HxT711Q56js9JJp8HJUVrFGIhmIy23Clq9vJFyiLemuxo1/a9eroVPknveygWVkuAcGmx8Tlb1y7KuF65GIK+GpFirKSahu+3BfVO7YIEWgDhevH2pccnYcSXjIvETDBBR0mLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZNzYpSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZNzYpSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE66C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751374793;
	bh=OwtDgnsF6KeD97BcolXOsuafeqekMJLQQyEnD/Ob0TY=;
	h=To:Subject:From:Date:From;
	b=DZNzYpSJ68iukNl7bwGPWij9GBfMi/dEAVeSixZ+gMgQev9/fCEvU1AeMnLgohYGX
	 GDb0zqtb5SX5oRWHTHCEb078UhkLvFsr8T5FMfKSo0yD9VENWrPFXrSWebdLj91qse
	 XENSYucblLQZvE4P/IO2NAJrrpg9lN0RE87gELmMrCwIxk5dAVwBz8aIDlssKy1Lo4
	 +UdPBVWyPmIzycFD5ifoXZRXYBI/KhD4MCQn+FHCBSmS8qg6lO8djtMVHSx9VRdfnp
	 DgShzshHPErRjVCApT1MOKK5+15LjwtrkmgL8lZm3EtC7OtiE8kZdoRWZs6X9+1MfJ
	 lEQUfYMZXeDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59FC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137479357.12250.15914827280973225545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4417efcf5da02593e4a11197dd2d101e6363bd483a50a2cecb55add213b2bee0
Date: Tue, 01 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751374793

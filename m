Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494633BFE20
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781768794; cv=none; b=ITENNY/AcVOzTDpF/kX5rb4bN8VhUB409YW+rBiP2syHX42hiC70UEVBLC3YzKE+BUVZ8L1mrTkyR0jyLNnyb684gxmBco3oxASYEqs2KFw8KAvpbeIJGZ5l+maaMgNMmhnl4L8fcVHV9UKLaHfW5TnqdiU5hRwmOuqkE+PxVYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781768794; c=relaxed/simple;
	bh=48IDuAX11VX5xfAbc/6AXtuqxeN69mUc2qCYv1lL+1Q=;
	h=To:Subject:From:Message-Id:Date; b=E8tyPKNW8qgiT3cjDj0osv/xDXzym9NSlwtNJO6QOsjHEowPtjQWjJkNtFNRB/UPgOkOIEbqKjt6OM5/wNLaCyUyUnN8kLROhKVidzpuC6KVXvg4sSxlF23lnKlcmhT2rv5SP+naGlP4HSPQQntPbjeo5eeY/SUZkh8hhi4WdmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQeh7ST3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQeh7ST3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4D2C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781768793;
	bh=48IDuAX11VX5xfAbc/6AXtuqxeN69mUc2qCYv1lL+1Q=;
	h=To:Subject:From:Date:From;
	b=EQeh7ST3DLFO2gjsWUW3Ycxa6dCK0VBh1M79eWF7GlA5iYnVQspKiKqVC8kmElI2p
	 FvOhD4l5AbtcgRw34N+K+Hx72LLItnjxrS7Qg3iVNe3ImVZO7yhKe3NzHBWH+ksFJi
	 4oIJskcUq5xy+cViRwG7nVouZxbxPCJaCVB+RnclB+lc9bkijgw3wjnbS3mn3byUwI
	 mCDJwv06h0dsTU+9PwHg54SvLJIt4vGJzgUCZJv08Ia3/KzkbXCAiIecvsNCV2W7Y0
	 0VpRCfq2DzXGJRyjZs+MWQDpukcQSTYShcsADFYkJTEFYUvi+Vbf+GkfPfhewwOvZ4
	 CeOKrT//BteIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE457CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176879370.31949.9409271570268195471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c552953ebf7def2e33fa754029c25a611bca21e9d855b88fe9c883a56ee82770
Date: Thu, 18 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781768793

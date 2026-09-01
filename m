Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2A532C8B
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788304234; cv=none; b=SKwM/N27XvpcoSKLsxfKCdmjsmKx9pZiewdFwZ43cIFTJ0VTq3HEce8jAeAwa65HjVLTHmLVBuKunPQa5gdeFFA+QwcpnWFE7sihlAAVERDRzvn3uV4jN7F9qTUDdvjHnV9uskWmINMgw7a308+M3VyaOu3+O7F1NyarzWeufJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788304234; c=relaxed/simple;
	bh=k7hiFCyutSbTPzZorXw7LjYdPqdk2pGaAvZtFOIviDg=;
	h=To:Subject:From:Message-Id:Date; b=uipKpGD5ORE066d4RWDY3VvKbAC5hHfsd/tbUIQWIoBh9fAICBx83OwGIzZciWKtW9uWYoNQ028rKhv+cjgelx/61NotUnJCY78V55PTNFMoLzD3D+hfowUOV2C7pd5yDI0TxyGb2gJ8VTms7OtEO9NIGF49ptMR9y3RTzv9cvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJUpbD+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJUpbD+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3539C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788304233;
	bh=k7hiFCyutSbTPzZorXw7LjYdPqdk2pGaAvZtFOIviDg=;
	h=To:Subject:From:Date:From;
	b=fJUpbD+z6u2wVWA5ax5CIc4UPftZFfSj/PoDkPgb96Wb8YFEAgYthb2U4xCqhaciP
	 WupIvy/zUJYceAExvaM1o+/VXSG3Lk6m6kxzHhpuhuLshYQlaZ3IqdbUmYhv8JPj4I
	 e5OkAA/mPPFDOPmOJxmCW4pNZgyYf8bwCo35UxGSmJebh13Gnmj2h8IYamr4gQ4g3g
	 t0K8I0lkoR1/ylzE6zDRZMj1/w2qN8JSCWS5jjzcKSgWfvWL+d3gKcW7TXOonVtPn6
	 aUJi7eawCBUdsMyWL4XRvpLI+egtvoRkJr+JflYA7X2coXiayw0oYrOF0fPRgtY3Lg
	 lev8AJjQ66mDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE4EC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830423368.30907.17634948445575034069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24249ff6699b23e95d845260a6de73df784d41ff0d254381290648233ee8b1c
Date: Tue, 01 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788304233

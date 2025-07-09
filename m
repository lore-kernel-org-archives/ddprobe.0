Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238821FF5E3
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752091194; cv=none; b=D0+0wlV3PiEFGyxGi+wm0C8O6JYFGul/v4jF4U2BnIRt1MLQgSeHOcK7QrPZaROjqx7yvNVAaBjwUVO7tg+HYSl2BH9JARiku9xofhNC9h5aemAcHOxDfSiwBg/YrXLRGzu5Olg1z1xgD+aIK+n+CMOZBUcT3KrgHWXFvJHp0PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752091194; c=relaxed/simple;
	bh=UcPoHKEAiVjX5pD9VhQTTkLJ89sIiZ4DdGqEPP+O4XA=;
	h=To:Subject:From:Message-Id:Date; b=Pz5xW2D+OiYc8k9PdCyb2XXVNUUE+7JcJ3RagQ/SGEwnQEwjM1Xq2r8w89JHz4mHcUapiyeegQMv2FWe9hah2hBFQXgtwJYEgmc73cMtEtpuY3YfnU65NInsRSIzjGZ+T6xIEUVUm5gE+nX1U3v2RVzXzQql0yYNqSRs86wzMzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4ZLUyTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4ZLUyTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E19EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752091193;
	bh=UcPoHKEAiVjX5pD9VhQTTkLJ89sIiZ4DdGqEPP+O4XA=;
	h=To:Subject:From:Date:From;
	b=T4ZLUyTiJjjCojHEM1pOxg7FPqbZK47Di3iDl0nVGUXnyZdq+TDRgmN5EiYbLKRRn
	 /sLSqM5U1zNSDPJraJfVvNqBoZWTDDwhb+mCFu93UeC9J4J6AbUcf1WDwudJrj4ZTQ
	 aV7Qfj1U6HuQZwfaFnZ5S+5oKduJTCcESFqlguehEL0zItbvTqk8VYQFx8fOrEM2vt
	 5tJxGMCPp3z1V+agkTIFvcdJKigApGISP1x83P93PWaYsbm6Sjeu3dE8RBQRduiBGg
	 818pK69XAdSs+VXsiZ5pvzJn7/A28CxodIAc6ZsyVgv11+JE8H3RzkDSrcMSQG+lir
	 uGPuzLI1C4EXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC99C83F14
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209119358.4239.5072040514566177085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d539d49265578ee15d4dc63fb60afdbb20e219b65df81bfd25ec61afa66b89bd
Date: Wed, 09 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752091193

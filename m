Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358331DDC37
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747090194; cv=none; b=Cc9go3KrbOTNkGU1dIrFNpR9k9I+wrYqVuN5W3tcnCjrlBbWE8WQQfJlwLxJs1Jb5Kdd3wFutam1BTxKCIHVAYfqYRNbsYCAbWEoygq1tFESq+nQ2ODAJ+TExZTooju2HbxPpNI/3umveO1cXZwN/vnVFocZoGLRsmxh/KUc1YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747090194; c=relaxed/simple;
	bh=45oBtP4jdh1vd/fDFQZYGY5FX+vJ9zwQJehc6eG7jEA=;
	h=To:Subject:From:Message-Id:Date; b=BzXFrjRl2YQgUs1ttKr6V5I61l9aYeeZqkyCFzpijg3wALySiXgQtudIyLT4cGhM+RnUJ8Ki5w1fgjSV/wtKMMzXcrugxnDjtnfVesFdeAcegvlz8nhrq16bNJEPO4xSTcLTilePId9i6d1S5Ax7pmTC+molMvRegLARBEGlqsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9MiHXbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9MiHXbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747090193;
	bh=45oBtP4jdh1vd/fDFQZYGY5FX+vJ9zwQJehc6eG7jEA=;
	h=To:Subject:From:Date:From;
	b=a9MiHXbzmdAoWVo4/sk4Wyzd/I1hAIeM5uzG9DhZRYbhMxD/7DIAtoBOjrjLu97RP
	 ifjP8z6xlyy7fP+T9fbYC6Av+zrLKOm1pWMCLMKlPs3xsZb7Yj01I98A2/DGXI6msu
	 PHNVcZlEhKdDajWmdKJt09oPxL10UhPTV6EQy6vOYtSOpnNPP9aZAKCnze02Q57pzR
	 GlX2B0M5soNCXeRcIlcFbNRa3FMUgnQBngeEWJc0hav4tJVw4tJ9Q+QZn7pgfS/qfE
	 KktFXCUdVR8lK8SMevuIABxegylCm6YLJhInoz3UOYU/tq+fixOsMsFqbFDgtBmb2U
	 wxbC3XHXzX5dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDDC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709019357.26508.7620163216232625211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bc47cdf23453d1b10c59033b29df1857d046e1d73bdb3ab1efbfb519e06abe
Date: Mon, 12 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747090193

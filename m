Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5826A23A562
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779610354; cv=none; b=pE17cMSbeNbe9cz9u9pHU/ba/jYc5IBGeXhIr2gjfGGYGfcWjzQ49YwyqiDBUfOfL/MEVhTV657fIaFKS4Xj6HaETZgr5nx6lUvknSflXeU3VU3fa81QzqztdDIPG7qYYp0aJL1vLfJS7twjO/1EPmQFO4uO3hQPXB4bIvYA1Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779610354; c=relaxed/simple;
	bh=dxZJcsxkYhh0bYEHg7wbf8394WE/eje207bfUHit+aI=;
	h=To:Subject:From:Message-Id:Date; b=GDg6rqSQIqdKTMP0jPLikKGxCXLBPOrbxdoHvpceNJx2oS8wKTG0LE7MSJwLaYGeliPtQc5BVqHM4rVZbPv3D1p6uj8NMPK+WUp7zVcQLhdpNO6W1bYU1F16r4qZwZhfgu4AWooIiTSmOmdBINvpHW2ejtyiCjVNVk0KPt4h860=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlxL3fAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlxL3fAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C817CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779610353;
	bh=dxZJcsxkYhh0bYEHg7wbf8394WE/eje207bfUHit+aI=;
	h=To:Subject:From:Date:From;
	b=MlxL3fABldR6jWKz0SiK5wKM2fjhphKYq0nj7T9PsQwGYlvudwkBcbm9rbXl7EZMc
	 GFLPeqjYepgNP/Nd9xfwnajm4u6BrFrfWOj1nyIMmKdbvIPHJuBe5D8OFY4ux69O6F
	 I+5yYRxZWCS/alJHVHKIyJ0XUEwA+cEBat7efq+du+Vs4q4TLG95DUJHs7SkwrhCH+
	 V/Q2rwRDr0fmYhjtlG5JarMYi9oim76U7Anq8lh4Lj4gtbflw0VjaBl3pRiqMN1t5o
	 EmWCDk8U/Q3Ji+bbYzq4RBuyF+mf+xRqG3Y2PtkCNH+/3khGkVS6NL7PUEkuBDjq4R
	 nFwEs3ZlvktDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF33DCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961035368.9582.2940658936137482499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee94cd1842ea6f2ac7cd3189f9bac18536f25ba648138ab2e03feec72466af2
Date: Sun, 24 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779610353

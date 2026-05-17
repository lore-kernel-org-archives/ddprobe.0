Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AF933D6CA
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779010234; cv=none; b=rYJla5dfw7o9gEji0eiQS6RSHAfmGbVThVgXhEkJIEJGmzy8RkPFYL33oxHXMXvmmvuUxvzirSXTvV3Ay7FxFDWbkXV4oZhTm/ypmx6XrsQucFunwdPE1RsA5vSL5Ap76kkzUFaQxC8hLQKLsJJ2uGkkxwSYSNi2r8IN0u/I4pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779010234; c=relaxed/simple;
	bh=ytx7FWkVFo9OxKUlou4jNVJkdiIhgafziRzFPcdomPc=;
	h=To:Subject:From:Message-Id:Date; b=WO0L2EheXeFf8byWP6rfxAdvQMjwWjtdDHXjyoi0VCL49D/qd652jQYRRZD6deS6K1WSpXByu6aTxyXlq04IuUHWPmqAuaT9dUtbKW8TyER8etRsmOeXOrmAlXzLg2IXRKBxE1at1vdcQtuL663Z5KLHieRa4FO/p2nZlHbtugc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgM0/b4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgM0/b4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FE0C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779010233;
	bh=ytx7FWkVFo9OxKUlou4jNVJkdiIhgafziRzFPcdomPc=;
	h=To:Subject:From:Date:From;
	b=bgM0/b4inKEtQ2yLsP0IResnF4Eg1vclimnzvgwAECgC1f9TaIMHs1LHbWhGnp920
	 UnTmrQ1foZH+ZUNuWMdZNo1YCoBJ0FBdjVEL2SovL85NIXoC32oXFo0KMV5cTgXH1l
	 0u3ld0byG0DwvJ/uZrK7exqX7YD1M58pmPCm/SVCst6X7hfvsRUD42+o/I7WLNVZyt
	 bV13AzkOu3d41kb+P0AqpunfngiIHZpgtnnA0wzqqxR42ccTGIAeASmG7WUOKkHyM8
	 wmK/oF5LLzJ2Idjkquh1am7xePoyTcvrwWcY8kXc89Qp/4uML5d/PuO58atrBZEIH7
	 jTpGwgeU2n3Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD952CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901023368.31245.13732267971269031666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1cba33f8c4ef00896ff80b5c1987381eab7794f9b4e4677545b1504ed3a055
Date: Sun, 17 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779010233

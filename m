Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC5B28B7D6
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754334594; cv=none; b=oj8/rE3Ovy3D/e7LVQmFuaXi0soYKiBbH9K6FHXKiW2b4fq1iDt96N1PgYiqmYz7qWh1c+5isESFozVapgggDh0Dyi5YQOKp1fYzVW6Tt6xFUyduOjaqTY6Dsd/hwumErwwPAwDOGoR4XPZqTCSQ8LEKKWUifdHcu+YmXn2wyQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754334594; c=relaxed/simple;
	bh=kv0sTjoAoKFebTn3SQaI/T9eHLPWTFRB7I4VjcP2uxE=;
	h=To:Subject:From:Message-Id:Date; b=reG8tkJipwbaEJAT/V4oNQF32XBw5LkkWlWp3EatLa7bmYITuhb3FIPynk6ULoM/O74Wiz2bDX/VO6poz7CVXLn5NiaKz9N69ASwjf8Yejqb42068wedCzJrmN8gWKaobSiOEb1Nni/dYboPKtikZgwe6tYulO4lAzdvc2zqP/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1L+o30L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1L+o30L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F3C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754334593;
	bh=kv0sTjoAoKFebTn3SQaI/T9eHLPWTFRB7I4VjcP2uxE=;
	h=To:Subject:From:Date:From;
	b=i1L+o30LC/GUF2qajxAQKCrAZsXjUx/OtkW4t/5IOD45MWptViEvMOAR1UN9INIlQ
	 eXGuDjbbTNuoOBH7O+Vva/MUmTV+K8ZXgcZEcmwAT7ZCG/lsFyPAHM4tdnhF99GxF2
	 9Vafo1YUxOOYrK3RuZWkl0w5gtYpINdq1BTyPWmw7w1ug1NMKKFQiwmqHQJbjSTUme
	 CV+5X8D6J7yPW2xLzCGHgaTP0uYuRVWpudeSvBgOCQTg4/d2E3jcJsEJHpitlJwi/O
	 q3CeT/JikZ5ia3AiJfzZau3nPsn/zVgFuL+JxTM9WbMLVH83IO6T+f4ch4frBaXO+J
	 SiOW4TUQUGLAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E14BC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433459357.20926.5460362660772864485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e063c02014bc7439368fdc9bc31c1aa17f4f5e56d7047ed229e808837c7646a
Date: Mon, 04 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754334593

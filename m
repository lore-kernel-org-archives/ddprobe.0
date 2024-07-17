Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483C94D8A9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 08:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721206523; cv=none; b=G8ynstyhbrKNnZjupkaK/9g4qANuoE4FsDKshdhd+Kb33uXpO6XLQF+NpIvPvSHR/7F7efyLDSkZkxS4rmhHHm3+NNiBJr3v2YMpe5vebPceSnHQLy3YxYL1UbJxKUjZwaPje4SjP0ts7fRz2/Cvt1eSj9Zb227yXECnhxUvKn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721206523; c=relaxed/simple;
	bh=+4xbMJ2zavsFQZZNQM0+GFxpxaipHkGBD52ngCrg1nQ=;
	h=To:Subject:From:Message-Id:Date; b=tOyOowVE05lTftMctMXn96qTNA1xuuTKwRGHvgwPsxf7+XGfg7It2IYwIl26lcgsYKJExF4TR0DDQav8iAUUujBbZNvAFVFOl0X1LNTK7oxNwEpFsb5f53xrWTwIyBa3zzrXv2UNs8L9lVQFfBgOOiZFLHQLSh4fYRPECkag6eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Trkplsge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Trkplsge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AA4C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721206522;
	bh=+4xbMJ2zavsFQZZNQM0+GFxpxaipHkGBD52ngCrg1nQ=;
	h=To:Subject:From:Date:From;
	b=TrkplsgeoMmtJWFWrwzyy+/dWvQleuD3wcVNC6TRWZNe8Bk3rJvPeNSeHSiN0Ulww
	 iH8XWWH0GoZsepdP5jvjU/b4UtJ2GUA5WOY4/Os0T4jIsIUcG5jyn5r8t4mDpPmgFm
	 +cgAMNcY6L115PZKDauvI2gvwovTWMYtgti08X8IZkOkwYscqHCzdhDfo5LH0fX3VN
	 sKFNmqroQ4W5oubXn4bxDpxRzkKUFMVs/9GMdnAOe+wqjt/wh8RJoW05He1toAZKJV
	 sHlxYypbHho3MFBsClBB7JBQrOvZ6bbIEOrKxCEpUCznV14fpA+qeWaAPukzx+2Z57
	 BSwn1X5rYjFGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE13C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172120652277.2308.10448092900838738632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a89dab54ea7a3a3621fee76d1d866474f251830b080064f2c69d11b34aa6d4
Date: Wed, 17 Jul 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721206522

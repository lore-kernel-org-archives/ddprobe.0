Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F061FC8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743279594; cv=none; b=pSXry/y2Pn5Iav720hSZXfvfwFIeylLE7O8YobRyILl7x5jS8l5G/uJKyGLv9lm9smigVVDE+ZdVDY9E1J8ZKbj+e6Er98cx5h0JryAmMVGXiSFpshJCh1I5CsjyGDnw2wd8jAWcQom02lFpDb5RGHkY4w/xHgFmPm+h662MPZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743279594; c=relaxed/simple;
	bh=HggQDKmCEGN5xNPmG4IaE30IK68vhayj0wVJmfYBsXo=;
	h=To:Subject:From:Message-Id:Date; b=DEdvgORXEjAITfCJadC8xg6Kk3WARb5Qv7heJlYneKOPpuyaY0UDxB4ZmpzCPaARZafm5cQJPEPRNGS0JMnvvrVCrmMTnLdpZSZLMTID1362tsN+xEkQ+coufBsXAildTtV3UT3YkA4JEo4e4L/5yxDIXmdtrl11PnMtzPrrizE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBs09+WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBs09+WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACF1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743279593;
	bh=HggQDKmCEGN5xNPmG4IaE30IK68vhayj0wVJmfYBsXo=;
	h=To:Subject:From:Date:From;
	b=ZBs09+WMKwQTs9nDCt+j+sTKDMk4e/71i4l58EXJxkzWx7GSrjIgplpL52N8eruvH
	 ir9x+ujttU+Pu9Jm8gOZGM5YswMUPnV6zigwuaU1S6L5Uj6r2srrtTnSBCEhByRkeD
	 2bbktwZnl4nUxhDvfzMc2F3VB6m72hs5GGWCA15KXn1BIm0NqzsVT59eV4/AY2e6T+
	 O7oaRRixUVP2y4ywQohc19pkUVsnv4YxaPrpPxlP88rq+EjDYiBEUrenHnkt3BtkKc
	 JBvGnm359zZaLM71+YBtd5tqIOh1wzoR4nT4+WYO8XXLLkT7T1iRQz21QUts8+whXI
	 N54AwomwJCgCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74E7C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327959365.30493.11635315470711703252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc4d68c3e1d2f124f2dd8655d5464ea65d784f84bc19b170ccaf10fea36adc9
Date: Sat, 29 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743279593

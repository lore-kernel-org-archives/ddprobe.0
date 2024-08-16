Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5B245026
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 12:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723812954; cv=none; b=hGMbpOpNR0QYWs5t9RglXpGRGfEiYIrXkgCiGX+HSa/B57LuNGcULhUT6uDQa6Uf9ROkgk3iVCXH/gh460zghs2h8q0tBiMd07y9ESBajC2aa54OM3TyvRJU7077zP2QYHrE32mxTGfN8sgaw8g9WY7buMfqPnyssThwXwQ4R58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723812954; c=relaxed/simple;
	bh=bi5Cr+p5QJxlZLnx6uDNtSC4fWA+212ePbEkRyeudKI=;
	h=To:Subject:From:Message-Id:Date; b=repVCC3NkAarQ6wT90kKXHOC8+JImOtpUSangI/uAGRPWQviz2R+JjGwFVsx+zQzkbSP5RL8ErA0aJ8rPkfInAJDbBGevpa6WYrSl2nvu5/z3BXF8wREU4rOquYXfGtuJEZhwTI3a7FusQKjh0DIzWRQ99l++ZFBiqmEAAtOU+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxXf36m6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxXf36m6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 338F9C4AF0F
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 12:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723812954;
	bh=bi5Cr+p5QJxlZLnx6uDNtSC4fWA+212ePbEkRyeudKI=;
	h=To:Subject:From:Date:From;
	b=SxXf36m6bky+hYeH687HBdCio0rOb84AnoUmituxf1G66BPQ7JDI5h6oFghP/Y8yA
	 4RhZ4p4uhwHFushIQwg0SzhpvUbkUhIvVtoYH8k4FUXPkm+K5ctZBYKAfphRI4CAOV
	 4cP0UXLNxOZu2tsYEDZ+phZ11bUQrSSMBeV1qPesoA2Rnr5a0kC6E0MwG9MuKQtMMO
	 UrvsCyzcBAEXYhIdYXp6nnh2JBKBo0K89H0znMc3073BmSVRyZ/4KIVOwtzIG/6x0x
	 LPmQORVEFwYwC5qtRMB099HUnzYShtagaeiL1z7Yb3Z4lBuqq3lXKq1ifdbvQJutYD
	 NooZypz0EYEyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F30C6C54740
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172381295382.27234.17529002360886743672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b36b11e1e0f57c43ab996a1125d2f8eedbf5063824afa471d9aef78f70c29b1
Date: Fri, 16 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723812953

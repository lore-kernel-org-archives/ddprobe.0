Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4134E36C5B7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772870094; cv=none; b=LBb5bVLR9LRRCrYDzt+eQajHZ5WZ8dYr68sF8hYCCN+FAzQg7CgPxRVGf2yBejdnSr5AAMjnZXkhYxPIaKhNvmfnuT6u9qR+3y99lciuIWdj8C2lIj73h+ID1KcKsxysZZMwme3Lg1Bx6Mn/Z6t5oaapxiDCKAeCS/JBfKudNqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772870094; c=relaxed/simple;
	bh=7jHNhWLqtFrZMwJpYUa+2SIOos9utLQFgEOCFkC/Gdo=;
	h=To:Subject:From:Message-Id:Date; b=DVuLh4euTK/kPkWw3Vbz6Aw8FA8HDJpNnBPToS5jPlzOeoaiZlIh55783unwGLkn/zzJcsTXCKvu6PDLbr04GJUk8CY7QqSmGGBODQ4JvzZzxDcIMT+9PwhUnrH7NeMK82F9xKmmzoGaJpRZsp22oJHgEHR69CLtz3vFmK2gPrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYsARjel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYsARjel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C760CC19425
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772870093;
	bh=7jHNhWLqtFrZMwJpYUa+2SIOos9utLQFgEOCFkC/Gdo=;
	h=To:Subject:From:Date:From;
	b=uYsARjelYiJNS4aH2BcCR80TPB+9RhiPPT86rHsFvw/+QcURv6jK5TotPFvt6gV6o
	 yMbQx6CL/IU0f4frhV7H1j24if4nXmldKr2jaDYbIQaMcKQ5p1qsooh8eWl/WxpRfx
	 +QK9xRJQvg2+waX6ynwc3KxaLO9ikNcE634LQQq/CcZkTeESh+EwuAYYCHbzg9H1xr
	 EkZV4Yd779dmRaVHAD8pGq8/7J6tl1Lh3naK4BEiHANa8cmaZGDKUxqivTrHKsgCm8
	 BkZUvcCzVMyQ7vo3rr7w0KiPfn4e+OAumzUY8e+9UZKjDuhaqFIEc6PSjZ4C8AAlAa
	 y+nxSvfnaBGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33D7FC9ED9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287009366.7645.4994610825513432284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2580935fd169be3c032a664dca4bc2428328f3a389dc2fbd08aff5796a74a696
Date: Sat, 07 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772870093

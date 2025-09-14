Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1E2E6CD6
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757879994; cv=none; b=PsLgaG7TuGurXEV6Go63hlp8HYG38J5BDeKQRJtjKly+rQcHvvks4qOQQcR9B7snd+XmWDeUVznFTBP1B0xFD2Se//mBS5fTCmItJpSGpWpjY5Oj90sozAyQLwoyjoFgPT2bHr0O8S1h4wiwRd7TnZeY6lXW8t9i4+OCZgOiOFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757879994; c=relaxed/simple;
	bh=4WwBWRO31lAPijd75Za7GAEuOlh3uGLoEOljUm8tTtE=;
	h=To:Subject:From:Message-Id:Date; b=bnTnglhG1urlT8GLFB28mp8Hn8u0dx7i61bqaVeU/i9jagSXYGuWYsrAbT6Pp+Jb0mzByUAcxgviXtijTaJ/W+QB8i7s0+w8S6xJ7dShD6PAVi6EBjfA1XKmnF9JXZZiQVt2A15BPWrntUHpZBbyLp1+hiopIFhh3h6hh8usgC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFhE2hA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFhE2hA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDCC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757879993;
	bh=4WwBWRO31lAPijd75Za7GAEuOlh3uGLoEOljUm8tTtE=;
	h=To:Subject:From:Date:From;
	b=VFhE2hA5dGfKEWTTXLfu7w28XpH9h56v4zHz226kfXII5Nl1qnW031FHNgiHd5Gg7
	 wq69dMlbVyXVpOUu6/i4GmFGxm9y/CCecK5zBW80z5bOfreZ5UHKx1BWG8OwLCOzKq
	 4vOxPsBS+TgrEFb4WZC7TM35v1x4QTlQjTIJAutaUZDm81SUdbHtFBYl1x/v3+POcx
	 RhjeK74sOCIwHGkSRE+JYghpO7Bu3qvpcpFysjjtBV2ePYShBejFAAnANWnPhdimep
	 IRXOKQLjuw9a3HWRQLK/IEZBg5WREX6XaPjaBDSsK7bDIINSORyVIUietHsb6MPlQY
	 JyaHxCbDttDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95801CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787999358.30461.4346925260681356382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e3f84d320019231ab8a0c852498ce9236c1ca7ddeb74d4c9d15fdb435d3d05
Date: Sun, 14 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757879993

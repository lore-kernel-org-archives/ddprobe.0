Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFAF38BF80
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777157254; cv=none; b=B9bJCxEBwOJwF8rLhIiGcadAmkkSWZCCM6x9b/CaAu8JXlC+noO3F0ML8TwHUbzTKGKcxaDSPT6vw4OfJDfrDn8K1Tq9shshSgy9uoa6nkSwA8KTVAgAsWX8beEF5UMzsdiSwfs5sIs58/cNDTUrTmJQFoH4j50WZRT9trZ8Q/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777157254; c=relaxed/simple;
	bh=q+z1CiqQdV0tEYTOhPxX3UN59jAZPe0hLVR/2tKaY+4=;
	h=To:Subject:From:Message-Id:Date; b=T+EB+wWYzfskhxKjZVeBShw8zWZyjzZ4+XbLgxFUAySvzkZmBirv64HURLXZPs4NCi3SADQpbJAbHNOUmAy6Cqxy5Ztrzd9x/kisjQ0aOW3VCvtk75Mo3yx4fBMkZt++cMUyzObBQNnyAVu6VzfKwSmI3noHNPKUSHrJnokDIXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxxbUG75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxxbUG75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBB3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777157253;
	bh=q+z1CiqQdV0tEYTOhPxX3UN59jAZPe0hLVR/2tKaY+4=;
	h=To:Subject:From:Date:From;
	b=sxxbUG75ivdq9zIWG3pQQhqLq/JfbLtATMKS/urH+eXalzLt6o+agHsjn2KlVN7ZJ
	 h9h5DRjwXOgozIn7rn5KuF1vOE6ANPDe7mLMmllRaDwLD5lNYDdWCbiRHtSIbgOTyE
	 g6vwIpi9FB/Zw+AP2YSxXlttKlVQrfZYxuxIA+/MyGnSHCzQUWZW/n05sbB8IxYEIQ
	 qzeH2/plCa7jkj8VIC48TIO+TZIA9q9+p2RCOvTQG7tgGJgUyEDuiWCdV1rXuMHlqV
	 FNAuoZ/RGiKq1s2CwmnhqlErr7pjNds7bDAP7+Fdg4whUhB7cxB17pWDtdriiYElIZ
	 SD3A7nu9X8cGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9373FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715725368.3936.2840896211708582883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f5d8afd1bce20751aa0317f2b003ae1be62c8f7bda515673c22d52939921c3
Date: Sat, 25 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777157253

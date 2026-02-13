Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434857E0FF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770956094; cv=none; b=oNkUFUC80JTzONmez9V8pmXAS0Q8Vx0IJNTeCTQoJ7XZYpt2TXTcyBWMh/IG8sEtNJyZJaBNKcHslu4qVGWgSlMlJSPxWqYiRPUuUI/Bxsg8CDUx/Xo6e0YVCdImSHWC93RFT1+bkgcFxVC9ttE4AO1ILQoZx3aSKJs1pfjHS4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770956094; c=relaxed/simple;
	bh=u/dcn/S9FmEqUzmZH7HAN9ir/v4RJTtXx64uxXd7pBk=;
	h=To:Subject:From:Message-Id:Date; b=YephQE6L2t/vG0BqTd8ZkSer/IxIy7qN4PAhWn+s4weP/Cru0gD3FpryZgBZ7gbWYcf6TTIRELHJKETVnuFisciVJjoisr/uVIAVG33hXUfz+vxp2hI9I5p6W/nvYo2ZJRujmjTVbOIaR27tNXLPDHGMhYDjvA8Hg/OS7hWoUGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSlvg9wQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSlvg9wQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ABBC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770956093;
	bh=u/dcn/S9FmEqUzmZH7HAN9ir/v4RJTtXx64uxXd7pBk=;
	h=To:Subject:From:Date:From;
	b=mSlvg9wQhPDuzkp2H2XxVyzm3UWb1k42QSLqrzcGcCw2dxfh3pZytQY/I/PWJ7PFc
	 u0JdXUHoq3rf8V7sGODQpVazmmordSVrwzAVu/ht0DhReqbPL1MXvg9r9niGxjAxT+
	 SwLuXsdr853yinQ9lBa7EgeUDLVXJuAdj7lzqzV+aOOc2JHlZZjBaMQcFJW0yoACWt
	 Z5lIyi/WUqP9sSG8orvhBS2AIQEbu2upN7oZOf5DjcRsLj0UK+UIlOnGlIwOvIdGps
	 eSFgZKFT5SEt5frbRx0Maq2vE8wGtTnHPRQWZsU0+PC2wjSUwf9FL9T3knpgxkUd5h
	 X0jjYwU42NDtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1EDEF48CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095609365.29302.3800639663903625443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872c41a6ddf130f47ea63192928b29a1edfc2d2922857b581c3f2f92712c0c2f
Date: Fri, 13 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770956093

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14D440B6E8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777664254; cv=none; b=oxY5sUirj0RuFtXeNhFz394JawGExqxZWX+YR7yh6oVP2cdnw6YXqTEFrh6ejp2zR6jEO2zSeO1MgKl702yF+o6dDKQX/qG+W+x9tTTbMm+i0pGh5R5ni2dKCLae22zPjXZNYPjEBS9LwnvhtNdFDPthRAC8stfwlR9WePK0rxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777664254; c=relaxed/simple;
	bh=2vt04uVkmsaUB/LoMKvL5UFG86jKiVp4NU0qsLj4+7Q=;
	h=To:Subject:From:Message-Id:Date; b=RbdmY88OUyaahGCbrxQ2+rr4029ayij3lPdZdy8swV0y6/WKX5Dijnm1IH1YTXcc8aiF8ms3MHfhHdHZOoIAk0SMVI5n3JH4Hb9fRvnyPTUoyOgj7l1SYup5Kmc5REsgwUPfmVZsndmsNmlgN3Cmt18ylF0XsVrcuo7+N11o0mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moOFzPvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moOFzPvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CDCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777664253;
	bh=2vt04uVkmsaUB/LoMKvL5UFG86jKiVp4NU0qsLj4+7Q=;
	h=To:Subject:From:Date:From;
	b=moOFzPvLcAUx0xnNpsJ2fJ12nadTSTvpXcsY8jhCLhYHCvjlU5y5OCmeBIOKxLKj2
	 Rjnudw666aM96mGLi/6GcLj+unEjauvGIJu9mFdASQJ35xyC/KskwwV6QyX1jWWUGm
	 4875UqmkcrgFgm0aTndxIuTDzV/00q2uX1jKRcGUbPjpUuUCafHNgxuxsQ3WlOkyY0
	 /0NE3nbmG5j21h8fDlUxS1dibIduUAt8wq0GA8YzYFIBfn8OgADw2duVGucWilicqn
	 8Ih8hjyxP7ljhOlKfdLPpXrIpwBJGF4zGLGN18dYUG/vFx3+dWpbomuHUYHkBnTGAs
	 gFfzmM0Hoj6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B086ACD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766425368.29511.5836672008079583195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427443ef22ea727f4356e3865fd693240d41298f446ad23e435ed2002a7b4f04
Date: Fri, 01 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777664253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D5E299A82
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783907314; cv=none; b=C7d4Pio68e0s682liRUMjJRVwge32gr5WO2yq5lUnGqQERaofJYc8/yWPIZJjYYSSscUj3SYxqHuZ4J7Hkw5BKcAfHs4yPRKohGqfDMKiYNwNgawRT1ghYOt94JVBrbT2kHFTwr3PDm5tZTik6952Y1CIG0qHPxsJ9n+rBmq0eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783907314; c=relaxed/simple;
	bh=4A3q089Ixt/dx9/Ako0OmgeKPi85uRlhE6CJ7evppzg=;
	h=To:Subject:From:Message-Id:Date; b=n4LmmCR006+orOQyjaO6j6Pzc4db6KFEXRv1k1y+yGEMY+Y94vCNzc4fOBtR5zMpkkWuxLCaDzSqQb/3lsoV32YZRXy9H61UfZo0Cj9s1H4pQwULzMXWiXIiewNuTiY9v6kok0+lTCiGJP0h1myJSOlTLc578dmIUxASPyIddRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD/QTRea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD/QTRea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE39C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783907313;
	bh=4A3q089Ixt/dx9/Ako0OmgeKPi85uRlhE6CJ7evppzg=;
	h=To:Subject:From:Date:From;
	b=CD/QTReau3qIJGOIMK747sQV8wDMPXrTe7Id8WZABNQUhuN8tp4tw1EXek3DJhdjE
	 HpF4rHjw7m8xadvOKsG8Waelx2O/tnYkRM0LEVxWHLS+uJsq7HIjdkNS2z8iTi5YzI
	 vNsRxsIy4UalcfDCAPzBvgkQ7lcjPFDfPae88kBH141A+6ABdjkiBMzInPBHHp9u9N
	 RwEhyGR+ofxBjsjukFoPwaOM/DTrM89W6UIV/5IYaXfx4LnePcZu70M9Pr1qvsGLol
	 qQ02/SqWz3w73IevAM9A1gwBgHl3hVVxU83oQdmM2RppZseNlZWYx9bz/mEKqz6BNZ
	 vVSTYNUKUbwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA20C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390731368.7248.8023339168013730008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8dccd3f98e48046cfb15a6e904c7a3b81c2d2b67fef1bac558239b6d213fad
Date: Mon, 13 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783907313

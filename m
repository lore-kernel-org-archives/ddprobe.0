Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D95D63CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753618794; cv=none; b=UkxOlash3ueELBHnzfr5g27WzK+wxgZ2WPJdb1g8A0DyaHsZfdj9lzbQBRYC5+7hrVecZDoXvAgOV9ThAJ5brOrSywIoYkCOpwpBspRShD3IdPYGbigOfkXYZJuyRB20bMwPyjJq+IdgzbXSANhpT/JVZNDzYTVY6OnHsQcATi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753618794; c=relaxed/simple;
	bh=AEhJDxy5Kzk2d6y6DDqPhXwcjZ2LwxJ9PZNQXugNxuE=;
	h=To:Subject:From:Message-Id:Date; b=jl33Qf11gVLgWLbZJuIoQ55fC036jfcqAlTioUYBQPLSV8y8gEjkFBAbkp6PxwKTjF2LYp7vpBwvKUlGlJ0PTwS3b8mpXLqCpLh9TT90CHExJvZBkJUqEowmd4jKyLfQzcQwaSEFX2kst4l58imLo/wOvFplYuNkunXcmERt+d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8fMIMY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8fMIMY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC55EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753618793;
	bh=AEhJDxy5Kzk2d6y6DDqPhXwcjZ2LwxJ9PZNQXugNxuE=;
	h=To:Subject:From:Date:From;
	b=L8fMIMY+tzmPFiEmjjrolu7WzSRhfR5gQTxXZUJkrlwKeLPeFc9u8x7hW5j82pd2C
	 4p1da4y5A+7GX+XO80GGreuYN1MVBZIBHwPKiBMptDPb+KmJZz33GPDt3WrjC19ke3
	 PNcHWwAA9qyeM9FAmz5KiJhZKiyYACxhCGDRBCdzInyB7penaI7nfXfVERkWgUx8A/
	 4J5fjkikAUY92fOomVm9Sm5ZQWoiIi+RRQEunS34UlNdjyG9W1dQYB5dit3s+YnxLM
	 5iItRadqmuwRBf2CyWCt7pPBRN28CRaJo8IJR9DJlQYa02871gL55m7cm8PXeqhB6X
	 Kui1xBR3h3NiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9727AC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361879359.29332.12899968004131458272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee74abf296e59b37eec3bb4c316fd19ae65e9c110bcfb920f00a549aed5a244
Date: Sun, 27 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753618793

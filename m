Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EDB156250
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714087343; cv=none; b=sUpvPcnZDf86A1MIOTpMHZquqASEVeeTbk9FCQgrVGp77myPwy4arOgOcvyCBCjEhHaHQqHApvm0mXzzrLuzpvHIaOUYrLH3BbVZIr9yuMMKFHNac1KizvkpodHcIE0lcngfWgCYiSYvwbAsFZ9G2elodanFz55zfkeq+BAN/CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714087343; c=relaxed/simple;
	bh=3E2rJtOmBbvIK9EBfk5TECIO/GzFJnSjIdE+brNdOxE=;
	h=To:Subject:From:Message-Id:Date; b=E8/IDWCPZdpTLnocDETatH6MM1oI30CHW4LDJXMTvcUIZgoO3xnUVJ5PuEAWqJGVAQPfb7TkixQEVTjwtjTQTdky9IaxZxIbFvoMGWAU91UxIzFEyzr7N6crjXWiiFCRrpmWf/31hlgDJAkrqeTGNE+MkQqBJKVpuzA0PTj8pgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CI1VrV9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI1VrV9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4710C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714087342;
	bh=3E2rJtOmBbvIK9EBfk5TECIO/GzFJnSjIdE+brNdOxE=;
	h=To:Subject:From:Date:From;
	b=CI1VrV9tkQP3SyVOfnVdoxUv4xPmtdWF7RmXCdnEjf5f+orQjkHnrnGuKICsI1nOy
	 dw8AL68L5plDo4EQAUvlVmKNfG2/wcMY8hYk22FviFDaCrU71hkmJInHvTZdfTbAb4
	 Gn2OkDoP1zLdxpXaNUZoZwT3meB7d1dSYiA0xLteCufI/apJDSj/EteoInP/C9DmzK
	 2Jihod4dwxoCqrD4OFG06erbq6SEzPs9vsqhfpLpAkPthPZFscn++36GK6YbPSG7Em
	 SiXJK974a/GV4SDgrDZdJsPvh9AHgwzX9fGC0sXPWBkH08/Z0Wfv0QOmOHYWKmBMP1
	 QPLUpy1oRn7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BBBC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171408734275.16160.3143902962378254791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e764f3d110824504a2097b4897694aa48392606e19dd0ace23ea5a2d8e930bf
Date: Thu, 25 Apr 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714087342

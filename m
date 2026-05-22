Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379A738AC96
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779485554; cv=none; b=owso9r4ziggydHpYrWkY3kRhrk1wVWVwSBgkuyxAx0NHQptG5jJ3Z5lDg1G/5EJwkEekB8uRoEX8gVO2hXRzsEg3Z/muL0tjBopLPe/cBqtgC6ee2VHqWfiQrYgsUcg60opZiSemqzNvjrrqnKWeuyNnv3Oihako7jlqI7pMD3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779485554; c=relaxed/simple;
	bh=q+KCssJmL/KzR0YTw2hrjguEK6GHWuDAEi47sV6JnXo=;
	h=To:Subject:From:Message-Id:Date; b=l/K3PAGtNvwZTDpnZMgVfPRmL20ubVvYweyg7Zbpryx/Y09AKYVEnUS1Cp0Hsu1J65owtK/Z5EO9ckl67qI4TtHIwFijCcAI6rOenPIj/EPik++w5RXX2VCi7SlDZ/NdIyXBDt1pRUjearOKRDLuW1Lzf1g8u7rpOT1thgUUzNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qduPuJ7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qduPuJ7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C948AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779485553;
	bh=q+KCssJmL/KzR0YTw2hrjguEK6GHWuDAEi47sV6JnXo=;
	h=To:Subject:From:Date:From;
	b=qduPuJ7iwBELqbM1kqIJ7VyeLTfptS0PSOLEWtuEDCORNMOzOE1zO3jFfvzVhYPsZ
	 IXHE/h3bkcLTHCDZQEOz2oxFJyE5mqsV0kec+OJjB356NS7PVGSmlLQpzy1I+xvnvt
	 raT5JMkJ0ZV3q3SuibPsVZeHdLtcdb1QOwLHoiwW1I3o/Ji0xfu7tpEoj2o5Q2o6Xm
	 BwkJ7mPoB/eNlLuhpcpDWc3STckMDSfRe+Vsj4Eu4kMto0XVUQCYVnj0iKKveo1eYs
	 uBTy6dAW+1sFsYXfGczFeAAsj5usTIVvPSRFinyL2Tr79FQni4KLUDnml/bik31BSH
	 XVgj2QCU8sb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF19BCD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948555370.25834.914930961209878026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd2511889507ffb20d3c5419acd24743a697f83fee457aac118c3959da47844
Date: Fri, 22 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779485553

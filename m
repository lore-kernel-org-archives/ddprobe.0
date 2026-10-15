Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C3135AC10
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792043434; cv=none; b=EU3y2TQMiUBUeYPtXiPlPh0S736hh1Cp/n/2x4RQoj2/lFDIN78/A3EWu+pCIZNM0zXh22jEMbFTKaJ6FbGWh3GBFcHA3eO1BD7tGIL328uH9fg3nXcsg2xhw2hBeAbn01PzpSwPjqqCFLzX7S20zsI+7Di33A7AU9efmGr9zlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792043434; c=relaxed/simple;
	bh=55BeDzZ4yQCg20WeKXQdxh4C91T3rlOdD6kpQGqSRIY=;
	h=To:Subject:From:Message-Id:Date; b=U7wyx0PxRDyADWcquBu7vE+hZW/htVg7+dG5KFxG057eSVjyCNjp2VnbKZivYI2IwD+vIKQKqosIhGDl1R0EB8ptCxKeunqq8Ac0bxgbvbMsZcN470DUq3yHkxgoDjarVjq9viYLE8IFaCBTKP+k735DWXlMMMVCwj6Wxf8N44g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPEr7CN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPEr7CN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA639C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792043433;
	bh=55BeDzZ4yQCg20WeKXQdxh4C91T3rlOdD6kpQGqSRIY=;
	h=To:Subject:From:Date:From;
	b=FPEr7CN0/7uc4SsYIhIzX1X5eEoTJWi3XoPciOQYeUAvMJPBrChRag2VYgpA4wzmu
	 AUYFQ+NBLskfkVAL50yCl9sjs2xo5dktgHzCPsZMjiyt8XcTVgNOpEb7wMZhjEWGhA
	 gZJvmp7/EnIwjpT/CBTnkSjkdSt8z0LksfWjZyFBKDCf31p12RqnQ/fy79bw8c5ztc
	 meHUbTDw2Moo+sCyAALrqRwXLLtA7EdFgJC4hSOwQAI/lg6KnSGolKvuSDJNM+bMBx
	 qxZnPy+8ZKLauurZWnABHvMJ/KkA1+gJDNbKGjM1r/z66IMuEJ4vqQeSz6JcMl7qhA
	 M07w/cDbIO8IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF626CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204343370.25018.16779549746372893071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d774984f28882eddebe8e968614d67ed43d0e7c5df9cca9a14d1a79bcce671b4
Date: Thu, 15 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792043433

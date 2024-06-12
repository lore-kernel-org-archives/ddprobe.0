Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8544C63
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718156303; cv=none; b=uvcLDpZtE+Us1ySxiZ4P7MKqn1HwlilkOPLYcbtUtHq+kDH/eX3ZkbS0bne4HtWkoItpWIkuKDPcGKe2jUnFndiMLDpwY8VyNMn+AWA8qE+t/+3NHmTuevZFS27V2hpTduqX1tuXqvhmPnnbbSHRjQf0CO2LAh5BjDQ2Aj8BKoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718156303; c=relaxed/simple;
	bh=FTzskXV9ZhCYGc9g0w6aEwijrEDa+0+9gpDQrbyFWA4=;
	h=To:Subject:From:Message-Id:Date; b=Idjj/Gc4pyopVfXcU8yPch5xcpGVaPmFWKLj//Nvy/955hWhtPOujNs6O619NMcoUgW4KSiRYCrPJ5qhbCrq7iyg7oReET6M2Fop3UvjpL4/LoBL/K94ESHm3Oh8tMWTMUdnLEFQC7wYzqKvgTfP63ktQPZ1KJUUFSd7zzoBvTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzMogQ92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzMogQ92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF971C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718156302;
	bh=FTzskXV9ZhCYGc9g0w6aEwijrEDa+0+9gpDQrbyFWA4=;
	h=To:Subject:From:Date:From;
	b=RzMogQ92h1v24HH2uleCgjf0HwN4qOI4WHiIk11Ltk/dLbpEOD/W+2mX0eJjw50Pb
	 kqGkey2zZPikZyIH2ffaqR3ZgzZxEOJxhdbz411YurjISnLcY2JnWCqL6RYiAS+Uuy
	 MB84ejR07yyGLuCZQZte24XPGXEUD2gPcU/nm5CrTv8gRabXG7W/iNa+vy2sDOIUtx
	 8V9ZMoI4QsF/4kc9hrjxNu/kOdH4CZGCpK9p1lhonCQKIYhgoXw+FNl1e4kLKBE0WS
	 /YvAk9HCmXxIjDhwPyhwwMcEPSSmn9rnlXWw2QUGh7slVcRZZIYvEqOQFfcTC5Zyos
	 Ox8f1V+WChLhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BD9C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815630277.30340.8891044804493428438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c82fe8392f4991eb1a2430b303f9d429e70ef3e5acae4aece313c144732a0d
Date: Wed, 12 Jun 2024 01:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718156302

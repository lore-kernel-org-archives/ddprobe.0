Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA6C137932
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749380395; cv=none; b=UfKZXNEAKu++8AhcgA3FGTdh346qQehehYpE9XSGNIbT9LV+pGSv6nruqEajN17BWtsdhZdzGP8VgnPQN7d82UZqwMA/DJmSwD79DtlwS3hAh/U2M95dc6aJC7C/7xdeRgtBxXTkHcWWpkWTyrF20EGdU+hGkR69Vd00at4RAkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749380395; c=relaxed/simple;
	bh=LPiP/qvl4fFHTw6ZLxOcSOX/baFMW8ccGpS9d4WQcek=;
	h=To:Subject:From:Message-Id:Date; b=et/aithJFX4hlkH+E142matASFdQ+gzIB1DZFntajQUpvi8YguYdB56vg7me1jM4kO+4vxmFY0WJXa2kztu/Q1M3clwd01I89JE2bC4G/2cRbJo78tGcRbhrMw7IuP0Gs1Uv61pqckSf48aBorwKzPKoMdHQc7rwDV8pWNB1rcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5jnJNxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5jnJNxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF68C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749380393;
	bh=LPiP/qvl4fFHTw6ZLxOcSOX/baFMW8ccGpS9d4WQcek=;
	h=To:Subject:From:Date:From;
	b=b5jnJNxxo9UTMrDno1/EqjaZL2UVlnOwg+z4fAxDa+7pDWYpArvr5uCadRcswI7d5
	 FnYPhcsKNjQd9U047GP3wTxF9jy8vvhg+xP8bUUeYKoBx6U8YGm43RtDHS9+F/a9dI
	 8NkBXz6esGl0BP7FikehT6GOoVOwmyFiQzXfiPuWZ4/EqgL25nzOFEROWIpROZTkRd
	 aeCCpm/dFocygGUcl/CgDj77fbPnXL+UW+rUXXT3Xi2KfolRDpnzEZ2z/lPcrcfdDB
	 fnbtZD+prRdTODLQ/K6z92ifYRN2djOvcDeV+vowT9CnZrkgX87BClF2vjSqFXmTLK
	 XuOv9gtYp6lUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48FC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938039357.27416.6893195083100897677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bad3384bcd501ee01e714d775d2edfbe8d45b0d9b78ba4b8580af0f471d8c15
Date: Sun, 08 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749380393

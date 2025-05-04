Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DC3187332
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746390594; cv=none; b=rYHKB9h8Akii/JRAMvYqRU1ixzgLlKzwGw3FBG0P6meJjJUG+fXNKFxYSH9zkQzYOPbmZJaKXYKMJ1TnIvicKqrBH8MGBDa1hqWjrsqslhwIE/eY/qLqDIKkdPrAlLaRAlyjiA9kV6BZG+K3wQ6+ekzMMjWBBwGWsgwRgalPZ8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746390594; c=relaxed/simple;
	bh=ui8fq9vy5YbOujW0aJPPOdb+pHMxNNcGop/8kQpWNPQ=;
	h=To:Subject:From:Message-Id:Date; b=bkL1fo+oNIqzIEJGVklz2ysxbEgbBNqIdqamImNqgCN5gDIoZUJlj8CIRkPQqMngQ1ePfZISjyL2RDUmnIZ7gQtb+bq0hmZUd7yWkty+C5UCeIrwMDXY+IgzNy67+/8vKdF3QesQdzuv6q03uqI/8V5EI2n15dV13FHX15IMNKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ougQ4GXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ougQ4GXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746390593;
	bh=ui8fq9vy5YbOujW0aJPPOdb+pHMxNNcGop/8kQpWNPQ=;
	h=To:Subject:From:Date:From;
	b=ougQ4GXAS1bGsNjDiBzu9RxZrl6FxJAu8XSGZOPpsfXeB3k3J1dSCqsrclLg1NphB
	 Ls870p77VJjtjS1s7kTMSae9QYlL6W2sdL9xPZv76qovg48MdczUG1+qbNhPnTS9C8
	 WGXjurgE+o1FkrTp3Zyg+5rH0kE2S2lXFZzCnEqlPCuie/0tTxQGgtpfV7Mo7L8bJF
	 U/eba5M7N9Q68AYOcgGWQZw6qdQALBMC9XmnCyReZY3LbbTRDjMU769R9u4PlsIeV2
	 QERoJCs4dxIwgK1WqyE0+j8zU3s+1JNVmQ5Zu1C8qAqz26Os/OZ5uZ8lxXVy2Ee28I
	 b2AJSTbMRSB2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E899C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639059357.6183.522248750101523635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13549c23842e51c5b5de353df58a8c6c328f1d66a4ace0b8ce5510ce1481b796
Date: Sun, 04 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746390593

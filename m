Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175D23876DE
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772063095; cv=none; b=X6IeFtVqrFtvMmv3UWlPjkCDxfdjr1A+Y8ls7Enk+SmRX2/aatZZo+Y8Bq4xZrh6G7oJvBlzxNFAYcCHSwCuKiCi3HD3dGZj4YKuIj/rwxklceKkEK/Iaj8P4tSkcdZx8JGsue0Ck1nAzNUvrbLRiSs49/q3aWAu2y+QkOsKZiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772063095; c=relaxed/simple;
	bh=yALyZA//g5py81OjUtDuBFFzyeSsZgh0sonPPms/6to=;
	h=To:Subject:From:Message-Id:Date; b=Pg7kdZRn9td0Ddpg6KJ/QoSAOVA1OA0L/aCfsVaAdVYHIxt11MzOkUriBNEa7U+B4XY0RFVoI2uK0sAPUQ6s6xH/qF11gxG8ElikBSUOELOZug6ck1dN/EidZ2zUgha5qTzKrHzMZgzroYxJoJ73KqHNywoM2FCeRMo7EtD6J9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOIUKAJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOIUKAJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 52D17C32786
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772063094;
	bh=yALyZA//g5py81OjUtDuBFFzyeSsZgh0sonPPms/6to=;
	h=To:Subject:From:Date:From;
	b=vOIUKAJfVoyD8tmu3sCpQli11T6HCHmnbjKxu8S1EMUVhkTleeQkmLKPInZ1XjdZC
	 TtpUm6CyISk1wktqdrNoUI3tQf5XHQjrBmYeQ0qsuMfl/jzmyIXseHssDnYrMwiRM7
	 q1FnTPsqZqRujAVGUBeUIKfUCTbB6nmOdzjRnslITbxG0MoLqYj/bFHPlu1wuByE/P
	 F3qVVXTFYI23gwN5H18enlWIm9KbM86qUTkNLgDDTiYDjoM9EOLaYz+BEnqByfYVgV
	 x6Pn4M5/MECHwRT2By+7g5Jv+B1cUpN/RAPKbVLVeK+22a3s3b/PifLYJT7x0khO2J
	 1Z5wxiBMn3yVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E78F8FD45FC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206309392.11673.6063607530342680654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e95951da4747904684f867608a4be325c3fc3bd3d930c1dd209e4d7e6c2502
Date: Wed, 25 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772063093

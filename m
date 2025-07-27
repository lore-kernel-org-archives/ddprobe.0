Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE0713C9A6
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753579794; cv=none; b=aKQxXQE4ESbKya6a86A5zEB1VqtylQ/iuLIsOucvDkdDA7eiNO6Zj1e4RhbIsk0ERyHA40UFHm12v47qGEs7sXcr1jB8jqYpqn7wnNO4Bm+uPrQJcKhtvKZKHKHYU8NL4feMQpC7JUTnx5swl/8ZcO+aKZqkPf/ZnE6XPJqq5ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753579794; c=relaxed/simple;
	bh=/uos1CtpldfSyQMPYuVV59jAhht2TIVIWRrtzpa5mpM=;
	h=To:Subject:From:Message-Id:Date; b=dFYUGaHyimWddxin4rkZTMK6f/f9T0jRvCdada/fricmKc+qeiotHV93UQYvCaLqLZAdITqJcy0F0c88pjvX6C1PFZ/ns07uaXyMLj28jcUfEBT20w0Z+OJ7DRgotegaMLOlv1B35xV7Vfs3mugVC5cI/K3dXmwpiBAuePuUt2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcWkXkCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcWkXkCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD8C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753579793;
	bh=/uos1CtpldfSyQMPYuVV59jAhht2TIVIWRrtzpa5mpM=;
	h=To:Subject:From:Date:From;
	b=PcWkXkCe+GmFCenMDeScaINIs2Jx5VHSTGfXorm1N1BN0YwDf/OA1hcl2OuDLesz7
	 kbBibmO5iUb57PDtxA01QC2zv9j90IW3mdreXpq5xhRDd/fZqLMbqRaD5tXaQvAFXb
	 iv+XAY5vvqiyMB3S4mYh1Zvtl+0kJFpFOinmYlU9WR9j/vIOra4x05KnJ7u8DmIWjU
	 QfSQ3WEHDEX/sBcMnBtUSHs8SrYmAZ2iNkHKz2Q9N4ixISpQ0Q8W/Lzi4agD42h73T
	 E8vHPA8p/H+SaktgIPc6h9f7Qlp+HJ+83aEit/8PmvUAC5uRSDU6Yc+90AxA2n2C8x
	 OWph5R+7v7dUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9225DC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357979357.15533.7343285451904544745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5a3a2b2f51ea3bcd0360ce53ecbdb828cde375819ddec90385ca3a0fabebd9
Date: Sun, 27 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753579793

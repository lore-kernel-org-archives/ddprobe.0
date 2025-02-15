Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D063D2FF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739582934; cv=none; b=QYTC2Dqw4PSjHK1EIwtrwmoFVkxo47dkKRyxMafnLZz5boCQgB3fXV7HMfIo7XRtTVZeiAV9J59I8q+OWUeonnHsF9ViIQEi7LssoUXM6ZRlVjZ6e5FtmSRdW/Ysmy+h8qKycLGtI7FSUyXMl3CnR8YmSYuWyvZ2UOzK20ZiQME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739582934; c=relaxed/simple;
	bh=KjFzUwez5Ee6Wi2fkyY91oXKPRHHgnyh4BnFk6nSvP4=;
	h=To:Subject:From:Message-Id:Date; b=Z3xKN/pRNTHa4Xl/OR/yPcMIese7Ze/1/yFNkeqHvTiW6OHyN1S+WlFlrE+BgruZPmzLV384j9qp3uQkrAYSGLI9Y4+67ov6BZjGb67gyJGC9mfQndmO0RQ3wSxwMO7JaNZ9nNtZcekftkEQC18opibPiTpmSBigocKhRUfo8lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQbrbzKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQbrbzKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D9C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739582933;
	bh=KjFzUwez5Ee6Wi2fkyY91oXKPRHHgnyh4BnFk6nSvP4=;
	h=To:Subject:From:Date:From;
	b=jQbrbzKVFA5mlNk4Cug95qbi3vUIV4V/IdyGxAlANoykulpWx5ObDJaipet5tjG8a
	 fB/bqF+gQ/7cWr8Rgala6Fa3UCPpGfVBo/aCWNYWZIhQP7OGd1QYCDhQslq64cjYx0
	 +WvK0nm/OEvglvFKcAp7osKiwqjn7WDsfWhIr0JLMINF8D4BmxMJBrTOoSMEC9MrDm
	 LYwL5/X7p4xq/rGy1R5XPnWlwop3rCRHIAym4iYrkUBZ4ukUhQXZteTCkYorg2Id5+
	 JLo38WXBGU0fJb5LUFlCae3m171LaRxglv1DyNJqSdjp8ICZInkIrqFZEVeSEJWsav
	 5/J7lbSgDUYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E45C02198
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173958293359.27452.10610040691635234293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8edb6e487ec60421d816a6d058617c72d812fbb61165df2e7469d56c7c6badd
Date: Sat, 15 Feb 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739582933

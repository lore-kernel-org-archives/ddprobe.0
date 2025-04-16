Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC1C1DEFD9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744768794; cv=none; b=rJVj3r1IgLVUEgAy13eydjaLZ14h2KJkH7ayyn+A9MtgGEVPZxXI59J055VJU0uzrCFSKOQrrfPOsXSZ8k4YwK9JNtINrV5CTptvbEn7pjijDSr8JMD+GVKm78OzEddUqq+lOjThCZpq4ngJPevUlwtenl0SUXmaPTpoaGDWgek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744768794; c=relaxed/simple;
	bh=Z7NUEviBhmOycf/uFMcnp53SBzRJuDyd/l6Ra0FDT8I=;
	h=To:Subject:From:Message-Id:Date; b=l3nJPZk8GyxLI3JGolUR0f0L++P6p/Xsjg0Y8VkaSjGusUpmxWaoP2a5xS2rvHvgOGHFHBInuQ/JbUR1H4mn8bW9OlaKiLEBV05aJEtbzojFibtKclzJHrwbPV1iyHDZcBHackJfJpew6quSSM9v9OqnCWS5MlLAQfNzbaL1QGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETZsQxhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETZsQxhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EABDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744768793;
	bh=Z7NUEviBhmOycf/uFMcnp53SBzRJuDyd/l6Ra0FDT8I=;
	h=To:Subject:From:Date:From;
	b=ETZsQxhwoog6CHCKjANgTDOPDiMMqfkn9HQC+tWcO4HzcV5fkeBHXwqwZwpt2L5YZ
	 OchvGnm9TzOvhQaKu1916GvgEYL5VuHjSqPbOdImA2cGGDuoTI4G15sh6/XibWV3+9
	 xCfb4/UckIHkOU4TPZA5DrI9S6vKB6l1Qh0uF4Rpi5Tz5aZav6Ydks/LiidlS7FXWl
	 n7kNjNapEWNDFST7y76j2WNAz8nBV75QQ6A7xgyimPB5Q10q3wI1emrZOEKnW9KGcX
	 stbKYa2AGxEMCxwUi552oO+d3OWWPXROyRsE3thQvGN5w8aA1eYlrL+lHZfs0CQmhq
	 vtOwEkt6zeFxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90028C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476879358.23455.13377798639193799125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947c5c0871b6c22c09ad7da28dbd08c1673dd0146af1e99f7e1d7e5d09c65bb3
Date: Wed, 16 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744768793

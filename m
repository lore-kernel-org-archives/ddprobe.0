Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF4D26ED3A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780228474; cv=none; b=WdH26C0E/z5MXEsj101DvfthybQyGOJJYq+uUUW90LvWNscso2hdccCnf4ch2gOfmrtNTL2PGwTZw/wE1kUhnePskGc1VPpsjYg/JFC8eEjLmNEmLUJnM65LXQiidTBY1SRJ5gdpP2YBYQ844Qqqb792mpgHIRJGMtMu66Qt7+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780228474; c=relaxed/simple;
	bh=xYb15VYPm1ao523z1XLY/y61OlVWDl7vSmmDn3EUhz0=;
	h=To:Subject:From:Message-Id:Date; b=MqaEx5YogtzeP5CvO5wjX9ZxutbaH5e1csFPVuU5y5mV7cSUVAC9tqQDln/M9bpcITTZTG2wbrJ6wiNc5FyIx46qEKTx6pJ0ke7u4tKX+1Tuyh5OhCg4YJguhdgFgyP3e61sptY96sgO/34wqp282HYs8hr8qiFaLp/EaA+s5sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLAeNKQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLAeNKQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB26DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780228473;
	bh=xYb15VYPm1ao523z1XLY/y61OlVWDl7vSmmDn3EUhz0=;
	h=To:Subject:From:Date:From;
	b=eLAeNKQe+bPlFIzQuWkQ7UkrPlgGCjJPoEZ9cKwPYMd4STYlrmp0Cr1t6L1CrTPsF
	 u/20gwf6vNURS4cbm1xKPhPVZJx6MUfFwrpib7Iwxtdk/9giHpzIY/aA+rD+mapZnp
	 br4IHpNVCG1Wuc9oqdtfJve4v8OM7xY4AsJW3ply2kVX8kg99Qylxyh6XndDW9/8Vi
	 Xaf670QEmZHUh+n4HkJhzxYDefTIqVj8Y+Q+PKcMlDLHgJLh6SOdYKvS74Z/q5Qqyr
	 xh0dONgTyxta0oSJwrqo7weCDDmSQvdIjSeWkO/NOSqZAPK4NNNzKZ9v98hDHY9fHc
	 xldoHAAXYhvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB084CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022847368.25474.11457772635626097521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f2dc6b154c2aec5d2ab27337bf9b765656a365ced77cb7d156e4cbdcf6fcbe
Date: Sun, 31 May 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780228473

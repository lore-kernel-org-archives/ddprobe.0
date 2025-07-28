Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D3274B49
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753720794; cv=none; b=ZbTI6JbMCe+gVVn6U2mdlz0MZ+FKTfHf+XsJJ7B7uCWoSM/D1Ty8ojoJ3+fpqpdPbjSVEu9JM9pj1jCtYyta/Kw0sIBV8WOSa1CcDPo8pU407UNUF7Ic6ss07hOJDH/DdYGwfqpGw5LMPXFqj9WWHqL4J3hKaXCMheXZSiTkmC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753720794; c=relaxed/simple;
	bh=o0s67CTjZgUMcA4rItZcxyZHwrk+w3sNef+8g/TKhv8=;
	h=To:Subject:From:Message-Id:Date; b=lsMPvxlIzgohNCrA2qqBB3arGIHr1TU7nZYB/bZ87y9NXl9nHMd9Z/s05DZXvIj9nN6WCrJ3AcmaEzjuguxZ2o9fhkVZTUQ6UMXsM8MOMjod9SlVvmPcp5MS3chX0c6gtqqgcPSrCANgt74QcDkuJVaAVAxfz8SOrhuH8c/jDCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWhH2TqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWhH2TqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753720793;
	bh=o0s67CTjZgUMcA4rItZcxyZHwrk+w3sNef+8g/TKhv8=;
	h=To:Subject:From:Date:From;
	b=PWhH2TqH3zzy54V4GHNA64fZD9DCNxlJrRaAP3C+W9nQJI0wxQ6jMy90lTqk6S/3v
	 rtuj3u5LduhzN8HoYVQC7MQkaVmVA6H+JIES5OPK/E3TPduM6jgX6C8pRoV505E4dP
	 POERNGVLUA2L6w2Bh7a5unVvPWvxokv3WPow6HYBVGK5rjVjGx8ITGuFkQjI8OrJbT
	 1raG7r6uZZSBd3hzcHi9ztk8gxi4i2LLoQbgxMHqnGHvPI71R18j2E4/SvwmrRPO5c
	 O6jWzr1qkPTb3yY9qbw10euVYle8zvsnRWqIeYC57cIz3/0xzM9DL364G+ggA5o75U
	 yphKe//mR2nLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C49C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372079358.667.947725099184410516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c2403f3c35063a4f735a48e632ed231b1bd3176e65c8e22d7426c9fce312c2
Date: Mon, 28 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753720793

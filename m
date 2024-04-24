Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508DF15E1E3
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713975683; cv=none; b=nIyeOkE/mT0Y7fXGIiH/IsVWizEoDxd9GEMFjV4Slseoj+gtSLVeziqPf7es5zrGwCuLy8s/uPSPLLihszqdRevOGleKMy99TNlpYzLOftrgKb0ktiGGwi1r2tGP14wRKOu6brDF4JruQEWpP2sv3F888zkCL63YOoYj9PTxoEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713975683; c=relaxed/simple;
	bh=EhgtMIynRiSVijNgNXCCmXGg45OSFhXojdMHZQ880iE=;
	h=To:Subject:From:Message-Id:Date; b=T+OCZPmMv/Cqhglgis7JoBR6RAhZ+m1+zNlMWFZS2nt/KPbQZ0KmCLwKrC0E1peQtGMYDjcDh1tuU9Sl1l6oUeuxWktSXm+bZNsdmeJS6wJozOjCzs4KlDHRjSIrz+81sPErSxuN8k4zKQ/ieqT7QSqwbwoLIlOjKKekFZbE3hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKvMOTZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKvMOTZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50FBC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713975682;
	bh=EhgtMIynRiSVijNgNXCCmXGg45OSFhXojdMHZQ880iE=;
	h=To:Subject:From:Date:From;
	b=aKvMOTZ5u7fIRLdY4YFtPGx+InfeDVJixp4Wh2ywv2UGwz3Ypx0+ZxHOXyBxDDGRY
	 xcFXIT6tK+UgOq0l1IijGustwFqSBnZEyo16YA21/XYawcqCANDcKlc7c4Bm92PxpJ
	 EvDRHlB8GKww92kXc98ZRet5c6EeItmI/TLZUaTbcRZ8hWAsSkqWRKc9vHTsx3cjiO
	 2OwxBE918OdedwnptwuFZt3Sndz2Esc8QykqxNnf1nwItjHACleqxWsQsouZxcsJ0X
	 kQJJT+ZLQ2yaxvFPV7oURT/8ninz3cBNazJohIKDDVeSVkcUnex8bXwIXT9qZO+qxs
	 i39wGNfqJlQmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F69C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397568278.7398.10953375616510978588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507f801b97f598719eb71d275374d9c55c391aac6ef3a44e9ee7b6d633c40a2b
Date: Wed, 24 Apr 2024 16:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713975682

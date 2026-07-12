Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911483546E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783873114; cv=none; b=nfidRkqgmpkLwIYbSmdczr0ZoHek6tW3955F2OoYFBStVReZpkEGxZI6SoebUI0L4fGjakrFN9Sf5GHg+5VyqTQZlG0p07t+gNgHQ7l0oQolv2PbGuW9woyGhkI8X6SK7eVgRfM86PdMwrOCfbzQrq3bNBAKgqY6FDKvZCKAOmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783873114; c=relaxed/simple;
	bh=1HhcE8sIi91r5auSMwehOqlzbdoIZyTM3ztkhsApG2c=;
	h=To:Subject:From:Message-Id:Date; b=ABTCzcLymKVGMM/fh04ZauEeXT/uoqafVlusL29fmewboWZI1Pg09IvHExegnUoFYWKmcLrGWDPg0mtiu3TtivgRI3EqVMiMJyWlYtStTU7Hbjrm531sg3T570KrYCQcR+2A4/bI4i2m7wHocTj1YxAr2UyGY3PNkjHrVKtHnVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQrCt+4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQrCt+4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD5AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783873113;
	bh=1HhcE8sIi91r5auSMwehOqlzbdoIZyTM3ztkhsApG2c=;
	h=To:Subject:From:Date:From;
	b=hQrCt+4pRiCjp8TEDvDF0cLWOmKyoZn4EwqpdrNW9HrwgVAfQt7Pa+vRHMYfP+QPa
	 e5auSBNknLZlRVcCJav0L376iXAoplwB9zT2fYATB/un1gZWDgpz1SbszLIQlZcZac
	 tjfFDQfen5AOF6F5Qkhulkl5CjIbxeRxCZsYn7A1grYVQgU3rZRnvqwuXZ3NLMi0vf
	 u3s+jhkfD1TKMm353o+eyn2fvmRI4qjkoFVNRxWvbqj5kmH25CawxymqH0SApW28rg
	 f3qoM9/yi1y1Qid/qTdO/Cg6s4Sn5TJO6z7zoAoiiCZWVcJzc1M9ttVXDoJciNc7Nm
	 c7XTcJhF4r9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA20CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387311368.30495.3633087320036603030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aee10f482013128a8989ae6ff3c1ac6b46dbd6118edb775d1f2038f234dfc93
Date: Sun, 12 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783873113

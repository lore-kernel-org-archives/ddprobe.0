Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3906535FC0D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756922994; cv=none; b=osBEga7PMkHh//e8mm1ZlMeFXl7S4qnEMrx+hlRv2rx8oSYD6tAULPo9tiasr/NQ6K3/ze1sn4PhdsiRrB0URUJdPV/EXGjDER/WV6y9KCphu3QAFKlLp6nyNvYcDHwziPUIdU12+1t5AElhP3KE83sU9apTmTvyZhpDfsmrb6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756922994; c=relaxed/simple;
	bh=9/CMPNAlPqOAelfzgO+STU1YqBUzeLJ+FgLl5luOhvM=;
	h=To:Subject:From:Message-Id:Date; b=L8tpjKEbrqi7xIYn/cdBylmX1l8/y865QgMDUWx/sPLO8DeGPmm2IqPAa5hbVm6YesYdMuLShCHue8ww2axp0B9a0PGBLj/geuTj4RYFMGDdtX8Pn8zk6TGCSMltifdEuyHnQVvJbUZDrFZPsv4YASA0sLEn2Apf6vMTZ8vNvBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcXH3gCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcXH3gCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756922993;
	bh=9/CMPNAlPqOAelfzgO+STU1YqBUzeLJ+FgLl5luOhvM=;
	h=To:Subject:From:Date:From;
	b=IcXH3gCqgEDpkVxpdlnDUpsFtSM5eEX46FQP3/q60c2aohaHaeRgr5UjBmce+IQw5
	 Eu3i2u2TDwiXiPLczmf36/o4zf53j+Etm0mxaNlygrjv2xLfJvcLjhEJQqAOZpEMOh
	 vBORQHJsHLjOfs0M8DXYtgdY5zvpVWLfbcTiz8a0DemQtJwHB73UFtsWVdsTa+QcJk
	 wB1Fq/ZrIQw0x7xoy0WrVDuJ6jFe5ZzM+2BNxGMTUSvjYBXJMCrO0DKOyzNn8Zfp9H
	 Jtrc4cielKZbEGSLXMfDNi6yC2i6iBPgj71+TP6h9fUx3ILjfQYjNM06HSSzoJhgqx
	 pTcbod6kUDsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3ACA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692299358.7569.59664641992654356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dc9928931b1d31e318e4bf67e4bc04b0dd97874fdcb4216dcd47e7fbe0a15d
Date: Wed, 03 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756922993

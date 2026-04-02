Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A5A3043DC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775160934; cv=none; b=smZUeu9LS16P0VU3dbtozt/tmmHD0Oemy+ChL13LV8bHx6SaWD8x6TTa+hy15inN0r82BP3GLzwGFNFkQamxtkTnAXZPwEnRt7hHNbWdDKrLL/jwaEAp42xBMmux1UgY0x8wqn5oa74FdFZpvE/+DO6Oevy+INRsOz3I9WJUUYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775160934; c=relaxed/simple;
	bh=Z3G5s/TNCy3EWuxBvUZwwPQ5HiWYrCmgr3GE7AHNcsQ=;
	h=To:Subject:From:Message-Id:Date; b=VPKEdSCoBW0vlj6W4H9E32Ler09e6aPK7TTIPcb1VkqGe5HOMIKPwfi871jPOGNVniOCKiAblSoALiRIHMAVZmJBMWXJTXm+ywvEyIFKksoCVtn9VuQJZpdlT9lV5KCvP9h1z1F93LqzAV1f1AVV0zTpg+kT5ggvXuqRJ9eZYWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnvRBtsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnvRBtsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9177C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775160933;
	bh=Z3G5s/TNCy3EWuxBvUZwwPQ5HiWYrCmgr3GE7AHNcsQ=;
	h=To:Subject:From:Date:From;
	b=YnvRBtsnymxF9P2H/dg9NXftQM3fPKFgNTe7nphY20Db2RPFK+DD4uRlblSVpHrRg
	 JsZ8yezUniWR0ocDigeN3DrGcR7wy/LtODa5N2oL/fS2fCfh3c2ddepiVuUWd1w7cu
	 LVpAeI5hJmGMU0Pw0AxPRJvFsZYvRP1X/7NGn2XiMNsrrYfcaDOTC/7rOjTttu9rBB
	 bvFalThIM/1iVeM8if8HV6chzmIQ6ab0uKUGg9Dh5U5AqBO7NAfBgtshVDgsl3JLxC
	 THUn7MiXB93TDieOJ/ZwnzF505kEieeGhQ0/K4T6zbMgiyn0Jsb3c/FhsE3a5gU5hm
	 niXHWXShHAllg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA380D6AB06
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516093368.23152.8583704710911023124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafd8e1c2e7ca38216b34d32b5ee0ff6014713ccdd904a47d73230619c95d841
Date: Thu, 02 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775160933

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9997A2DB79F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778359054; cv=none; b=P/tbpxOnJ4zkHASb5JqDA86V/EQFImMks6ZJrW+u81fV4NDqhq6d/viH82rrclnHAMf5ro7n77vIcQte5NLHik5CUJ7PP06hXYwkOTFKD98ogQWcL7KHU6yK18aJbswP4Bm49NmM0TdhiZANpuWklx3TMr7RlNUs62peB4neKI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778359054; c=relaxed/simple;
	bh=q62HW8i9sc6vkUUD9yjGEmqYFr9hMiDePP2XX1jm1rQ=;
	h=To:Subject:From:Message-Id:Date; b=Fcs5sCN6P31/Z0t7+cW7NPhYurtzuPIecpqiqVLSyqSBjFhS8LsrVPqWNaSYihN1lc9q8WvGPS4lN5c/muHkKY/ClW63TiT5W42mWY43fyc/BRcHJuPhTDJcv6iTGFClPU/kWsuxGDiPQAP/zDPQDfMWTYFXm/o+oUHfuz0Dtd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeY8+COx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeY8+COx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44D32C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778359054;
	bh=q62HW8i9sc6vkUUD9yjGEmqYFr9hMiDePP2XX1jm1rQ=;
	h=To:Subject:From:Date:From;
	b=LeY8+COxVdW/3nJvd43vtJbuXk+pGe0nKUSjakImqMRZiGBUIDWyR0Qv2ZjPQI823
	 cFoZ9d736arKMQL9yalYa2GoXxEmmmnt5abzVK+5qlOa+dFXZ0SOLgDxki2zIY2Ds0
	 Gx60DEnE8mO+gLgxsoCqqcBkByNX+2dWChGrjJEPWZhB+HhVWM6AXLhMGN5JF2NK7E
	 F40/cclsXATHivHLUaGuC71GQTQdxcSM1zDsLTxkZdZ1Ap7a3kpf4OoGbPJFla6bJJ
	 JI0ur5N0fdcvMk7ul/rJ9+Zuxp6+R0ADwoxKm1E8ppA0vBJwclDNqWDJG47GE9XzeA
	 qPM57NHFqDttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1561ACD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:37:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835905393.12019.16532769600635007240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8470f9a0fe183a80f397f1df77033e0c92fbd95eab3ab3d03a1b234ed541e7
Date: Sat, 09 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778359053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9151DA3D
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758289794; cv=none; b=kub1alD8a3486JjdCAVmEKxPCQBFre+ivGdPTnM/rld7qj9OvC/Z68dJT/L12FmZp7K5UDyOV5j6lDfsIjMyWhVR3KcnlCMEK6uFLqnbv6bV5atmpYcZVBkM9RdFa52+Ex8rIReLyxF9tF6Gj6XgX8JQ01wmezknN5MNJVj2nPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758289794; c=relaxed/simple;
	bh=vSu+2zdiec6QlyC6Woc7cCbC4tUUKnFYIOHMUNH0Avk=;
	h=To:Subject:From:Message-Id:Date; b=LxJhWOgaVTwwSibPGUHlvCfN/u0khU+eevSCZl181mGauRgkD/7/sqEBX3Fx6pXczcvs6Rv4ZRTp0ij8UcdYFpDqT2R2Y86/my6CNqBCF4VN7mDxglQp14iADxFnBwO0FikAKepaFbR6X+LBEHVFrzLEgJTq2tRFlk7hH40SnOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuo1JT4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuo1JT4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF9C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758289793;
	bh=vSu+2zdiec6QlyC6Woc7cCbC4tUUKnFYIOHMUNH0Avk=;
	h=To:Subject:From:Date:From;
	b=kuo1JT4D8DB7WUu/PgbV+LRGYz/rnRDnDpAdKycecYKDYO2wA339g/OLJadGFVfH6
	 ToNnLRnMex71gLODKnsf9pO0L72MWJbExZhPWyEyk9jXGW4G0Lp/hDCdAMHKCtuGBj
	 wYzBJMLk47APD4Fy9jZzUOJGVJcbGGSB4hqv30rk067tlRBhw42dO9a4Lir1vFuUpC
	 oPq072pGj8i0dJSMr6Sm5OPUvdhlIIVI2kLMm+z+STf91tNznvT2FD4nv0yDUiict5
	 I3wemv5SCWolfwE0Zb+cN2KWOpFpWcdiGXSkShOlGWFvUhhv6b+Z7CrKfcT6xHTya1
	 +wHEkXNV8i3zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95436CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828979358.7659.12855874680433679690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aface1dbd28bc4247ae6f2b6e8c83569d11cb35f54e2554debd75108a5f0f196
Date: Fri, 19 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758289793

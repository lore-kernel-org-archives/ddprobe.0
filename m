Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B502C11EE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766024034; cv=none; b=APGsUShICIGthM/8CbqbkMrfcHlQ0hO38w+R+UurYMJ6UtsUCIiZ8dZGrk+TjnmYrU0fJrCQldqcqh/Evv6LxlBNk8ujfllh885/R56hcpxkniFss7tFXD4S/fsE7GvOtMYJXng6nKi9l46mCpy0cK0Y+Zg9uVUb7D0ylAKw9xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766024034; c=relaxed/simple;
	bh=pFYA81tego75FdO8U7xeQIQZBVMvvgfgnpoqKN43Zs8=;
	h=To:Subject:From:Message-Id:Date; b=pN1IxrpLgb9/6EOIJqqOOgxfaCqPJW5/D1xB/5SXobRGxUI73nd7xQo1z51g/k+rVYkq0r8HLY+gMZnC4F9zOiueILN2ql18lKb0pVX7EeDsQN0sm2TvpLbdQQouFZuFSoeTssQCxHRSFdlqJ1X/I8/waIpMgpV3qeUikrYMWos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5mWUr0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5mWUr0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A679CC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766024033;
	bh=pFYA81tego75FdO8U7xeQIQZBVMvvgfgnpoqKN43Zs8=;
	h=To:Subject:From:Date:From;
	b=j5mWUr0GY2OG8yGLhSla9NsUpDiMNi06ooGrUNkLR9iS5gGWui7NxCXZUIgq3djGr
	 4UhrPhFwfsbBf70fecRtMqbeKiu2ovM/2yRus/rCr49wUhtXbDmGVbY0UCr2DJcrzt
	 mpv0hiNFtPGreypXznigVOk0AJyPCn8G4dH625fa0/Egrxs4LJfku6V3outYFRw1HC
	 AxEiXCi094xESFkBSqGW4OiSgdUq1NtTh7wD4pVSlEdY3kffz1Qw36dV0QgtobbXQz
	 IFt+j8Axirjh9d0V6QUanGVGEp2A+F9RRgo32juxANI7uKZIh5qHj2fpDE4JEErXHc
	 h0k5RKaSSrBJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E0D68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602403357.21064.9267463771187358503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50963d1e18ac4ac24b93d97f6eafcb149d0ec63a3debe0cf39d2a9a4d571884
Date: Thu, 18 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766024033

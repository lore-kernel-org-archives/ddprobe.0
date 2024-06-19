Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE26224DD
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718764163; cv=none; b=XCYNcqy2Dxrz9FFZm4+zzwktWpV2tKOIWiuHl4elzeYns44BWhgOQn84rAo5AgbwVGKF5BXVy/jAbORS0ib2yalOxg7QciOCPqdEwoHKDNfoXp6dwJma9MfshS4ZX9aUv9NuoWKUs2ToixbvUTr6U7jGRHIbYQNG4Z1ctviLbcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718764163; c=relaxed/simple;
	bh=BN39a+Lwfjt3DRZXUtwBvaEWBJYK9BCILtaJM0AE+zE=;
	h=To:Subject:From:Message-Id:Date; b=GJtp3AoOJEx309ncZih0xK23+OP9zVWPZXcOw/j+/xnMK7R8lQndOaSVNFchiRT1Kyi0lE6xmB/6fKlLMXkDtaVN1mRrtKC7HM5eM5pdKl2Gs087Gj1ZqgHBBAWzFr1KzYfe+HMa13zxN17ZZU8T/Xih1UEUmDvmQER4xeZKkK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV1WgDtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iV1WgDtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41E5C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718764162;
	bh=BN39a+Lwfjt3DRZXUtwBvaEWBJYK9BCILtaJM0AE+zE=;
	h=To:Subject:From:Date:From;
	b=iV1WgDtHHwmLI1G+LQB5N+MN5a3jR7z8a4UHxqIHtqjzqiW70ny37r96/cHx8eOJx
	 s9NDIIjD79pf2xON30IuA/56BTP0fYuvCnO4hH1nD06KCcjj/olBKUUPH0uglwtDFs
	 pcIS1iANoqee1Abb1iR7maJiyzncO/uM/FMFEWc7a/rh/2KuqbShWKIAsYG8+dK6ph
	 Z2DW+L81VxT1EBzc6LODMxqeQ4TKtIcRuIRLMtIaeonXn6C59W1XCmM2xE6mTdQ41l
	 WHEMptWvdiuM89omxBqODMgG5jc5Mwd2C9aQAHk2gnuEbOQJBDmYu05xzwJLOYj1U7
	 djcvH63FbyTSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C270DC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876416278.27671.16714695064566512167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2502198b62032e126e37dbe98c32d8c98eb90963e4b4b7675863d87d1a0412
Date: Wed, 19 Jun 2024 02:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718764162

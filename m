Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DE460DCF
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743038994; cv=none; b=kpv2ovpCVyuKeql3K66r0zjwMctmY4YS80EAOBdYATMGEufb6DhVa38GJ1gP55riZnwG+uitmOj1togmRZ9/VTvtvakiCyPgFQ/zfee8oo1SBXrBwvjP22NxDkOz/M4iM/LuW8UohImA2KxZFSArPffc6jHmA5IGsfDZ+IN/Gag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743038994; c=relaxed/simple;
	bh=dfiobHQ9oTP0fpKtlQkONo9eI0AGXr4tVNBX1jGtSXI=;
	h=To:Subject:From:Message-Id:Date; b=NSTFMS4ieqO8Sv1UnYpvw0q/90W5Ik5ARMEL4uhYAmq4DSdhDGbzlHe+1KpGbMJDwCmzve2oZqchg61R6PQSLVmw8Kh08QfILQSTuAEAUHuLP9LPqXowLJEV4ESBNS5OFryOL8UHAq+6sw/aBoPnBWe3ghYMDt15CxHatGjV2Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZUGTs0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZUGTs0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD021C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743038993;
	bh=dfiobHQ9oTP0fpKtlQkONo9eI0AGXr4tVNBX1jGtSXI=;
	h=To:Subject:From:Date:From;
	b=ZZUGTs0/9lnZ8U/hzeknRzoP3kHFk++arylSkqzZt1fvirhS5R802PPJ1XDDTB6zf
	 Qd15BVVt08PfNEzKTC2RKjkExv+RYMM67+gslIYZgzKh8QOVvXxJflmmfS3sGQfNo4
	 6jK44fIWKwyLqT5gpji4ZSgjU9MTyR1QFNjSPPjvlzcOafmyTLnmYYyLiyzTraqplU
	 rcOBvCJMuGnD33/ddSrnYMqOMLMRQVDNGBOXNlgv2dgauwsRKTVKFOSPOC477jnCGi
	 OezZFJZV4VKR4DVPiST0+hL+15ImUnuIdRgdGq+dRL3OXXGtuhNrqGzkNEFRIHLxtW
	 fT3x1/Jt13H1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A320DC36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303899361.12754.17042880345672166697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624431bc0739bfcdba27e10105236341ed7267641adf2d913440e3c4afd3f5db
Date: Thu, 27 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743038993

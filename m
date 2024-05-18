Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470601DA32
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716063743; cv=none; b=Icks6bOQHp+3K+4mdFn9mUzcK9TLU1R56BXosKloFJmzpEXanE0bhzgi65Tyt/r82GX9uH2nwUI3i6pA5MkZ2kL2Q57y7S4ve2s7RhDiQR1ZjM5p6shYo3wpAwGMg6q2PJXq9yERU6vV1cPAC2bxZjRqMsUhw3541buqZ3w67rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716063743; c=relaxed/simple;
	bh=3ixYG0muisSq+eBRMbmQHmpQcKtj7Inzo9oLka9JRZc=;
	h=To:Subject:From:Message-Id:Date; b=NinWYy6TAYXyOezUBIo8ZoBrkJJEBX6T5RUOmUdJd9YHG00Y38RkGwc3EvsdOpTQPubGnZj0Hbm/jDwc5PbTIZhO+s+r8Ssa+JdyPEosV+sk4WvYoa1qUdip9M0N1/GbSOvz0UEh13JLChavrQBPsih2Kh/32OqcL3DaO7kSIeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fuu+6rJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fuu+6rJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79D7C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716063742;
	bh=3ixYG0muisSq+eBRMbmQHmpQcKtj7Inzo9oLka9JRZc=;
	h=To:Subject:From:Date:From;
	b=Fuu+6rJNhINQXQDvBqX+Ux6uo/BMspKrX/KoS+NIzH5FWS3MI21wSENXdi97N/PpL
	 95pdDPN5CUzWkn3jnjiO315M3y/xnNDfMuKPDklCR0wHEPGSgLDRDnBRsifZbHaqFL
	 n6xbCoMD925IfBAZ4luj1Myou6LftH2Xi5DgPivg8YTsw45+a/dqRFF70HDgL3Q0bj
	 mzcKoeTXgF6Kv2QutrJ889PRpcOziDxvS6gCwxMQqufWo6LznLNK0JJonzmAneWcKl
	 zpqjJqX7JIcCkVCRBYezsmviZabeBc+GFMkSgesOlS95sHMKgF/plg0UXeQl2PzIqf
	 Cd744/9H6W5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D98C25B77
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606374277.18527.5123846160767537660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34faf219769bf202262e5ca59529d38c06f1d736bab0590bdab75624f6232139
Date: Sat, 18 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716063742

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D41C695
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771095294; cv=none; b=EyovVMg5HKzi0YWpTioaUaBLi++XFgZHx1GH2OvSCpz72tSB9zTGfyE8vFBZ/VyaD4U+9HTFq96VKjy8dLS3CXS5EH1oXcH9+3t/w0KwCw94oEYbBo/JltKDf05c4Rquxac1PCVyUXNHZA2Oz/HUz7Ui4pxFPRvt9WsiWpnpr14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771095294; c=relaxed/simple;
	bh=gtbXGRdKOcluQRKtB+tyQxurAqBGrchkZuu1Ebn3GqE=;
	h=To:Subject:From:Message-Id:Date; b=jY7NfTkBkU0icdDAHM0ybdMyEe+xhjaVfQQNLVw9nFobSDwhryE0Axl1RJRVcYk5MVaFWNXcdi11k0G2+95qIIHvPuyftG4YS2ktztKUacGdVJYbk/mOMDTcIyo8t0P7VW99IQ35gMFkVwQXo6cubIdWf3u2JgCoIm0ld8AmYU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmo3/GIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmo3/GIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE2AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771095293;
	bh=gtbXGRdKOcluQRKtB+tyQxurAqBGrchkZuu1Ebn3GqE=;
	h=To:Subject:From:Date:From;
	b=lmo3/GIvpG1YxKfYTE2IgEzMN1Cyqimx/sj2bCT+9t22e4G2WcWn2r7/NdYHRAIFH
	 KyW5+WViR/b6y3GPmic7Kk3q2068Jm8weHQOiY5I3Rj+fp/Mgj46HTGt3BV9OZ4A7f
	 S1rnesYYzXpJLzkHGjmPl/7kINz993tNDfPs0nqZfJOZv/VGu2pcwmD7FwSmKSIvzS
	 1zbWzM0FB2Zo/bQ6+Mb/U+obJ5tRHIMJ4gj6pGEWvHCR4cHoljVQxy5zhVSTCbvdxw
	 7f2cfz4VPRAV1faa233r6JpbSVQqAjSxN9dh4QLndB5lESzM1yOIMUm9Sfv4eIT7oE
	 6t1gOcPvGOgmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984D2EF5852
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109529361.13467.9809936737038223445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15d966e6b221ce01984ce92618eda4671a1b5e6e0f5b050c134fab99a921065
Date: Sat, 14 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771095293

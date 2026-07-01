Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3505124293C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782911914; cv=none; b=C+EEShshlIuoJnxEhQbnuGTHBzltJQoOYOIF6Z5UGfs3rarONFVmSNONyFRAyvZS61tDEu6HCgvF9qyIV+55NWGKMvoKkQbNV1P7O6myWgwfedISp/fxLr5I4pAdF3FFpno/9kzGQCJjjHhoSW3uLqT4iINVCmHfe8zZsleh38g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782911914; c=relaxed/simple;
	bh=fbXrAvIi9jD+dz3M6Ims55fqsqOjKCOeKTuBX3t0H9E=;
	h=To:Subject:From:Message-Id:Date; b=UkE+VER1HN7qX52h3dYH0AEFtXjSHc374mp8e1/WVnsec+BOxfIl3OtzjqyzJYSGCureWdFNl1xgUSPNjg3W+lyuCFoTRxi4i+AIR9bkckDqA73g2KBdZY7tDrr7Ov1fFsRVOC5eTMIE5oIY178IDGGrQN0mQhPaytzS1BRjQ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2OfpCva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2OfpCva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B4BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782911913;
	bh=fbXrAvIi9jD+dz3M6Ims55fqsqOjKCOeKTuBX3t0H9E=;
	h=To:Subject:From:Date:From;
	b=q2OfpCvaHENp/wXKATGSGSWWQln+hSsXkmcrtqHn/FjTjHkxYEUQpw1/IlIpmEbc8
	 QehSaEhiBU1tX3xJ/N7VxxiPl45tB65F6ENZnbnXzhDHSvLQLxiS3SMJMz4JDCJZzC
	 19L6HuE43/bMgk+IuYRd941pMjaYEQv7jVc9eHBjtzo40nNX6oxnKze+lhmi1kywit
	 gZJJTwjjEFh976YMvAOjNP5+gt3jCIJQ6ItLd0dp/pBTSqONfkewko6QFxGzFm3mtM
	 o+7uQMIlnA4W8xpIYyR82/KEvLw/4A/jyZ/y/cVYMTFxIl2CVDl/gATwBaWjM2uyxY
	 rTp7mVMQVPXcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E70C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291191368.3539.10596437786916574375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d111fe292e1c9ebccfb3cb37b76e857203d481d1aef0db87b1f89d012d0dbd
Date: Wed, 01 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782911913

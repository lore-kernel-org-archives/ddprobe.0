Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA98283FDC
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751397593; cv=none; b=CFbfJ9EFT6U5II3/ip3+KVhBdyR2Hk/MxyOLMhjTERdqIoJHfSOi3/wcLE4K+rFK39GAGzEcZyRRHA2YY/kQBBAogZ1X1mqKsL6ZWGPG5IEfIqWDeX2G4orgKxj4/29KqVcHgziUCnkiOZOdNMAqFBzW6QhKJ6a10eIPXOcIMK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751397593; c=relaxed/simple;
	bh=urLWXZOPe6z9DNy9sBGZME/Q0pTSJ6U1J5LVOnearmw=;
	h=To:Subject:From:Message-Id:Date; b=E73MjXrdxmRZJ6KOIHBBrxdaoF9M2nPQudZIFQpc9oOVVCIv9b0Q14ZTQfpnEJ4+gpRvK53Jw6oWOqUPkdgKG94cgO0Gy1TPfJlfLd49LewkVD294eT51H8d3GeLRYCwJzNQdYdnA2YhIL4VLqox4+kAOP6iERStkpaxqdF0+IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkODIQGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkODIQGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEDBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751397593;
	bh=urLWXZOPe6z9DNy9sBGZME/Q0pTSJ6U1J5LVOnearmw=;
	h=To:Subject:From:Date:From;
	b=MkODIQGm8ttSf3W+Ne5ThxbmgYBtC0yIRpJNBirTZ7mb0yCv3/3dxyAi/kNhZSU8Y
	 bYey2KWPdC8wl20kGTLaJ1KZ/vHNq83x8++1IxVIxLVPyeP+2l3PvtrwByzIg6aOKd
	 9KS90y02UsAMSmUHo6xkC6h7UZitwPWDDJRsBn454wP8uoZqsqAPv/TgL2nLkRPOqT
	 SHa+9AnBRL9WzUOcB0kYK7ZaUrEr5y24TDuAg/2z/SkQ9ElNrpWp6u327scCQIzgql
	 NRAIZnq54W5lAOz9a6rh1FDk67VgwDMOcDfuFX5uOyiMo5w5Qtro0sj6M3mA5EnaJ1
	 pH+KIjGo8DSHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E1C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139759357.26929.13992084709953728392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7966fd8f09439947334c981aecb930fc19304b72243d52a36e3b188ac1e23455
Date: Tue, 01 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751397593

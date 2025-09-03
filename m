Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8952D46CB
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756932595; cv=none; b=IzJ1udMoQ1UX+CT+PgFmDH37szh4b52hNfryJoGbQWdFXchpOGgnOpbtUTcNo7fJ1gubTEaDFyrDhtVG4p3t5sCRV/B1Rm9mRVaExwZT/jfw6wwWclDHf1i47xichT+BU6gt6b6U6g7yGWWbrAOiKXXl2FlIXJ0LDT3AHSvvBKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756932595; c=relaxed/simple;
	bh=28YvBr10rWF8d0fy36R7x91idexY1pCk5Aw3C0WkHRA=;
	h=To:Subject:From:Message-Id:Date; b=nbhhc02AZMePtq2won/OVg19trIdYbX5g5/3ll3LBpEtMIWxau4qQw+bnQJrasqcndCCN1KMuzLoSHGvIS5wLaR3jtnr9I1d6RGfNP98NuOIX2RmGKHmLd/AmaNBQYpO08mo7C6DfD26eGuanfCA5XK64EXrxyfY50m2NKoawj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh24yk3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh24yk3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CEBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756932593;
	bh=28YvBr10rWF8d0fy36R7x91idexY1pCk5Aw3C0WkHRA=;
	h=To:Subject:From:Date:From;
	b=kh24yk3kRzeE/sWjeooGu5LKTa6PBf7A7ZqZo5UPDW+bBrUeItLY6Zu6Vc0bntI7D
	 Y85Iss3xPUSadByjp8HNdlJhafpYDoI+6L1jADR2ZEycfuXjELjUShqi8WcYfy34Bw
	 VB/xzksTs5EYcIfLFFARGleX1qQmSinEho1mFi2/l7PDla1iJtGbLAToGkTje3GOph
	 ilt6uQyg/s6e88x7jBJfWNozW2dDLgZR58FJq6vQkSq6ulYvEUMmsou8vp2wWcyZw5
	 8G38LRDr58EZK3Jr/RWQcaILQdSHJoBkYvefqInKZPX5G5WGuKYSICaI37ARSkwZyr
	 Rm0+U59psWB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DACA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693259357.29365.2105426284766631510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2f38da9bb2b1faeebb394610e5ea764c3bf5a271e4b18cd32afa8798f497b3
Date: Wed, 03 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756932593

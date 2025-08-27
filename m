Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1F7314B70
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756284594; cv=none; b=dREOpkACgg0jwqYcS3BaITfSF4DfBXdhHH+zzVCaZRXX/R4Dgp9vK3i6hXNJP5S9HMIMqbSygjbGkfsBGC3fTratB1KpfGhzTGTibmx9+RLOoIQNbjJaFlNq71y+kR5OMB/gsI9p25PdLULWlEMi4Yu5v0pM9NwN020prP3x6gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756284594; c=relaxed/simple;
	bh=EaGow+/Du6hi+xf7YoL7fJcsuZAHEajLBwWsrJ+eMhI=;
	h=To:Subject:From:Message-Id:Date; b=A0fANCD+cPAoxqL+MrG7PYtNiZiLmvVvgmCMZiDWrMjvwk1bVwmQiu3jXpcPE56GO+Xi/IvcG2efJLfHYmhtHdu/L8lK88BM99ddFQaBF7cinv21myU6fnctOfX6o+grZE6z/aDXzSSLKdQ/154SH6CPq97cyT8Ji7nOujfrWE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4SnDcwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4SnDcwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756284593;
	bh=EaGow+/Du6hi+xf7YoL7fJcsuZAHEajLBwWsrJ+eMhI=;
	h=To:Subject:From:Date:From;
	b=p4SnDcwOXZG4yrKmMJcnAMt58LmApqCtvTzU+MGtR9pQfGal8lPNMOg6GfZ4v0FQf
	 sDMs7nz0gbOhTeJjvHtJz88MoMjuGFkhkmZCOjiWQlnLEBR74jSNp014wJRvWIPS4W
	 ZJzByLZ3Sfz9RCFWUutTp66pXwHlISSvDGfaHxp2COQnKIn2ZH5c1t4EfuHytw+Gs4
	 mVWzg9zMbxEiEN0FB7UPPC9xa/x2hDNIdajROBvB6VAeFu6cNKdGpqzYH6Wa6xne9e
	 CW6StPj41csPbe65naWqWMxDDDbHdaZAKOJt1bmfvuzYyy7UMrrWYsX2Zz9T4G2ZIL
	 sCU+oZkGEOsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79DCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628459357.14870.2044980342179131817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e9e85320c16ebe61c9b5006fb52423055c21ee4417889deb366f88f60c4bb4
Date: Wed, 27 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756284593

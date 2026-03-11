Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C60440DFC7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773198294; cv=none; b=N/rb1iFNFcIyO0y1z815+iopmfJCkLb/rYGy/aQ8Kgpe5xp+UAeRMu7zPPESMsf4Eoi5X0XJ9lbW6U9+zQzATWi+jSlidVLKmzh75/zdaGJgOTduZ67lZBgVgcrmjnbsC62h0i64uVs2Vael8ox+lPeUHz80/Tih3MbsEs4XYC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773198294; c=relaxed/simple;
	bh=RM3VmCKWjbMQuk9LXF9F1yVYE2aZQZL28V4s7uuQKHs=;
	h=To:Subject:From:Message-Id:Date; b=V1jZ4ifzUwYKhpXXv7JwdgkdJFKwtCnYY8L2rVhq3aPoIFd6gk3NczFQzA/U+JXKM2GJO6sB08YO+VS8pxVhhqDDjGDCYNeWD2Ykras9uFooM+bmnf4qfCsZciBatC8Cy1Ipwk3GPvKY8heJSTkmrmYYlPKvQ2/+Kppiv2fwiBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAIoK7b3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAIoK7b3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF52C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773198293;
	bh=RM3VmCKWjbMQuk9LXF9F1yVYE2aZQZL28V4s7uuQKHs=;
	h=To:Subject:From:Date:From;
	b=cAIoK7b3vJov1fPx0+w/vKnq9BCwB6roiyiyDbo0F9pZCEvpp3DdPXfqAyWGzxU1m
	 6AaPUEKvSqHwLAgg/232Kb4sS1QiBGtNol2L1MlIElrazUQGbRm7uTy73AOfZ9+nA8
	 3UjVAMK8UB+t6T67eBsmOyPbd8WOhK7cG3HNBaj/2SalusN+jtzHlSobGCFizNA//5
	 uGXHINfZkg6mgN4GTjtH6UeiqRtmE+iGqwS8V1G/Qkx868megwN410IIUOG0C1ABK1
	 CLdqUT52Rmdi6u58QCCJ1Ez88TXb8pB+x2uTuleHfkCeB9mLy31W+YbcmCyQar1yqQ
	 D1lwbNqwssoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98521FD88DF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319829360.4786.390450118244841696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52ed09801f2ff7f4850060ccfaa51ebfddbc10a7bf647b85ddb8f9b2d897082
Date: Wed, 11 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773198293

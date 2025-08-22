Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C253424CEE8
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755860394; cv=none; b=dDtzJx5BHuc/56/+qfAk8CgHcefTXDv2aabp62IOmXrrrNt5DVgfBTfIr24flQLoFnEJl0pDdf+5vUZDG9I3bwTfeF2b0N9SRSrJ97zaoBrgD4+vJ1TDPGKJkFOhiaE4VueX2a9zY0OYs2jndygUgS3bhbm5OZUVrN8GueO+DRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755860394; c=relaxed/simple;
	bh=KR/sRz1l4w4UuRTwBGuBqYC6lumA33Cg/sy1iXw44Wo=;
	h=To:Subject:From:Message-Id:Date; b=Jhxo+qnAZdNY/qKNBchzuO8D9hNrxSX1FjxiLyXSczhoORH7M/Tejym5Hkljx6e53aKaNJNruU0hzn1nZ9ny1yzuhraR/EO2H7USJ2gOX0f8Kd+PzrPwPmLuBcLQrzfcWgYRtcwY6piHvh0A51KDi+YrgGjRUVXU5aNx1QZetMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaTBmCoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaTBmCoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F3C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755860394;
	bh=KR/sRz1l4w4UuRTwBGuBqYC6lumA33Cg/sy1iXw44Wo=;
	h=To:Subject:From:Date:From;
	b=oaTBmCohyZLDjNF8SOyoG1ADtic+wUMnbYkMf+MEaxaMEl14XhCYkvLZuBZ15vMVG
	 Dwskc3EnL+hzSi7yNKDpyAG9slZXUgBBsCShtyhA1sMDlZbbmOVnMlJ72x0B3jBUsM
	 eMNhkt6SvSPtsMBUXJTXRkvcRNXJpuUiKkIZH4nqCY+uUIlitTU07L0FPZP8IF1FbJ
	 Z8EPGCuxFbW1EmX2hM+jDX8Vh4+sdtT/IJov3DJdH/TOZjv6GRLH1wGwKfERtYsMnt
	 GCClsdsuGW+dU8UEd74Zj7tCCHfckaH0O4eWoIEGa6OTPW/0a/A5uJ3KQOPB5gH3av
	 yBWRybhzQJDjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41CCA0FE1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586039357.6094.8845389300250504315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55863a0bd489e842d2da5c1949ae6c78307abadb165c09410c55fdb5e360c04c
Date: Fri, 22 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755860393

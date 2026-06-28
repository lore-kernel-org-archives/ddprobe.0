Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372963BB4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782626314; cv=none; b=llcxMHQBCbP3oHygtyS5u7y/N/VWsndAUBKQCACuV68Xb/7VkXZa8KIBVM9FTjGy2T43mYnAYA1uJqA5Hjg/ayZbS3t1GFnzrffZl6ZWfu4Cu4mncJaeObdOwBqLtf3qe12+O8ptcWE8j4hE45EIAe2luWM6O4iooYkGOj7UYo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782626314; c=relaxed/simple;
	bh=0OHMrz+3J/SkW58kQ/q8rnBPtygMVaMvqhJ4i42Yr2Q=;
	h=To:Subject:From:Message-Id:Date; b=PYRVrLKx+lbQtwUpydLrOlho/g70QGlIfmDTpq2gKvAjrN7TcsWu8HG3bH8wN21VpmcrYikbigLOtgODs8JGgo7HoRObw56Kd1YmpBjk9mRGjM4Ci09dM74Je+iRVGAhCuvoMnGSMME9cxuxmMcJDMOhNqpTmFGztUlM8TZd38I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIaZuCa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIaZuCa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DB3C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782626313;
	bh=0OHMrz+3J/SkW58kQ/q8rnBPtygMVaMvqhJ4i42Yr2Q=;
	h=To:Subject:From:Date:From;
	b=YIaZuCa1b/pWPtL0wAgOQKSuzuVlSMQWjCLQD9cow7imkYRYdvmNRj47BYNRFf6CC
	 cEhnrp6svgEtcwaCVJPl4FrAJLeOTM94m62rT07JiICNaFB2gGR5v4zbI87GpfulPL
	 7nXt5hzoYGeHuP1vqgJNvBEfCMUwFSL9baiM3ZEdx4y/yOAY9vpPYB/TpsJ04qLE4x
	 uv1u8s1Tvf76VNuodVGMfy1Vv6BFjGTlkNsQ+qsK2q27LY0gsTLyjXdM0UiAp7EvSu
	 sNbbf7Sl9K5IRUNRY8tqGztHGQjJih/OJuS+CvpsTph/XTka74XC4WBeotoXQzEyre
	 G1PS5Pws0U3BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A931BC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262631368.24123.16835363238381286206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbebb8eebe9e28b3fe286f1198a10c60d4b8c36d2f0a300b40e32aa7dda301a
Date: Sun, 28 Jun 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782626313

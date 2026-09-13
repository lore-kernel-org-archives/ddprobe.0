Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FA234CFDA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789293034; cv=none; b=UTWlo2l1iIBghGYGdGXFHD4obBLLiv41iaw0ivSPf40xAbmDuceWov8cq62EfHpLTw22LhOwL1eN0KkZprGyRS5WWgPjPfIG83laFQlMBh1Q2xMVnQ7DC0Q4bYDTTqSQQLltcJQSyuBLijuJwfpADHAGt/Aj5jDAKlGByfib3Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789293034; c=relaxed/simple;
	bh=7O2JfpGh8fb+fO8+SaHuihkH7aTGCBQqDO/M1dZWByA=;
	h=To:Subject:From:Message-Id:Date; b=Xm+LJXQIr9sv2998yF3hcrzZMw01+Fb+kqedxjsR0hHwKRma1+wppWBzmWrGtFJ3rPRP0d+xBRjsi35NsK+QuQE1P+PVV51D4HrtFbgd8sCkN0ewYYqeFfzaOV1vIMJ/10Pnv7X8Qsn114qG/R324If8Dic4jdX+l7Iy0wV60ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUpgD/t7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUpgD/t7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4697C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789293033;
	bh=7O2JfpGh8fb+fO8+SaHuihkH7aTGCBQqDO/M1dZWByA=;
	h=To:Subject:From:Date:From;
	b=IUpgD/t7imSbi7J/kaNwcp0lyL2fNnqfWmy9suBiCgqMF1sNLihEGYknPNfl+fGIN
	 /rBvU2KtHHeCsFiDGuOdSqg1DklcwrLkjNDpBvapkjhEMHThRSRTSpVYdXDzKthld3
	 gbsZcl/vlyag2uQYJNy9XexgcY/Lknm1x2Bt8/KCtNd59QyN3hrYy0Do7j3xbLPrW9
	 KOyKYDEQ6YOECct3CXPxjKkHEvXT5oAiL8AjDFviyJ9jA6ybjWctAvwhMM15jyD3Oj
	 qnmvMIa2G1Ez7gga9ImGoRdR2b2+7aF0f+QbruWv/yrbaF/36O78glzAYhBlBTZMxR
	 GbZodkDMoeE2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95FDC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929303368.28078.2663077649149045533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de426b7047a81dadd706b0e20e73e0167b3418b932561752508477c9436a396
Date: Sun, 13 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789293033

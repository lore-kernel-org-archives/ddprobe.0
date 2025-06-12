Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369434C85
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749749994; cv=none; b=qXw3G7NksTbs22DKXzivHXDVJbi14ESM2Ec8RIXGnGXMx/1lBL1429EEuewhwstQPf2sd9p4amMxciCfrRaLM/WB54Y4SLWktvSZV337cOD99iSiTZulkSYeSJe2akRPWn2Z8DPLMbLRzz2AUHm/b3qgw2RUzx5rVVBTXNzPzbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749749994; c=relaxed/simple;
	bh=nwtPf+eT9tLh1D0QbA/ZCvbjOqufxpXJDwiRW3J6Hak=;
	h=To:Subject:From:Message-Id:Date; b=qSAL9Il7ZaYOvJiQJmxPeO3y9FXt90euMYO/E7Oo+MxNNxgs1G1VgpXkv5leLQYroE/t7FwtlX8Y8OVv3yGzA4W9xLmGQ8/DIIyduxeLf10XkR557Ss/mAq1XhJrCGmoJ51TQTAAUpbHoERTPUdx3fDbCIXXePRsZKqkyACAuiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8TQF/eW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8TQF/eW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D40C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749749993;
	bh=nwtPf+eT9tLh1D0QbA/ZCvbjOqufxpXJDwiRW3J6Hak=;
	h=To:Subject:From:Date:From;
	b=T8TQF/eWlS+87XFv+XYbm5pWBqoaTrD0iulm7LttmqhhzNfVfyLG+O4YFvLWspUoR
	 cQFGRnrty/QyfxGO+T2X+A2rGM4rDZPRKibh7uxTCUsCs66dCRymm0lG5cvPqWboWr
	 fB/rKkh2+PetBCJf1y1eibXmLPxVUvV6sOagK04GSiUY+i2RhSv6e3vDsIQs3alpph
	 M9Irw4HX59A+KwBfki7dQ6iTfMUMBMpm4u1duA7leAR2k/dv2tdR+dyq7hb+kT9Zar
	 tUoorqVOIRYjW3v8RrCz2QiK5X8Y6OM5JE1BDD/A8GKl9xOFfx1lPG1FxSGhP/1JKZ
	 cFSNiR3oIfRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EDC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974999357.1333.4813310657852469460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82472c9f6e5d287a4f2b13401ebd3fa5d76f6ca66df079f255342946fecca564
Date: Thu, 12 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749749993

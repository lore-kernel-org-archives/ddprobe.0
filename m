Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A373378812
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778668834; cv=none; b=fxv1KkZkE95ZQDTcC5dzSMo9K6sZP57DfWSiBBbyMX88ItW6BHhzbmU+mAvsJyzvhzug7xlFOgfEyCs63J/njKq9r54PvZkaENqEymIVvCoY7At8297Ya85k5JgiIsh9RiRCuxYTtVCTAwhlGp1AjQHBTr1Hn9+DA2t7A1Zoe6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778668834; c=relaxed/simple;
	bh=ukwgXd1tDjq2Nm84iugz2p2NGUPIU2+2G1n+3yaQmGc=;
	h=To:Subject:From:Message-Id:Date; b=dMxUBk/KPQ/+GEwpwhGMJz0O7gMx79fb7LOsbIgYsEJ9rL8o9pk48zfVrUHKnGGf/uq/HBU2wzel2qiCJDrbQ/HTUT4IEKPkYa7FZWNGiMT9lg6qb2B1P5d/XIlZcKDYkSv+Vwa1X6ZI2wcwc75vf9HfJmZXhEzQ1d3Zno803KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehNGgb+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehNGgb+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB315C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778668833;
	bh=ukwgXd1tDjq2Nm84iugz2p2NGUPIU2+2G1n+3yaQmGc=;
	h=To:Subject:From:Date:From;
	b=ehNGgb+f689tq7xgksz08HOSDs8wT5IE2u4neDmdyetY+/ZlgIuAtS+JeC5z8QJdJ
	 AQD+/FysxZrM2UH+l5lQQMEAYWfW0wsexuRhQMOIQrebo+Esfte2SzpjZjO/rEcida
	 y9HQ341wYZkZFZ6iMKN1e7X2nqwAyulhRVfkkMEJnA92fCcyIOE6kzZRdMACYXSRZC
	 9Fc8kEDl0/Q6GbaJAITWF6mYDi0hYVRvk1cbMDwF2I5AAF8+vHZs1ARYchFZ2iCzxY
	 SyzvMCnuPUoKDr8X4WBdawdgUq9INSlQ5h4KSqUB2uzGsoxPbxjP887+/ZFiBpxTDs
	 qgLyjW5dmwi+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BBDCD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866883374.9774.4953211652213589323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02adfd95d83cf0a6b03848831c2f5885fcb3fd559c22f375fa5f7a15f37f438f
Date: Wed, 13 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778668833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5011343CE4B
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789603234; cv=none; b=p6Ecd2vehiGlPFWd1HlUrtMFkDUj+uPqmyI3H45p56ErmZTjxtrYGl9txD11NujHvUrDcQedtlerDwdwjxTkqOBfp5PSLoHtyEQCxLZDdNd0VNePnbhSVF6YdcBGdFMfVFeOshOigzYcvLVu8WgPVyhsqOgUqR171aCM8Rzm4Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789603234; c=relaxed/simple;
	bh=T8jY/UwL7uoMM9/qON2mAD2UoyWTMOz+HDU+gnf5vPE=;
	h=To:Subject:From:Message-Id:Date; b=PaMeVi6knux1okynnPtPigskB0JiYPMyRu+8GHi3y9GX3jGvNUmwvL+79vEUuIxnQ/s6HeNGi2Z9KDw0srct2R/znnvCzHaVUFLn0g2nVDpTIQhYRZYWhgG719W/Egg7Reo4v4UxYrX99QP3phGlM+9zG+O9pkrquOxhnD9acuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rImrnqeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rImrnqeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41C2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789603233;
	bh=T8jY/UwL7uoMM9/qON2mAD2UoyWTMOz+HDU+gnf5vPE=;
	h=To:Subject:From:Date:From;
	b=rImrnqeoqz//iZpDXGetpzb/zP/TrB6dNNsbBMe//pC3c9RXOs3Du81kWLBFHdpHE
	 nI8mo/U5LCq0jNRpsvB6rwsW1hfBDXbt6lMndxyCdSZd5iS3SyZDA2G/hIP/pDdQxK
	 YXBo+cTvNFE837ZBZVRXOCKwHQhINcWs/8mxIk4Och3OD/8LE294h6/KUgvRSdtMyU
	 Mp/MytZ8vVwxIttYiT11oftCuKBC1VRYpkEM5R5LLM2jDV17kH6tWxs7ij+hys0YmO
	 Fc3EWRkTe070M+xXpXk24Aw/SfxYCGKq7YQaCqSFqMp3lh13m1AsdrxBaptyrEKbtK
	 JO+jwlVp63o1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF065C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960323370.3241.10585887679850100602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b0ff91938d075a35a1635d8ec9930e42ecc7f56b4c5786f39f897424660b71
Date: Thu, 17 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789603233

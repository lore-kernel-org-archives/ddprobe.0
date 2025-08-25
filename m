Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7C31E5710
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756123194; cv=none; b=YWLYbb/TyeUeM3KMvfo5WFSmMIYA5NobrOV8ogCFbVYQt289dn11BGzKFmRLhQhImXHMjz57H3p4e2cLT4orTvhkuu9EqlT6UVVozkZQaTdOlMNxOih1LugaFg1s6mvXT/3BcSudtpw/p6e81lL0TaPqO7654j+jb1OVeKbZU/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756123194; c=relaxed/simple;
	bh=+1w1lPJRTJIkcAk6VJQL4OaQ0Imw5o0R/WnpNohdHZw=;
	h=To:Subject:From:Message-Id:Date; b=bYOvhceRag0IcWardBwgUL278gcBs4v+YTnKDwUqNYTOckNDQbPTiPem6gLi4+KNq+rWEn/EOmUX7GovFh7SXeZGwrxIEV0JzvH6pJ1f6TLFPnwVLY2XunZBjssxtXZ8A9Xu4FcVqCfJ+VfB/9RJY6re6yqfp5IzvL3RHoJlF98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PU2CnaLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PU2CnaLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756123193;
	bh=+1w1lPJRTJIkcAk6VJQL4OaQ0Imw5o0R/WnpNohdHZw=;
	h=To:Subject:From:Date:From;
	b=PU2CnaLAck8lkn18rvZN55/PIqspjEBDD+NNdv+w8gAo+IJ5+QN5yHwSUGNYSISkS
	 lnSkVHo/7wyQGb3YrkqIsM8Zg63uhPaLAry0RQjkQA0xSm6seM/5yRC+4ZetYqjASv
	 q3YUKefLEB9+S3fx/+rIU9ajyFHwG2jETT+hFgschV3+3dX2L029tYgB3krL2jUulU
	 ZibugG3UP7X82knGlzdwOkiOpM2V2Kx3hXJdyOeqPmpIw4MdYBQ4X4snF/pr5CG7PD
	 beGQ+1TrQ85ZKglit7cVn5BpELE97Zr/WWRlSbjVT6M+gyN616phNB3Elq56TT+hgF
	 7HfqcWserEm0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94950CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612319357.31761.16340485926294115859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021b06cfcfb5cf4c908ffbe35682c05009e4a53926795c2348eacbee495208e7
Date: Mon, 25 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756123193

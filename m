Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3042318C26
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760182794; cv=none; b=EICIItwZVDZI0doOTnSaqNfkHjaNfaFDJsKdcuDjI0HiEEeXA4dxtL6AkMmC+lTy+aqiJWmU1ORbZXn39TDVb89MeFwMAZ/jA8X07ScnDyi4Qd8pKwfAs0KvcjVcFEEGYCb61Jb6H6n7GABTSF48Ww+MApLgTUaa278ssqGc838=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760182794; c=relaxed/simple;
	bh=jqWIaytskw0YCD0bgj3XljqlSrcBzmn330AwQZVUAeE=;
	h=To:Subject:From:Message-Id:Date; b=NLRHnUcmj61D2aLXurWjqIJx/y3YygVxlGuGe/mOPt3MabAIlETdFAaCgzZJOgMNGoohQq6po9pUjS3W1lBMU3GHvEABJIn11VMM1SwKOgj1y6OCC4XfrcIMFntM8q9lcnpG51Wh3/iT2Hh7BviIP0V0cRgy/pm/Bv0MXv9wFEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2dXpa+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2dXpa+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4672C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760182793;
	bh=jqWIaytskw0YCD0bgj3XljqlSrcBzmn330AwQZVUAeE=;
	h=To:Subject:From:Date:From;
	b=r2dXpa+hZoj9cNDF3S/Xwf3QRODgP8Dy1Ah4DKXxmCIqvtj3ydZQfwCoC5DuUey2s
	 VPIsrNYsmAb9pdotycPdLHwaGG9jSGdoKUySWFc5PPPMlY/Y2FIbVAQIx1s2MgPqYU
	 Lm3U5Qu4N0kS1SiZ8Q9UuS0V5SX5s0VCA4q5So8XIphXwmnluqAhCJO2mB5x6v2awm
	 E9hgvYVPHGFttr0m/hOGQzRaC/21aSSU2TpMuv3lCgzGaoK9+HJ5uR/U0nK/gxjE3F
	 AxjXhZ7hK7jOXnvQ2MOtq4PfrBrCWnCoDRF0Ry9Et3mNhF10fNMVfA000u2xRmiW71
	 OPlXqHEpJSkSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE9CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018279357.3319.14525428933913643501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9b56345f1ec1a4932c819d327a456106d3dd9d1c4103e35a560e7b6dbcc778
Date: Sat, 11 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760182793

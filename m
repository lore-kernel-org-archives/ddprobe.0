Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967864596E
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716128543; cv=none; b=YJfhdP1Y+KmNHVRsdJXXYTP7v3tOpnSxBtNVRnfNKRdV1MQSK4xV4L7qVFDpfSWtsOcMC6oUzYppKeQz0ZHdnfIrRCdc8/jXd6ZSXqqxwGy3ISY3lXGj5SOb0fDq1LQgcEcX8QhSaV5QJPOEajYYF7XECwurz6xZX8y2jegjexk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716128543; c=relaxed/simple;
	bh=PIVCOS1NvDRTEwUtgl39TfX08MPsA4lQnlf2XiHcV5M=;
	h=To:Subject:From:Message-Id:Date; b=DBC7Cid+CbJCQIKl2xE7xj/NKIpDf8psc5TG17VZ/ycndDGVzhzMCknx2XSEHw7Kon8x2D2OcBDZuPt0FQgIz3+S9cWkR3pTS8IDVV/IGjaUpdfiC5RyVbfvIfRsN3mC5R9m4G7yPJ8nYztKLYjcisPWlGXipGeiYvld47yjQXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0x+fFnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0x+fFnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FF5FC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716128543;
	bh=PIVCOS1NvDRTEwUtgl39TfX08MPsA4lQnlf2XiHcV5M=;
	h=To:Subject:From:Date:From;
	b=U0x+fFnpQsDe4jkDMYC9AH/cDMAERgKjLekXZMpApKkXX60orvh/NnjK6eSTBrBA4
	 XpCHogKbg3tEyR6Vbo3ecRtbF6yvSNrjzgDt+Q1ehCNGJV4eCaD8s7oiagF7SuQ2kq
	 iE1Hcsm7iXA5JMCVAkDQeTXp9cvyWYf07Urt+YO3hbQJoJqoBHlVxQoKKTUotXGCih
	 VyzAuPTHc5S/yHdUQyQT0+32p+otpYz9rsOo/Jjl6/3btCYajBaAnWzOi1nqoQI3Xq
	 c9H8wiK4WlenxSAaglp/yWsG9u1JXqJeKEyrEmtluNa2EAiE0aXyj0FK+gkSFr5BA6
	 rUripOWe4YyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED26FC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171612854289.11287.8810957676495000536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f201a64f7426c4908af8df411a574bc738d6eb34c6fe8edad2e3c34b9d94ab89
Date: Sun, 19 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716128542

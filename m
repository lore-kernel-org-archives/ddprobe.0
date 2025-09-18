Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2988E80B
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758185394; cv=none; b=Oz3i94dojMd3QP6QDeMD7r+92Lo/czraXznE2kndaHdHH5Ba0OVFeTNLoCorn9gCc/0ZDtHzsUgXaw7VrdnK6UZN4kfIjGmFyeNxFEU15rVNDVtUcxhWKKEjjKYhCAyL8qhsBXUHtDw22jS6RL/Navq+WrTVnj/nnadERn19LlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758185394; c=relaxed/simple;
	bh=JWUDd+qljWOhjVkgC1HHbD+UUAjvjoPsWsIHxbuV6O8=;
	h=To:Subject:From:Message-Id:Date; b=az6wtM52hgpRlznr20kPmvAgigESrRDgnnI/cCH1TVzhJJ/oosgxc32f7y1bDNO2Yqp2CdSWA92B315kd9qDcyWVnq0j6aq+Cs881hz4coAnH0Uad0j/Ug8KQBJtV9Ng7cbWTxuWBI6davY2jrpbB21fSMg1O0RGzoJkkS21Fb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3hNXt1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3hNXt1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758185393;
	bh=JWUDd+qljWOhjVkgC1HHbD+UUAjvjoPsWsIHxbuV6O8=;
	h=To:Subject:From:Date:From;
	b=g3hNXt1hmMdKzK7z191FOILCAeSk2e0aenrf/4yCeZqTp3Jpoy++bD89vWUcsh8fA
	 tDFySshi17S33PwJhvKMehRAv7ija3yeM3BEkphhxdo472vp1ObzmOKwmBv/5TTkWl
	 2obgrMZtw4AteNePpNLPk6mPLBu1Wdk7t7rxFQZbbHUw/acrw5RCkOte0/guN4Hxfe
	 JwqyQWi02BYd/gIpJlV0VZNF4SyJPSSquAdq3Y+hLBMCRPk0/qoSCYUBaJB9OV+fIF
	 q9OYOS49KRyVzJ6iVmIcrW2V8zMoxHjpwihZzbckk71mX7WF8YIBUUd4bZjA2d5pg/
	 /n+UqCv+E/N0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912AFCAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818539358.28642.14009746574083377321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3cd0a3e2ed892c7a5f4719848ccfc7c87851235486523b9af22c448b064822
Date: Thu, 18 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758185393

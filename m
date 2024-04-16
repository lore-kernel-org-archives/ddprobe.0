Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6189C13A87E
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713310763; cv=none; b=Z5yGQWiBZgLMYz+J1ZDyOWy491fJ3m02F9rNVsGTbFiHOFnvzBg9GbcoUBRTyXPCDBnxXKfaR/Ze1Vjbzc8QuzT3OstLHdpcWup3hSR3EhdQJcY3tf6VtpCXPyWxvwWhLU5GghRA3giHfjdHZkWpvFV04+AWyFR9CF87eUmQpcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713310763; c=relaxed/simple;
	bh=rSdlRnMXVAVyOOEyc5AddQB6Xjlwlr7mTgks/Ydu57E=;
	h=To:Subject:From:Message-Id:Date; b=Q2I0ZvTUulFi5MQtuIVXcrOw54XYWfbNQBJYXmqL/2ZAFHoAGiQ/coy2qznGRWNFAcOas5BvFov9eSMIhwTJGOo2qs4eCmO8qhozEZJGk1SYWthsnkLjaDI3bGnFQMECumb7kUntaqVqRjEK0gOOPVMkh+tsg1sOsim2Bo3vNhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeaHES9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeaHES9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3C4C3277B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713310762;
	bh=rSdlRnMXVAVyOOEyc5AddQB6Xjlwlr7mTgks/Ydu57E=;
	h=To:Subject:From:Date:From;
	b=oeaHES9EYQrfK5S6SrPsFd3o/b6P8HhwLa6A1WWDzC9Gm2aV4vPvvBGxwWTmkMUAY
	 asXR6XKBc5ZFS1MGjwfv57Q7qagHniDxFiX2N2QMMbgCVS8qnQV0w5SqRB8/bkbVv3
	 bDGnULkZwGAr1tOIAOtrwX/Q26raF5Kia0WjSlseDi90P2D63SgOLvTvFwg+H6mIP6
	 LG379qfk7z6Wd8vfIS5wqSJMfwIXxT1YpatJojshxk6Ik6jxi8J0zK6zVNezKSlnDs
	 /EN1rulWnytkeYXkAb6aeBz33UAgncnfENXmjiBFP7ryx+X4JwAOuSflbQax9OmP6j
	 Y06E7OMWYthBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA60CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171331076275.3328.10590551106962920002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded1a5e33498e711fd477b245aa0d3b20f6995d3976e4b93bc943f9878dc7517
Date: Tue, 16 Apr 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713310762

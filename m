Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2454037F74F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773427494; cv=none; b=Vw4TM6Xxelyg4lz3qdB6g7s6woxiYR5UTjJGHwqXxU/1S2EJnQTOXPEyuo9RFLzkY2Iq4mR7sfit+okP71hRF2QoIKEyp1iwJlHsYNw3XvBWg7VqnNUh0ZTyLeggu7aBC4Wuq8HBDwD/3uwbtjD+jz9PtQghSceIGboQRllFnfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773427494; c=relaxed/simple;
	bh=d77TFMrpobEkurL2LZmRvqV412oxXbqPBc16xL7/uUU=;
	h=To:Subject:From:Message-Id:Date; b=X46cE/9MBWg4G3XYmsYEpqzgy+or8L42q/y1OKB0ZTHazrHyUp1jWlIsEufoayOODrIMai7RsHXXiGvGviJxKk3eXYpMx9yX+H0OzvbWzc8gAxPAGhA1Rs3gSE6CCu437nq3/GRKsXXIKeq7D83TFpeVXQzwICZkn5iSP9G9pQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoU5axMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoU5axMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6015C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773427493;
	bh=d77TFMrpobEkurL2LZmRvqV412oxXbqPBc16xL7/uUU=;
	h=To:Subject:From:Date:From;
	b=JoU5axMGWg88kSVGkJMpHp38PvHRa5XnITLI8HHG2WoeuwkrPPvtuTX5N1ll9FfB/
	 bM/mTdFtklT54wcrhb66v1vb7fjIAxvuag8CvS+6Ov3ogUtgypETzrJ7DzorWmRpXf
	 UZE9scx+ZnkvKPbjPlj33NrlQvmK14svWDd7fGu8qipZgE2oOX2C9ydgtPh0t6wRnR
	 UAOMojQkPNnlAytasl4uc8g7QZqPUtuj1Bc+J7+XGLBBVqNGz3wNudUTestUQ3WKLl
	 WNcxam1IRrEopmgd5n7bX3hpBSjxHTPOEMhL9lAh7RrlkkiY+5vy263qibR5ACzWHK
	 G1zgPbrq3OMRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E19107BCD7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342749358.3210.411468877018263009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1551f4d2114e4d0e8e100027a55b7a48f560af7655728769ed4bcb5e4bbaf3ae
Date: Fri, 13 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773427493

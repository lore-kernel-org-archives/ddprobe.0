Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF4B2820DA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307394; cv=none; b=f+ZP9rvqAsNZDamRn84aLoSLI8cNBJpJ+X6+Uigoff9zRLAWcAyCkRD6GJbGRDzOiYq+teZtL3TeNi95/AHpNDKyWjg+ODmXf0v+UdQ8H3HOns0l+8AzB0xtNSaLGKvASjc5ePTPQhzW+ivNnM3zNVDBGmYVbJKQYak3eD5ITd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307394; c=relaxed/simple;
	bh=bCTv1+i+Iubnzo/Q8NZDa0Ncj+WnA57Q2I9vUdqdJX8=;
	h=To:Subject:From:Message-Id:Date; b=mDH/4tM1YVyJh/gpF4rB3KNKLJvaBGyXe52ERaMRfaDZDgjDZ5Jol1yJVONFpffT7Bszjew+oo/3qusabhOVW5C0gk519M81ON7u3pOdA0zM2yPv+AY0aKgixCcZMDHGUciXjmwSV3miGpMa2pwRDvsEy62/gLzTCq4F9sqAUus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F72TQe3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F72TQe3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63ADC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759307393;
	bh=bCTv1+i+Iubnzo/Q8NZDa0Ncj+WnA57Q2I9vUdqdJX8=;
	h=To:Subject:From:Date:From;
	b=F72TQe3Wxi66tZRYtIACtUDrCFDbGXSqCRy5/wzL159+8G7njAnW15o4RvsfLE8O2
	 58BRJwLkYIWZ5db4cPCNMw34qBic8jaO7l57ZAMn3nckPYWMVR1ZTYxkc/ZZauYZhz
	 RfmvD7pbi5fmE/vFBPUExxXStehG9N9lEn9EJkHqn3Q+hmfx+jCfRDtnhM0L7Dg4KG
	 2Y48mCZuT1mihLgyrqi4Cva274p/oNRL3LttnaD0gQ0Wfn9K131eUyePcyDBEMvMT7
	 Ov0eU1nKdl0nSflGVcXjhwb1Z7PhDwgTDdB3pXYBdx7AfrAHhKaWcvqh7bx0wn8DEO
	 mgMtDbqS3Z7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A6ECAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930739358.13441.9191866509285225152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03e509b014261d76c464dfb026de92bf25d8821085b89d4f19284cde2eba21d
Date: Wed, 01 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759307393

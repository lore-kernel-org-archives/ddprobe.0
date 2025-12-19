Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8FF2253FC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766114034; cv=none; b=ui107rlUNEeLBn9oVGnIl4A7TNlvuIqZ6LD+2DeDxprzoGZj9QIbWwmVJsGR/go3vh/rBMcFOIEzwMBHDOnGMaC/pQRZbwdLi6btHF8NTTlKUEWdWvfzt6Xfl94aVn9T9R7K3Qf0tjqHmpW2/Clqk+eQsRPXbvgXPQc0CMAyvNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766114034; c=relaxed/simple;
	bh=OFYJuuTqMm1voFxoPNCj5uqghPPo9sB/XR3wIHJauo4=;
	h=To:Subject:From:Message-Id:Date; b=nd9HkDo4jP2IeA7QQjn9AO9r5wkOVtuGtkmzsPzI0rnePSqoXXKMFAyX4GhkOblOBFfxxOnT48sfs7RtTFnpr04U8ffNb5ysLdEUD6Nb3DFFFhKW3yArwe2QfaB+0RFs7YDREELBbCuNajFOBnr5kvEoH8Cg3MouaCXp6p2qQUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrPzxgiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrPzxgiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B15C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766114033;
	bh=OFYJuuTqMm1voFxoPNCj5uqghPPo9sB/XR3wIHJauo4=;
	h=To:Subject:From:Date:From;
	b=JrPzxgiDZqrc9dFhS3zvvP3Yg4XKT05jDQSeMQk3WWkaclINXWHS/U7aAxYa1tmd9
	 SdbU4DcqL1o6o3rZrJM/TPwy3HfoK10lW0NeNKiZM6f0CmFGlvGaZxqXPQLktEfG3X
	 r/c7xBnKAnpr/DZnT1rfy8ev47OKt4BcyAFjwF+ws65rSL5ygpZW8V6RULwYLM0be3
	 1S0esXqEf042KXzb1R1iQ6Ufl7m5E+pZKlCgH2swNrVucAdsQ0XGTS8R9eyWM62woK
	 46phlWwcBlwqyohXVY4yr7vyzv+h1Nw9f7qmKPMEoyftzquAMtYtl+q084j3pnZRUO
	 VPnPPi8qeAw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBED711D3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611403358.20333.12243557943331723287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82290f4fd04fb46fe1921ed8343d7e1d40f9591db2f32dad5e109179b05ce76
Date: Fri, 19 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766114033

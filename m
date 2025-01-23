Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3446A136E21
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737620154; cv=none; b=P0dgE2MFdgICbfWz102+DiD7VDVrV9wnaAoJ16BDus6DO8SM400k8r2vD9kSdRvBFlmrdtzS2lhoOE2RqTXwlRZskz7puspMeZ+K8l0Yj00fNlP1fr78TklbnXADxeOiAPErMkmgJZvj170CQ8FPNbFtDOtDwisCIzbvJGDLOtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737620154; c=relaxed/simple;
	bh=PlKP/MaxfTnOokVejgLwNo9DtOawO09F6eu+2OE0mMA=;
	h=To:Subject:From:Message-Id:Date; b=jbgsVYCYazsYgQuLp5PHEaj3wC7JQnBVrYJjP9ujVzT350Mn+W6t9E6Iyo7lAkSrl7a9mWXAMsqXfjyF9ZrioI+du5qyPnkgyBIRvSVIDXsHOEHrUZ/laOVngINx5ri9Rz3tFxukOzubQ8frqopSz8hbiNmvBLR3wYuIzd3KuRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhAwU9Ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhAwU9Ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD757C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737620153;
	bh=PlKP/MaxfTnOokVejgLwNo9DtOawO09F6eu+2OE0mMA=;
	h=To:Subject:From:Date:From;
	b=AhAwU9IaWXADMC2Sdt7GM0ZQhSrp0AvUJuS9xhyYKF+JCAeewqn1fX37QM0wc8U12
	 UMRgK7M/W7vWmKo55CQBxIwfBqxyFeC+w2vS7hulXtK8yRCgqSCQN+iomFxo3d+ucN
	 zL5xWRheYT/oocTMiKsonpyo+0xr9XD3zbt0UpXVlLzh4aJqZ49cF5wc9YCbe53u4v
	 swAsn9y8zgZscAYHD9K3cU2AQJZdfflUJWzBROb3wtRYBknE4bQX/JqcjK8QbVkSee
	 C0paje/WFn8Cijc8+Q5aDvMr5GPOthwv2Mi0h6sYcyXXrTlbgO+OmEvzPhvhys64hQ
	 /t2LkoT75QN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98934C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762015361.3151.10552235341673210267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d45ab75bdea73f558cc5bd73ac6879dc0a061fc75156910e41729001b0dc266
Date: Thu, 23 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737620153

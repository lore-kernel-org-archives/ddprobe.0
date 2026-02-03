Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184EC2F745E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770104634; cv=none; b=BMy6+lJ3UxumdU6MxhjARs45CtgwVOW9+RfaUxqpGgyutgbWcVZKxP3mvthPE+enFjgCcSXUHlrxuN9J/T2w7p4+k/HbEKpsRHemrAeNsscPAyLfmHvDj+UfyuQprJzGRKGwGSGAuMoXvBQYWKljh7Gpk5aBhQKu3XGqc+e8sPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770104634; c=relaxed/simple;
	bh=y6u367hAoBRwUbOSxwU2HQO9YB0j+tqs1WSyfuC7Wdw=;
	h=To:Subject:From:Message-Id:Date; b=a7zPFBMLhwngJ4svXT5PbsFvVK6j4xMu3Q2Tj9G4t9MpRFdamP657lU+KT7rpLUavcIAkmstP05haXFn+Pkj8kiuMjGeW2uAT6QUYEqE92oZTd7GKtdRtzGW2QfZS7yopZoTWvtGS9Vs2SFRHoZT6MpLPwtfFVo4U3p+QITJhvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k87Bz60U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k87Bz60U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6042C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770104633;
	bh=y6u367hAoBRwUbOSxwU2HQO9YB0j+tqs1WSyfuC7Wdw=;
	h=To:Subject:From:Date:From;
	b=k87Bz60UtvtGSqJxeyXPXrLeApE0aZRsRQJod3MnfrhkcnYmNYXFI27nv+b5wRQMQ
	 rh3lHMO9s+9q64FaFRO6xLSsN2SNRtq1Vw8Pt6iJznce3vAnRQ1J8FIhv0nZActJKT
	 OmFW4f1CMGt2UhMWzGB8cSoKvYB8hlhtOScOHkE9uE4lhgk8nHUtIxc7ZHogbWgo2w
	 fpbS8NoSRyGoS8vSGuzb5BMyc+mP347pavDxobLbNwprY04RSCZ4O87sVhzvg743gs
	 pHTBh/SSQceUlT2GbXtu0TFdGwhzt9mGu76mKKjr1GmcJsdPASHiSeLmg55aMrG7J8
	 8+AUtLFeU2foA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B692E8305C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010463360.2186.11142317572695890610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d5afbecebd5b19ab2dfe101f1c6ce32d1b903bf0d06376d1c2d91bbaeef077
Date: Tue, 03 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770104633

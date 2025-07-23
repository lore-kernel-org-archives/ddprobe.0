Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAF21DB958
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753240194; cv=none; b=AgQmI1w8EYY9T8zCPQnZxz+vL5ZeaEPKDDXQNnsFQvqGaee/P0WwdE+4S7eUQJNdmt/V4fmTSJECXLKWuQ46wU0jJxWPpd5sfFRrOuLxp3CCmst0IsGMJD/ELOqzpT+yLYknM6RvdbAJbWb0s1YRa4s1SOPecOOXecNnbk4YyyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753240194; c=relaxed/simple;
	bh=QSlybVkalwEy3aHZDTl9yeXLawDAsjODK7We4KLLcFY=;
	h=To:Subject:From:Message-Id:Date; b=WZJqWF3OhQfurn+eV7bG/NXhP7DwhRRGf3XCBeIyFCN3JC9RSbtfYqmGrbI8qsX0CENsbfj1fubb3rtD9+ABfmPfUr1UdrYWVwjQUQvtlzMV5SCjq5K+mdXEXqz4iQ2v5wc6+iEx85IbXSm9QK42OoKSkAEtc71kN0pmIWOU7iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTCSt7w1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTCSt7w1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F83C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753240193;
	bh=QSlybVkalwEy3aHZDTl9yeXLawDAsjODK7We4KLLcFY=;
	h=To:Subject:From:Date:From;
	b=kTCSt7w1giZIwplMWOBVwxesFEbwOf966hGhLugCUKEJqLclWegRTvXueqA06AP9s
	 9RQdSkx23pMDswm6aXOIQ6y4Ufspvafpa6NtLwTZI3knIrA4qQkqiup3A0V1PQP3+N
	 JTLxT0+UXJh1FDDsZC1zHrEcaWxAMITkuh27qGS1aqn5xP+oKCftR9Bu5jrCRv6x6S
	 LSd7JfzevuSWLe5EJIZTuGMJKx/EXFgh2cQGBFeeL/FGYpeTkvUDf6orSeGnr85HGO
	 XeIb6yVEjQi+Ix8jpE36s8y1nP6B0PlR3osFA6d/cbfmi3D3WKBFCGjOnLY+H6DUNB
	 37aYTt7/ehukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F736C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324019357.7801.7611940419058836110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db28777a7a7ea77d203223420e44be657908c253d024b534f9ad2325562807bb
Date: Wed, 23 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753240193

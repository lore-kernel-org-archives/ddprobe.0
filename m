Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F2625A64D
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737075354; cv=none; b=FqIqBt2XRKijwflocyQh18ap9M0mOV8lcMOyQXrZvbrnKjtzO/aY8qPMFEEd0b/bOYFKjPp3/Iau71gcGyYjpBGRErIzO2STtfL4ryHSTxAAfQgWRkq4fg/BaM0z+37lkeLS8KIKskibN18lHTlhJGJw1yqGFCPBbfW+3T81DCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737075354; c=relaxed/simple;
	bh=nwraAcu7dxkfMaR999USt+ix5UCx+0W/ho0UMQyBiZ0=;
	h=To:Subject:From:Message-Id:Date; b=aQhXD4Z6Sn9Wu2rBJQ6yfRWpKYK40W1p8tRTXQlj4LqyeXyhj4wGVR1eJ69Ey3pHKGNTr0Zz4MsBtpA3HiGYO8CM9PHccOcMBD8y01Yc+VeC3jPmpVy06SWppB0gPskhPSsJr9zn6bG5Qiocwlg/swD3EgVcnBVr705dMEUTPlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqvc1mGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqvc1mGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F4C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737075353;
	bh=nwraAcu7dxkfMaR999USt+ix5UCx+0W/ho0UMQyBiZ0=;
	h=To:Subject:From:Date:From;
	b=nqvc1mGTKpmoCSZdbYy0XfZcThJH4g4nesPNpdBm2JLJ3RVInk20iTVEPUSff0uDz
	 NzliVa6JByEp+EMLvrXrfgclG2uWwCoBBZ7h9D1Xx5sigjbvvU7MkGrLy00ymUmD7o
	 5NGRzBAxntNld6XARKLZkZrJ1zo5TSEQCArhH9piafyDNXob0sDR2DHTe3nBcyi/ww
	 5a6intHNZGe3B3qJQR5I++Pje+eoN8d/YAgRuh8uS+VU7c55o2qn0SgSdZoebRz3CZ
	 dcbAoM1xSXyKyHNuIWTOQ9gGIE8OC0OKNL2W5mafY+t3cdWiymoGosH1oahKUFjWf8
	 XF7Br1jp8yZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F98C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707535359.31698.11073108889321744525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002dbaa5ad57d71c6af7faa38e7f1aa8ae5190346036d0a26c34bb9045aaa5af
Date: Fri, 17 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737075353

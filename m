Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1E23C414F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784534914; cv=none; b=NSXbNA5Mp0G1Wb8/p2NH4hSCDa9Rp9n7tUPj/exHykf0BhtAODkRQfp9vdEAOG0f18TRBdwJc+G5eXCV7QWt8C4Yqr338u3mkUT7ciqx+zxG4+GyFmx/XvJV1bQL/Vpo7redOOvxPSpi4ux3VDxbwvgSAtEb6VrZJ+sVjJlLedQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784534914; c=relaxed/simple;
	bh=hhuWEifwQMoL7A/i+oclq7kRecbYc0AhXAWYDXlCIt8=;
	h=To:Subject:From:Message-Id:Date; b=jV1dZxh0We4xMVdiUuCRWFZ1CBAqDGAqXDK2EOPUkvIBEOugkrsueX9/vZqpVFpgGfEk6a9YcTQpOf0oC4xXdtSSv/W71cWyJf5qMXOaaf1TO2TTbN/bGMec9sOWtGlBtZQcBD0GqnDWrJKH958e1+p8Gw9gcACYMLRYUnHKHbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgSPPU2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgSPPU2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CD0C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784534913;
	bh=hhuWEifwQMoL7A/i+oclq7kRecbYc0AhXAWYDXlCIt8=;
	h=To:Subject:From:Date:From;
	b=BgSPPU2B2p1O+X1dg+a+642VIug06m6NglXPjbJxGM6qYPnHX3t4GL49LPCWBxxfa
	 go/eRzSnj5s/ME91WlAnY4buZtCSgrjQ2rUAQHL6hY+eEVS9zqUQahNu7gG8Nqr3LP
	 wGvsuXDD7fKpAA7hwiqXQ99fo2hUI7bMug4nJJyPZQXjIUuh4hQom2inopt2ZNBTww
	 TmkUe4YBcFDCRyeL6jLcNiBkWcpJkA/CHQXXDU7vcrvoj9oOLL5+OqxFFStjRZUBlD
	 pyFohVydeGogV7EibV/FR+khgMsycfd4IFUofZwwhFi8G5hnSI6UOiGMisT+/+oYNq
	 bmyxjCDWcza7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0EBC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453491376.27257.10364237896632392853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5228bd2f265476a9b42c3d50e622135d76c8dd88309e9f233a6fac9605390379
Date: Mon, 20 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784534913

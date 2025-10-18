Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281EAF50F
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760828994; cv=none; b=aRj+F2Oy1LPYkkdYF8u47NaNyH7NZhby2qINvhDIqBE5Lj8N6yirsvUdlfaGwQoOhJ76FrOVhQajKkMeWmuPEgUajftgjEYNu2NomyXRgQGR9+ZVyY3/Fcx1iyiSolj6WNuV4kzK8Oon03kwsoyVxee61WwNURM93DLDskpjick=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760828994; c=relaxed/simple;
	bh=s/h4e4TQx25ltfcNBJBWCfW/J/nSkRiX/LssZ5xHgIQ=;
	h=To:Subject:From:Message-Id:Date; b=tc308as+2axxKSh0z4RWMD1gRmMbvbu4iACYatsV4SDyGc1raTS2t9PPN1OCbD1oVnYrupq2igejYiU3PxrEN3xU0y93FugjYPHxOhllHC3UxZKWjHbf2f8WjaspVdLVPUEMHbrdUunokptusFrPLyAC+mpmV/SQXdRahAN9pi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1AA0Blx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1AA0Blx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA6CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760828993;
	bh=s/h4e4TQx25ltfcNBJBWCfW/J/nSkRiX/LssZ5xHgIQ=;
	h=To:Subject:From:Date:From;
	b=i1AA0Blx4whyPzLs1pZptks8l3OQnm9nfqRK9gGFAc3TNgGevk5477q8w0zg5hNXg
	 8dbp0pElbyM/o9BxxONErs6x33UXeeegXTRhK81WMsN8JSE6n/zXing4g0PXCHa+hO
	 5ekrPifNiOJPSLkAhm01kn8PCze4mnm+cGgyWPt9+f1ooQV33oNYvwDU1TveZDy1ey
	 Oc+AsOPLwmcWtOyotPvV7VluwrNr3lDxQj1rxyZiG/qGuBJG+ZLbTwV6iGuKfjjkC2
	 kqXOzmphC8v06cGqMPasSMWPa8YpQFRopgNgwOJ+wroe7BPOLb7C6U968zE2nkeCZ9
	 fcvmcroevnFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA8CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082899359.32496.13375776724829203713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e569f004099a1b2bab9460fd75bd4e7a7bd1066163fc73cf7d15ed84f3220f
Date: Sat, 18 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760828993

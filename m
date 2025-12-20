Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D385526ED45
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766243633; cv=none; b=W4UawTrRCwdN58s0++tQ7YPKDkgT3E7u/vBiZapqg2KCxVtSwbickhar1T3+JiKwNel++/Clh4d2RuTyy4m86EbcFXn826LAmzUTHy3+XAFn2JkOlHEpeX/Dyybb1W9NMEacvEGUWTaOTLQ69Ra4XWaNTSJ+rt01VGVrN15Y+fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766243633; c=relaxed/simple;
	bh=F4TXRKelKgxFpS08+MhgtQsfDLLuJzqDMuMIOZfK3Ns=;
	h=To:Subject:From:Message-Id:Date; b=G9NK1iFQ5e02cj2+5HjKbQA2ad4rzS3Oz4DA0USUMu0IcU5QrHM/iFmQ++GcmAyhIQPV8R1GY/esj4dqUI55oK8hO6LwFCp93dEB7cOBlyZNWJGjnzF1pkejE5RM3vymMrJvMwQQDyfJYhcmS1cyYsUYUD41/77w8dx3vJNlEjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2C9irZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2C9irZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766243633;
	bh=F4TXRKelKgxFpS08+MhgtQsfDLLuJzqDMuMIOZfK3Ns=;
	h=To:Subject:From:Date:From;
	b=e2C9irZQ7GYi+gDnz+YqK7Msz56dpxJvkOFGBQNVH4eciXT8xxZ2lPn53MkLo3KFc
	 C+9pxFUJIMpVMFYEcskmPSw84prxbSyW6wgACUU9+OxJa24agjj8aUkssvQXYwaUbP
	 3wduj5QmZKYFxzOWjY/UQ36XksUzub4Bkm9Q9Q42x2sLDTsRZufrr2MWQ/RENZfSHU
	 SJRht7dw039cVHr+1jZfI8xsBDRaEMNPMXr6MRhaELXP5W0oZLZXK3K6ezvAVQdOYv
	 pvmDNSL5nsTqDku7pz7DV38GMDAp3k8Uf2lzkgux3sIlHIQ2KRZ/NUemm2j9I1fv2Z
	 XL/mt2iUFpJSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFADE668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624363358.11311.5735095469100590202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65beeac4c892f3c716b477d23afbabd6cfbcb9a557098580b0aa4b5f10526122
Date: Sat, 20 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766243633

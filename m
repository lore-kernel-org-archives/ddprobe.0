Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533DC3A4F30
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791645034; cv=none; b=MoG0UPc9RM8nGvPyDXaQFx+jJGAOGbZpeSPQzlFZGhGGg3Hc1p33b+M3xs/Ud4TOHletM04Jw8MSl/2Eu3e/ibDrndDR0Pkg/+w36JaJWFZTLqVE7tKGCMhyJbMaXEA4VGwHfZijLWkCsqQKR2zWuslTt9Vioz+8Js8DL4UbhxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791645034; c=relaxed/simple;
	bh=6iXQF9rbH9Kg5NpytRAySJH2U7O+qMRD3h2XYUKkGKU=;
	h=To:Subject:From:Message-Id:Date; b=huwnrBSVt32Uwe+ntLUmDziOzJZAJO3NWJB9/jUZ5q6bxRUmRYoV+T98ebSEOw707Qv7hDZZiktba2f/7L4elSxfEQetEPr6oXIhtymu3sONtU+tEkBG7tiUm+Le3aIqSmNwUcXaoIjNaqoOQd5xRLeTvHhjpBEO2cIqbIFj13Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8633+p/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8633+p/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD35DC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791645033;
	bh=6iXQF9rbH9Kg5NpytRAySJH2U7O+qMRD3h2XYUKkGKU=;
	h=To:Subject:From:Date:From;
	b=H8633+p/girEpZJBWVDPMG3W+VONerP1XjfCvV+YT0+cMsGJCFy72U22Z+Dkllokd
	 BjQnD54JlMvAeO14AVUMQ/sFctmkWY83G4/RvJXd8MKEgQ+Bukjen/O2DDbDn1wu7Z
	 iayYjT/ObxAI+LkFpMn32pY8hqxVvUhOH0rWlT/wi6JzfGPceA3QjIRTNuySglHJRW
	 okjf4PkJV2o/xw76iU2/JVd/FHtS4XIubMxyb5PnBUSgi5jnH4vSUhuXd8cimnLyDU
	 6afIz7gB/5bDh2N+NqO76XVbXKI+8MpGioOh4XtNKrJqKVc7jOv8V0vESyz7nkarV2
	 1RdUMAqrzaodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9865CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164503368.25015.2960938920277021675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c76c4a5ebac570c4b68e6937d4e96dbe93d4f824ca61c8a9cf05506ebbe822
Date: Sat, 10 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791645033

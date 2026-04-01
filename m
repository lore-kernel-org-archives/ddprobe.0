Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0447F1E5018
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775005494; cv=none; b=JFgSm2fXr8YxiFLIr6IcS/wa5jb2xLrKv3+82fLbozWRcifgc4Z9RYgLBTYJoi0UBChwN9PRhfP3xoM/VNfHZBX6ZwgnyhwrfjgRbrL8sXmGzhjFZBP2HKtTtPp7IF8Ofx6Dx5BNtO4unYsVyOtDz5PsZKY+J6qK8R3/FxowFnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775005494; c=relaxed/simple;
	bh=EnoIWhDMxf2paIyfkY+ER/u8hdBpEnz52M6XTeRMi/M=;
	h=To:Subject:From:Message-Id:Date; b=Qk5MlAIKCnJys6ksH4J9iXyyq/zhkcaN0V+yLZlWgQfD/PkgcSQ8wl1WNSuLWHKEZx6meUgdXWegIfx0YSrqOwTLM89t9GSJ7+tm+/ZdvRDVm3qEcVXFt+13jTSUOZG0UCYyOC0bDnPXIETwk/8+1etZmLngDs05jLeYvQKgLn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtC2VIqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtC2VIqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3015C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775005493;
	bh=EnoIWhDMxf2paIyfkY+ER/u8hdBpEnz52M6XTeRMi/M=;
	h=To:Subject:From:Date:From;
	b=AtC2VIqEJG6IebC8eRHysCoEMv8bYlbQ2frp2xWKPIfM8YbBouWsgXSZ9xpf2AeDg
	 av+CyeaXVwyCXedDJvKKuHgRPxT+a9n8Q3qph0zGUfDgZ9z9wLWntP7AXTgtozNWty
	 pLthKoSgvRfQwcsc/ndaOMpPUpASFjZenwmphesLQsW5WPKOdCHUZQIEywd4CRYrEW
	 Es6OLwwb/8EToWB91UwLPCKiUKW8ZonhmYNliIUujXu/kv0j87SmmAeyhIHvuWgaWp
	 aJOzyujnuRiDrRBmZIyFxXwftm++XxzHf+svqPFaelsseMKDNH8aH6jy8pMiYwHEiA
	 ynTKfMSVQHMwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9288F10F9314
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500549359.30081.14664085509907974203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0faa8c1bdd71be111ab12dcf7734a170e12e8eddeddf159294f3cf08314612c1
Date: Wed, 01 Apr 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775005493

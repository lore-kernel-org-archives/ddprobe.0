Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43673374A08
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785095434; cv=none; b=j06SMH3GCkKjpxque38MGI/L4qCQo03EwmF66i5TiU65E763pxgmThKknrtEMGbaflrlBRehPpQ5ANvUIYlk9fDyP/Oyq1vOst+Tt6O0dvrR5eYJbqXl5X6swiqNkS4ZybWLXKtctqMDT7ay8gbt04yenDGR8nn5RAICGHtALwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785095434; c=relaxed/simple;
	bh=WYLpFt5xjNTCP388VXnLWnyNuPnCtWhP2ixoqhkycvg=;
	h=To:Subject:From:Message-Id:Date; b=TSJXQY52QcwU+fcEtxO8Ra+hWEdgINQFeCRDLbbvhEWBQ3Z8fM/6StzY9Lyj8MVUu89HfhLVy52HzPCoVmPgaqKrqpt1ByhffZVk1eZq2cSdZ1qJeyjMX5WDsrtq3fIOw+ruu4IMR5wo2dCQSpi1IEQBpZNw9Wznvl9LWVn8kk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMEETy6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMEETy6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D95C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785095433;
	bh=WYLpFt5xjNTCP388VXnLWnyNuPnCtWhP2ixoqhkycvg=;
	h=To:Subject:From:Date:From;
	b=RMEETy6+cYATMqckYz0K4le74QfvFWcJjgohm9xkvtH7e5nzEZyjlAs0aEO46c08s
	 o4HN/E93qA+Yy27NjeyxLnvQamKNAutnHiCgNUOcQ68AkFsYAWbb4tajxdNcOq1h0U
	 8JAqRrVMfpFGgA5Gh2kCLRyxdYVT1JqK89Fi9la1TaKD+M3RiWoUrlx1J5S+nXTn1T
	 s7HxVxoD5JvL/DRR2tZ8UsipoVeFzxsj0wYwmKft8fSlBREBq6RAVJItwp6cko/GnH
	 dzIV8LO0RAs6KHYQK7SQQYRFUZoa8acPEGNhQkuD6a/JM+AD5p2QI8v8SzwSD4+5SK
	 /XNq/x1Kx6eVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C28C53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509543371.22788.10652660339730108035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a542aa31959cc21c0fe4bd63fc549da41f49e0f0213a0e9ac0c30bd204e250c9
Date: Sun, 26 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785095433

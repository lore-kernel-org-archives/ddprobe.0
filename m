Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8E784D34
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724797554; cv=none; b=WJaCMn/fPrLjiQoutUYWiUkr0pInFtHMUNKheozxGCpWY7s5HZd6nIQfo1fA5xQhCb1xVHFuFHE6okLceYl+15gHYx7wfsO32QEzD59aQ4ZstidCENyJKwGO00fwhGcW1eLeA200qDtizoLuqH7jlzykMGy5TZKzv1KEV3PeKIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724797554; c=relaxed/simple;
	bh=cqVLG7gVBimCLOWDceB+W9lNS7B36iB/JA8CBQzatz4=;
	h=To:Subject:From:Message-Id:Date; b=k2hpgCRMDa4OarKVcxWaXU769VJpco2wM6cx884wSHqq6U0aeaQ8OuQ+iQGsGDvwnu9YqGAh/zCqXYJZTre+p+KNkBPGqHXazOBzpcX2RhVGuYVtjLJHzegYMib2gi8GstKOYOOo7qj8bp+Ncl/3yZeh1xvBuSGG7CDx890QO9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o54GnvP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o54GnvP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2DEC4AF68
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724797553;
	bh=cqVLG7gVBimCLOWDceB+W9lNS7B36iB/JA8CBQzatz4=;
	h=To:Subject:From:Date:From;
	b=o54GnvP5Op6ME7q5YwZ/EvQNfExtFB00x7ojbjxPIsmqYO+8xCCzV94J8IDgjWI+D
	 3qd21ZYL0jeDawaxf6j33FU1mboc2t1Qg2kfKzsO2a0xjwLe/9Pf/AYszq0Cen9t3W
	 eUEuvUwaTQ9/P3R/xCgRFPTkQ+4NbMBP77wvA8bNChe4wmqsSdzfYAFweoMtreDDmI
	 za1IpciiAONKy2Vz2DCcQnXAXttVRfnwPPB9TAcAGPvH2VNajeou//+2kBsQ26S4T+
	 tAvAvKcpYZk6y7SpwxKo4cIn9GFVubreMWk3UfaaLmxBNdam4lLaACFNs7enBaVMgp
	 pycGPazoD1QnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B33FC5473A
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479755361.25261.5604259751385346670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ecb88de0ed4dd3e06aaa215b40fcba5d69424b7ab72aa5a472365d6adb05d5
Date: Tue, 27 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724797553

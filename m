Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3357B40D564
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781923594; cv=none; b=Lp4tc+rVyipXNYdrVmB8ey4Frmh3K+GYBas+W1HhBMY5kSX6abGUHBpoY7ioXESyrJ1xCpPDZNRSafarZzv7h9YqhQHvHjPE+P6ug+cxJNbKZgluNmytDL2hIdVdkgzXVQrMjPNmPTJpJP/S0K+ZvHS9q56XcUYVoxBDtEOGT/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781923594; c=relaxed/simple;
	bh=MOtPV6ldcXBSJ284hsunaZ9kOr6JB4K4vWBMbLUpVn0=;
	h=To:Subject:From:Message-Id:Date; b=ee6Hr3ijjPQZOYfFQbAKNkMw9BE0TiJZclyu9mGS7UAZRC6kbRj/OIkL7BfjjJgmcuMABG0Q587FawV8Wk4eftndohpin+irWLR+o5148GosqhphSTsVf3+BPOOQgzttAO6l8SvT0uuAeJRP5iV5c30cIgZU/HSdWToOigZuPi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToscPUoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToscPUoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC22DC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781923593;
	bh=MOtPV6ldcXBSJ284hsunaZ9kOr6JB4K4vWBMbLUpVn0=;
	h=To:Subject:From:Date:From;
	b=ToscPUoad5jHBa/kl8GfftUYX53UYRRQTlzXsI7LuQFY5OupXoHwuy4PHX+7XXniz
	 0FiaKf85oyBXFWARjlcs0q0LvRZLHfyoUgv4xCE7GPiswKwU3Htny4mjXzmN6UmT4t
	 M4w3ppybDv0tLqbkoM+Ha5kVgk+AHPQi6sV63vWRAa9/PNugyJS6cfdJZRKTXOmqLG
	 0C1s8dqj2yOwvdlTTgvNUkczbO0pz67KuHuNI+D+FI2ByIXt3DKG4rltS/3LQYNwxI
	 W/7mDo2OgIY0UlMvTvqKRCOvgVjbCFTJGUHhiWc18VI6JNr65CVeXYwPGMzho9yZXH
	 9WrscpAfPWpzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE185CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192359369.13265.5104827415337285849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5aca821ef3cd97e163a3edc7114b8b8f639b098bb7fc60aeb458123fdef0c0
Date: Sat, 20 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781923593

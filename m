Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1C33542E5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781585794; cv=none; b=L9syYh/gVDiTBChjgynXGKGjhIkx4t7UCyZKBKh/MozzydC/lzwNwtU47R2W5z2Rw2lKWrA37kAm1DjfPGOrPFtCyl9GaAsY7AouFRI1rQ4aB1oHamlGEFgf7VqjO5aULsBchnoNWZgErXZZzChnkVv13f8yAETWemA4xU+oyD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781585794; c=relaxed/simple;
	bh=qXa8VErkMrgBG0/hPmgkjkQeefy0Uhrl6+dZ7Vg37W8=;
	h=To:Subject:From:Message-Id:Date; b=VNLW/544cHkHDNVuk4Oy1LdK3rbk07aCs4rFDHJsk4ECLw2Muy/2PhEqWPDnLOh9ahK9qXwHgUlKLkg6rTAi7jAbH1c7jvRrxioYXyIfkXbwJptyCXjwa2zfeQHP22V+tdC6xOQAd+4xfaOC0vQG+5iUkgU6PLJNtb90bJ+KlsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoSlBTXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoSlBTXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAC1C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781585793;
	bh=qXa8VErkMrgBG0/hPmgkjkQeefy0Uhrl6+dZ7Vg37W8=;
	h=To:Subject:From:Date:From;
	b=uoSlBTXyY0P/ORPkFOnlwQSRDOd8rRJhA81SLM1FWp2ZkxxoRLdtTmNiXVZ9mN2R+
	 3Zwg+vU/XlUuZQ8+Y9u/B/NEK7P7gcVXs4JVQeQV9ZwT+CM27/AyMXq2k+wj+uj6oG
	 5oxQ+in9/dEu2WOCL4WCn0wJIewfKikXGRDDF9B73ftPMIEimRQDuSPgNWOXIGlg8M
	 Wu6Ib5H/UvZ9V20mlCQO6uFC3EGm0ZbbM2kWmDtlYUmh96lHIQtJcRU7HIgb3V3vLE
	 nXq7PfNu1s/ztB6wFChe6qmcHErsNizPMbBQfAOSv8gT16gASaL0C8xafIzKmztKvG
	 LipEXSyahOsBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE576CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158579370.11732.9898145205351804732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a4d877dd9b9193b0d2aaa835aee0d5e8811a0c32cf025d8a83327ec5de10f0
Date: Tue, 16 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781585793

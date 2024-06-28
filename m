Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3374436A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719561863; cv=none; b=RwhqCgvJYtwnAFI58lp91B0o+3D/3l+N+OzqgAqY3Ht8QenkWEg2xUeuSzJeGmEGQc8bts/fVsrxb2JfVVA1gwRLClOGcIcFTs45tjh8TIdwR3mOoa1/QaCrQgTRjErxz+axykD1iVDrvZXduNZXH82udEePWgR0a78UXCmGTpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719561863; c=relaxed/simple;
	bh=8ndIrpPbQg2eMRvknrTJZB8T3tgnbSkT2A3Ubdx2+BY=;
	h=To:Subject:From:Message-Id:Date; b=a3qbvFtX5s2t+QFWEoqgm0Q/qTWnzFJ5EyBtuAs4TjxVvNigWB14Fms6DrO+20N3DEXGbrBB24UN6gVAwwnRFM/MXs2/YTjJtc1YIZZsxjqgjbmys9t6QfRY8zJbhE1/eLu4MAjkjE2RHF+WLoi/r3ukZ1CNiOl7vjIYqdhOg5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm9pbf9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm9pbf9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A38C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719561862;
	bh=8ndIrpPbQg2eMRvknrTJZB8T3tgnbSkT2A3Ubdx2+BY=;
	h=To:Subject:From:Date:From;
	b=Nm9pbf9zqb9MOtPzy3sTEEs3lSbhTkeTCJeiub+cQ/11CziPgQXewL3OFco79B6Q0
	 x3V/WoTT0VPGt50eTXCsbQuTHDQonDb6ZpgQkdmzzCxc1A8k/L1tOj5F1OjXWfwsbJ
	 Imw491XHRcre+oSaRJFU2c1ptFv13wyXC2RmFpFEIXMYAQG5nGdhUVlx1bHib/q2Wn
	 GnWr7W42SBbTF7qKHUBqNGwJN50tux9AL3rsrpxSetXedVflgB7x7XpAadfxGb9qIY
	 HunSMLHPJlKvzzvo3SXGLtuEA574hpkDj5ssIq1VojyAKbDJlL62pYq7+95g60Q5Rz
	 o3YeVwLjJEfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCD6C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956186276.4140.11667878685826547277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f950c3222684d3ee26f5c3f013bb1affa2654e80ab2677ae3667ea4de1cfbca6
Date: Fri, 28 Jun 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719561862

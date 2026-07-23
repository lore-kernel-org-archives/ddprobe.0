Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5DB3CF1E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784833834; cv=none; b=J/aerbCYmwC0uCWySsU74fQOqJXGHGwZ6cb5GDj99GElo4JHqFXVmY+sef4f8Yu7sAIUmboElm19Nt3Ugtjt03Iwgv3ZGzZb/o7yx36hYWFoApSJIBT+iEsJ7sC27F+1sXBgJeV7nu0A7j0bMD/ByYTVILUV9/BeFtRWG7MfGlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784833834; c=relaxed/simple;
	bh=0QeNoS5DuGjb+BOxzlab7wu4C7nBVp+eQpzC/gTXQow=;
	h=To:Subject:From:Message-Id:Date; b=msHb1064Ou2PB1BE7BpG0/qpx0QGrnhDOWEp37iUM/I0oVpwdocMBqCifK8V3ge87Ebxo472es+rpc5XC16+fvYguWEgQFjiavoSLz6JmcSGKe38xJODchm/0lNyJskSJycii9PDTEAxtoxEGOc55rpbWpt34ZpGh7UIKz4gMDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QejSPtu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QejSPtu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2391C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784833833;
	bh=0QeNoS5DuGjb+BOxzlab7wu4C7nBVp+eQpzC/gTXQow=;
	h=To:Subject:From:Date:From;
	b=QejSPtu2CrXoHf984OeQa8SAtN803iAzl1sJjC0RwGVfHF2E7dIxwZQHDUYU9y9kq
	 1iluxfVQFdkoTH2Te/DiWo6q2NgyNyuTkV7ZPhk+FFoqlSk0mechO7QCEM7MZKBT3Y
	 EKgTtq9gLsGJVX3qWteVPWwLWKJrZA7o1HHZBb7VeglsqUco9AgAjWK+wMCjHP6bj4
	 pGgJrMV1GexRDnTPnGCjafyLvDbG6MPZIPN1FwJJRbQIBdVYPI9dgR5l7du+72csy2
	 7LTsVBWhX2Pp/kcipYu/Y4jjOGHS+eqUEml4XecgqNb2zPskGK3ej4SshCrJL6HYwh
	 /I+m83E0ZBU4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD5C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483383369.11614.2518299602025287633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ba0e4da3bbdd678cc98fa8f8dd60c32219b582842ab5b0a8ca82d66d45df43
Date: Thu, 23 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784833833

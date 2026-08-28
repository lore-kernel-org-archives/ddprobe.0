Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D70E250BF2
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787880034; cv=none; b=ekNAu9FtrlmwrzLKc1Oj5YCfcECOJm41DB5QNPIf8p4cW2y7KF1+vYEUHJmF8HNDKVURk0MhTpkTLllwvmYPL6mxNeS09fo49HN5KI45T+6LPAypbzSAeq9Kx7OWtwerRaia69JGshQjVqETzGqIXZBvyuyPt3tUSL/ElBELCfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787880034; c=relaxed/simple;
	bh=SN4MuqHGAPueb/qtlBj3VkSqIps2tcr4sxLWYCgR//o=;
	h=To:Subject:From:Message-Id:Date; b=O6erSGZnNWF8s6rpSr2i3jyg9FieUCb3go72GxA5TPbapAWI4fNFG5f3nnVYU3iWG/Y1PWpINotLsB5d1l1jPmjCLmuYbwcLI7f6h/WoIeV3uWHVoE5Pc0D5DPmdSjGpaVvBMqHAxfu/heU9ViCTz3JypxDKwQ30/hAbtYxZfTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtHPuVvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtHPuVvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC889C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787880033;
	bh=SN4MuqHGAPueb/qtlBj3VkSqIps2tcr4sxLWYCgR//o=;
	h=To:Subject:From:Date:From;
	b=XtHPuVvm6coJDYX0xu0YJHIlVWqHMbrcPDBp6kPDr0/qIR8B5jf3gDfhoBFheidfh
	 VEa1/HufEPHxNDGyNZykqhuJ9l4Cq8MMsLwrSJHTjZjE9S4doPDvtlu93c/bN812s8
	 9KeKiPqZC7AuFUG7IuQHb5aXddDADUADsazjvA6eYlR/qYZiV+yp2NuhoaWR5ZOj5T
	 Z6qsKK2beiUCSlzJWqYBXG0+zy/D/JDwEsWwhY1SFpuZs/A7oFsD20VtOQvlGlwdnq
	 hbM+2d0Vvtzrs253X8n2a9t9dp3QF1rppMTGt3TzTqP/q3iWJXucK1Bf7B/dOzVBR/
	 FNcRW3ncmIcUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BFC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788003368.820.13368932889799659939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cbd6e7ae354adce6733a7300447ca33e280a9776ead6170bc219b89bdc1c1e
Date: Fri, 28 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787880033

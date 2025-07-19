Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E9F2376FC
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752923394; cv=none; b=hj5+ARZhO6rm7hFulBGxVulVXppaMlyY+YVp4L/nuGyVRUcYietwuP8J9JMarIcvARWlShdpIbQyhdDQw+lFeLZYx4gZOu4XpIo7tSC/3CI0peV6MImRKMNf3fMiAx+jIYCteFi6aN6CzuJC0TPM1HCwoJKU849Hc2HxWeyPjO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752923394; c=relaxed/simple;
	bh=k2aHL49+MLAbPEaEDz37Eiz5uRjdSGFihjACy12Ip4c=;
	h=To:Subject:From:Message-Id:Date; b=SKDZe6wDRd1W8q5JtbgIJNy6v6vI5/pPDGrLTWo7R0GBksanTOPnLJ/CYGHPNHzMovbqg1NowlXBcD3O3fCgwJMuaGnJqFsbBzxv7qaP22/JVlj0zyEOHbqBMD+EuBvGytz78rG1SA4XMmGvnMAC0BOXCBif3Lefyyr28nAw44s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHs/edYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHs/edYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A615C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752923393;
	bh=k2aHL49+MLAbPEaEDz37Eiz5uRjdSGFihjACy12Ip4c=;
	h=To:Subject:From:Date:From;
	b=UHs/edYZ9TX+IMIahcyx7M7LoYwAQ/R9DfJTjf2sed8yUEBnnr5+XnhvALn86fZCe
	 KBYMKSDYOfxAim0P/8SVmXitTcw9tqrUBAkch18zo4/8I7fl8FJ+m0JYH+lciIE2Az
	 D86EnkgxhFmUW7JLaVb3ViZkslb/GFe7foVtR2cb7/QMQHgr0hS2TEOWEd63P7yg2j
	 5R/yhJvDxH6mhk8m/q18uOb2sm9BCG7faE0PAZPIF+ICEM6mrhkuX8AS+DMfhR/p7u
	 i03cklTxBn4Vx+LjuqpxEpBykXQpFOsM+yMIEgRTKAJMOEAdXpWTquzAem1gXQLxDt
	 wU26GOGVwvVIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E731C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292339357.2850.10391519388551252225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3b8833b405a2254d10967b380af7c161a2cdebe0d58cfaeffa54cb88662b56
Date: Sat, 19 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752923393

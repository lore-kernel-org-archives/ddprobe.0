Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D668467
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727400354; cv=none; b=RzK0BgUxmm0Dqdx6ca4yewjuzZEtB92fNUfh6HHZO3H+9WrCKLMNBUyqvZfz2EeDIfwUbaQSvWf+rELT4dUoRHAR0UINrxdkGiKO6qfJk9GR4v+LE4i0FHy4Zxyag/9lbptrlslkxb11sc9T3bV2gQiNKWfrqH6Ahsv/7sIyAtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727400354; c=relaxed/simple;
	bh=YvK4h6DQhplviYV42GlzrLBf8cCW1GukvjD8uiuXNB8=;
	h=To:Subject:From:Message-Id:Date; b=JHMxhUqf5DUYymr1lFLliGrXJm3E8M6svzHagk0ZOIBLOrb+ivl+/ayU/WBMOXVfq6Bv7lWkcN5ieYxtslJVTCqLWzbdMpJ2gC3Jyu5Azl5WOMwsml+tnQ8UAHiomLCyCodXJL/kuddLm87jg6+CsgUOSIuSMRSDp5eIYXmUjnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdfI5BDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdfI5BDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B000BC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727400353;
	bh=YvK4h6DQhplviYV42GlzrLBf8cCW1GukvjD8uiuXNB8=;
	h=To:Subject:From:Date:From;
	b=NdfI5BDXcZknzXed0DnfJjx+P6yx32DxPQow/LHbO+cFHFWsc1OCqPr/YP+BEyJYO
	 7IhHZurDa6J2eEK/LV3z5HJH5ZdNWPR+lsfvxk4agjYGlKOCz5+/Y57sT5c9BQt81c
	 HoBho3gUrj6nLCpOIPVdsMouxEUvWsHDpZA3LISiLNE/oJF2svCwjQmHS7p8oWg2Hz
	 PcYewPH8WefbGY3NNYwGqLZcWWva8GijZd5R6Kk780wAA0CpNPoFlrrHyO/TMHlVrn
	 obDK0Gcwggq4TZColYxbQMIT+Hm4ZFIeQOdbkDbCOKfJKni046bh/oZBvEXl5LzvXt
	 PxUEdAFCU5Ffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98778CEBF67
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740035361.28682.10579414216356107760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6b37b6e25a8b17305254fe08877add1f1ef1e423e47cb2ae53909c72c46773
Date: Fri, 27 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727400353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5810F2EB11
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714603943; cv=none; b=WlpUrq6akspu4dl/UdbNBO7XtaEd/Pin5R4VlVT59xPk9bItHgPNk+cx+Ug6NCyZxMOPIol7IRm4G8fK8und3Pc2bbMYHjEnJbQqWBTdefNNZLZLF02XtTMPomggr7nh7u2LElAxh035ltbTyiB2x4jCX/AWThuyEcWeXVbydAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714603943; c=relaxed/simple;
	bh=njVFyjeRSvDO+wDNquoaVUtzCTHCg7m3vsBQeEEwB20=;
	h=To:Subject:From:Message-Id:Date; b=f5pKqTRBE1zy2tZqZe1sCmNOh81XZEhBiqZR4kXSpFxRLjantofrfrCVNCuVN+oJHCYJWiX7blAuDNoV20uwuZLPDerEDLshY06OxPPHHZHYvT3jQfHMmnpI/2Ix5jtaNuBUU4Fpr5Nk71xVQhcTXjiebGm+b7fJZwN23eABDrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH7uSnsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH7uSnsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA488C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714603942;
	bh=njVFyjeRSvDO+wDNquoaVUtzCTHCg7m3vsBQeEEwB20=;
	h=To:Subject:From:Date:From;
	b=eH7uSnsTv74NIU9qifFd/n1gmJCjUTYVMRkZn+OZ6D8LR1n+VhG3ACK03MHOHb/mS
	 mR2ZTavVH12aggkNmLupg6+vSAWgSq0OlPfgB2RZjrxlLnw/RuXuGOaVPPG++wwQgI
	 E1cztdTwKPx3fsWdzcbWujbZ9+tKf64Fku/YWxWg3dCHRUGbBMRsf4vVywwabM4anU
	 giqhWY/xNzH2jWPc+GAgGUa/+jbfhmpYM9NW5fB9ZF5YCuatJoGToT3ecKqdh9V1VG
	 Q7LVrjCCwSGqITkGA64EYZtEW5iFcUYSw4BNdbvyEafkGptN/m7BZtysrGEebahKRK
	 NbrhBdtEi0unQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3220C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460394278.3276.7152536695080697657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15c77b21ab68e41c61952a07bbf1845e5676857e1890b578ddbc0ababecbf33
Date: Wed, 01 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714603942

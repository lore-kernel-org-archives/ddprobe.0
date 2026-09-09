Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD6F3D45D0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788937834; cv=none; b=gZFes+/PwvrljiQ6KUBrCwernXCqL6EkTLlG2qsy39ZDx8PrU0dXn/qiQShw1hKj76uBb0EDs3DAv2HVnE9mItcGmZt23y57i30sa8BrHTJ/jhMOKr2wIH4Jf0b2CnXr2jY/9MpmrRw/xNk7OKlHwWlGKAXfqikuHP3fL3aLyI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788937834; c=relaxed/simple;
	bh=b24ZLiDPPpZVfX9T/UrsCWiMafAwm4SHXqPCCk/erNU=;
	h=To:Subject:From:Message-Id:Date; b=WMc/qC7+wS/gYRDiOqxV0p05l3w5Hfm6gXCEppSceSWE8tzT8P2oUxF4t42yVSjltBO96oxbgiIZapJDZ52Chz3+DfQE+Q5s6OPTKcPs1XaD3ycLTDe67GXgMAx9ns0YI8TCyT4raBBGiMiQe78kGy54n32P4/NYFKDR/GIFqCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS1T4JpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS1T4JpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB153C2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788937833;
	bh=b24ZLiDPPpZVfX9T/UrsCWiMafAwm4SHXqPCCk/erNU=;
	h=To:Subject:From:Date:From;
	b=YS1T4JpDfITMY+OOrsCoXTLr0HMYIwluyugQ6DpsQPpJ92J2OhZUEGHPh9jU77chw
	 Nb4foUfKIdlUkTRznxmkk9qocYtfojFSHPz4G0kjnxaPkFYbDHifEEAHbu5xFwORkK
	 h8j02KosQQz9NhPJcXXZYwPQZv+3NX2zwM/stobbAfM2JRF0zYl80ZfTyFdzVEo+io
	 kVMFvFl0+lQ5MaQ4RrtQtnpRDl57LKg7+BwCtytLvSbegQGb+wTkSiHs978xVuuHMH
	 S1aOI92whvysBUdHQ0vpBxUxOmPfM7ScWCMbyWobq1ulBy+GrxrbdcdKsmE9WDQiyB
	 4UiVBdv707Ztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9906C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893783368.981.6889849570682756586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed624b52066e3d1775f53b978f1de9dde4ae466185530da5a11be241c4e7aca
Date: Wed, 09 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788937833

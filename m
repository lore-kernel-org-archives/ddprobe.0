Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184F0309DB5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089434; cv=none; b=nOKDbLoJzA/VFNAICcSEniBNM28P6lU0vcdASp1risiiUYAd5ZcrVubK7G8MxX4irELwO3GJjxuRh+uOa3je0BC1LAdbMBE/sHj8SdgkB4H6jpodzt/hH1BFe+enWEghDnlcchkqoaz21TLZ2QbzbJvL3QU2E4tjviPDPrUAJ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089434; c=relaxed/simple;
	bh=raphdhmsStBWIZ3mQCWMS9t4+9vWOxIx6oYvcecyC0c=;
	h=To:Subject:From:Message-Id:Date; b=Pw8+B9zQgc0CBU11HSYn7UoXi5/qmBSx0GuAp3yfNiTJyLu+FLWlrm6zcIL91Ix6YL7Kc2Xg0024LapyTstD8lFNC+bEsye7qZzXHJ4b0AHU4RLGZdLGNMmAZYDu/qb3QmHn9/toUM+SYdeJVWnyALgBYrWsgmGHUWQtfyIXNqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jri9TvUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jri9TvUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6731C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769089433;
	bh=raphdhmsStBWIZ3mQCWMS9t4+9vWOxIx6oYvcecyC0c=;
	h=To:Subject:From:Date:From;
	b=jri9TvUuQCMUlxX29HVEChV5fYe8Ut3OT0KGAqgQP4v7VU3811OpOsoMGtgGqe5pS
	 4+hB7bCsh/WdHpUO1QJ6rl4a2m33m/fbGXRAd5nmXGQzeggsdF4fgd+eqqgaEBCoVJ
	 2HaUGzR0Myy0I2s6PKCU3C/lEsEbv6dPavucG3fR6fsojJU5z5hJB9czSGm8rv3hR4
	 dq6DBYC25xxMooDZs2K71okOZtz110QAruj0PoINi5r32xVd1iFNtKMh1PFDJYgq8M
	 G3S+smhqqELPr5Gm2wcx9SU9n10pmPLUCNdcsnJ4y8V6HkE/adMzQeIRLO8aZhFfpj
	 bsz9U0YQkUXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F80D3EE67
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908943359.4067.7211395189977712076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a074873f40e5ab70261abc68841453894e8d532c968b82cf73566d3626c3a9e
Date: Thu, 22 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769089433

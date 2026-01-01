Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EA625A354
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767298434; cv=none; b=Pv23dFPG1a2ilUgyaJ3LMpk37TUcBTjzw6Fkby08+fn/OKquLE39xavW43+C1KjGPvMBFDWpOvdeGFq6vt3MHEsXwZ7bAsAZzsGfAciDskmMClLFKnrpeHL4KomUzsU9+yVk0PtiZXPox8Yadt3HcoY61tNfc/YXVvkBpnTelhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767298434; c=relaxed/simple;
	bh=YcPbEYGrCKq0oq3UQ5xV2TvzBJzNrjRLSbj8c0o/Ecs=;
	h=To:Subject:From:Message-Id:Date; b=AgNDzFhb8fNbPl7sQEqEmScWtkzHnfqeWbPEgjxrTr0kE9OZpVARKSSNcpt3sbr4IlWJL16gu8/vZ5pRH9MU1d6oOjOHXx5Kqu5bv3LqS7Harmf36Fico8UNriBqUa6tdUqDzsi/HsmGh5VuspvGEVVeOrcwJzyXEJyDzjiX2q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haT5HMHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haT5HMHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17FFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767298433;
	bh=YcPbEYGrCKq0oq3UQ5xV2TvzBJzNrjRLSbj8c0o/Ecs=;
	h=To:Subject:From:Date:From;
	b=haT5HMHrwcHhcke2gT75pVxiQAYl3uloUpetjVzINJHwFm7hBg4frBHIyGMph2t7b
	 u7kH5epbkr7B0QYl70elkHXWHTpfpD/VRWRXrx9IP//S9uyTnFURAo8fUJm70H7ThN
	 AW3ffg26g9Ix7UiNi3NtOZjx1NjUoIfTGIzj/37TyNAZvO04jFcGSF0tu4+Dy8hmUw
	 N3Ag2cU9ljkQb+aiR+dKEuBkV2Z32ZrOSbKRm3WG+Ba6miPRYXnWsJ+IIV0dJ7H4nb
	 e4CyWp0XovmtdfnQ4jijcLsPtEoIJbIGRZ7XpfyJaLjlxc3sIeObRzV4X8Q8bK41Ls
	 Wa9FSB7XPPuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC45EED630
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729843358.12576.14307080540223713445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f392ef7c7d26d8f0cf864ea6a2deadbc0a1f4ebd37be6b6af15b21841acef981
Date: Thu, 01 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767298433

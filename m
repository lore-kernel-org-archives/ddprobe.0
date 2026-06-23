Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E45C367F4A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782208594; cv=none; b=tVstF1tgzPp09bUEUcVdUOeVnmmnDb8i018dckPAk1BIbPTu2LtM2o/5s3y4CyF2bOdhEsQY39k66Y2PiMlGmM4FiSUHjrayccyMDmq3Y5JsjtEILU54mWbMtfPleUrlv2TObRW2jx9G43c0WUHlC3B2e1bimMjC7A6FsaeigrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782208594; c=relaxed/simple;
	bh=8AqW0uZ969vxxeHOchmLhprwFHX0Ll/bpd60n5KDodg=;
	h=To:Subject:From:Message-Id:Date; b=bne/qRgRBHr0COty8wv944/3ynAAuzA0Id360KA07oMU+H/nZyw3L4k92+9CvvBdYHE/kAaMD5zhvv71i7fQn2C0nsuWCrnorgAT0JFy6eE7XmRg2YouWLWQ3PdyD7sYBPjdaeIespumHTVwj2jcIDuMwg1P+rEmT1JKDr8zJvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbYTZQKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbYTZQKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71D8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782208593;
	bh=8AqW0uZ969vxxeHOchmLhprwFHX0Ll/bpd60n5KDodg=;
	h=To:Subject:From:Date:From;
	b=FbYTZQKIRZEV1nPPk5Z0cHdGnIoTmI+AIbjLHzWn8I5aGobTko1jKZvCUJORp2yOg
	 jjgIU79toki6ObkKAubnQ6SIH96EUOlgDbxV7+f9EnVqgrzsruBZX9VtLNrlSpgKov
	 eF4XujL1DBfYykWgDOgLicOFfSTI/9h98MiVzvJwN+wg7izZzX5S4cns9WIFfv/Gnp
	 IFMTfjKJHSCjTnSHNNjABOSCOACE3ZL5HPtK0z3JFfEREXfdM81wM/dvuxxAYJMiNI
	 qCJF167cXSWyHwgIvAzTw4HHy4JMo4NgZBK9tSJtl1PYMqVWEV3QB36RiXHNwY9jon
	 aqm1Ja6Mc41cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5BFCDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220859369.7649.239900751358649592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183aaaac5fa1c2c225eaff300f9618ab995a99a51fd9b499582a64f83f236c7f
Date: Tue, 23 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782208593

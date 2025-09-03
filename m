Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063E8258EE1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756877394; cv=none; b=sZSvMuOxDbN1ziZDFbMpLlFmmh0iMFkR4b8AC6shP4i0+4P5nw0nIGM2I+JoTsnOkkR/amwPDhRdY53AwsqKUCuKzjxTcPF1PkS+jFXTZyIUVSpzSokKCWJtpNkZCisb9tfPuUvrbKdVs8aRBJ4/3owNtSAS+mM60f2g0lDfi04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756877394; c=relaxed/simple;
	bh=Irr/jTVxd88ISGHpgFPmNmmAdLR+9SY8B4BiTDNgX/Q=;
	h=To:Subject:From:Message-Id:Date; b=dqS8lzzBewLR2dflrWqQ8LLdPYpIUoXaA7O55TCxalUkmsTGXEFvTr63HvBlZof1gvkuPtejO+qimWfpeFrSxQe1KOrxmLUszhS65MIgWIpHNg5hYwxAbf4FV5fb64jci5JdZWVgIoOn2yCVxCPnGDxUV1a4nUgXeE1bZeWJJHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnCYIL8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnCYIL8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756877393;
	bh=Irr/jTVxd88ISGHpgFPmNmmAdLR+9SY8B4BiTDNgX/Q=;
	h=To:Subject:From:Date:From;
	b=dnCYIL8xHO2qtZe2YlCbD/FPqV8dsPmWKel4ljMriKrvr4g5SlXBqTkZp7R29+ldr
	 9iyw/wlPCl1pVgII2yGlgAWlmV7srsonNHN6r61Cr4NxjAUd1e/TM+p5B9J33wu/sG
	 OIanBNkHxB88Wvn2fIrV7v1OqMd3gOk3m1PjgLPon82gZjEYgtNkct30ZFvDPhSTnT
	 +rN1m6fkxSSw+sYFrMo/cn9VR+naJ/OeCPMdu7C/7uAYgIvkaQehoxwXqO13xpbGss
	 uE7LbUVFRvIh7sd5yDYCRg6lZ2wX1kcfJ0cn0dtQ6I9IpHjbdLq8DH4ntUddheMBCU
	 FKS/OsS0PHxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FBCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687739357.10869.16196400202852509383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01c42a79a2149dff97dffa65272fb8a435335eb6a2d1fb43532f30b26dbb1b3
Date: Wed, 03 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756877393

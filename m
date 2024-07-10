Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AA71411ED
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720652243; cv=none; b=fHm6LepkbsK4ojfYeLb+lmwfzUGVJDHGOVWHL72SUYrbPfO61SWcSo3HE01fEai8othkP9VPctK/P3rzFAs97XfQmNSO8HDxrqTjNE8J3dOUQUl9NJ1xHn2tiJxqZwCLNdknq1WSHWa8oYGvy7pUawebqSL4w8Xwn/23tZ0serw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720652243; c=relaxed/simple;
	bh=MqpbXWeg9Hs0xbULkCA4jWt/TSPT8aZJJmsQ2v9VID0=;
	h=To:Subject:From:Message-Id:Date; b=Vsr+CK01MfIs/DaqIk6nKLgtREylSKAPYa32xmh+PcSIDTih0aML8ReorJ+HVFufPv9E4rURWKNtW8/tqllXMoAwAHGqV1s+Swj0cb+5tTzXPJ31ZEGWf+rFI+Jg+TQ7/l4TFgFZ1N12cOhPEN7/QO/jf+S81g+j/nkKYIRJzk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpfdGVYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpfdGVYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F197BC4AF07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720652243;
	bh=MqpbXWeg9Hs0xbULkCA4jWt/TSPT8aZJJmsQ2v9VID0=;
	h=To:Subject:From:Date:From;
	b=EpfdGVYwYhVyZnlufkRdgaUK55mJSquChcTJdBhjm4oD4ucTPF6/Gvt+Ctz1Sw03+
	 wHgGLZ7RRLWUzqtyRGJp8ZnLR7+fAdHD/bsgINRrbfcrAzgu/JkOe+xOeulVZ4mvKX
	 BXWuQMEgOxrsYZ/0KTCreiXSjQmhlu61mG2k54MULHyP2CY10A0NsqzpkNlXmSI9DE
	 F1yrq8Oiuhrp7YOwbpzQZW2YPV6hW+a21jAvahggEW107hvvNb9P4QXhhPkhnTyg9x
	 uANHC1yBvYaZZ2Zr9Z+kyS1oEVTmVv6vwZyTjEAebuSKEV0+dmavKQp64SgTW5mHsZ
	 RV/0aMHPbCAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD815C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065224283.1020.11210876705891548261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c93e47c22ecad082ad2bfef8277f04d68e7bb0c05c12e8cb2e7b7e192a3d58
Date: Wed, 10 Jul 2024 22:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720652242

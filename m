Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD0A1C862F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768269834; cv=none; b=hr1q+Y6C76TITfj9OIi+aySLH5YWisSaUUbViYNma3V8Q7YZnRZxrHpb2mD8rlxKtpevbeZg2bOzdP03j3/wbA6gkKWy9v/glJp3vII6+CsCYiD0lNyXewnh90+DGoyquQNU2SbDAb0HU0yuOIUzoftcBqQYarKOLK0ri/Fg3k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768269834; c=relaxed/simple;
	bh=4vn2aH/zBR3v6lxTszs7a7zPNkiGj0DOf0Lgq0j6+4U=;
	h=To:Subject:From:Message-Id:Date; b=OlBn6BkDkK2LsyDYSRdpSiXbivYbA6PCbA908RQRpg4gBo1Zq1w6xfGpOai1LL78c9lupM7Z58H0gjaORTD8Fd/+1SDE3gArY8bx9tA0/uFg5+kQmkmT2+W1CQ2eM8eTPCPMkRckOUv/Npt4Zg0pM8dbHe/hKZbJoivMh3HAoj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9jyxnYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9jyxnYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF2C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768269833;
	bh=4vn2aH/zBR3v6lxTszs7a7zPNkiGj0DOf0Lgq0j6+4U=;
	h=To:Subject:From:Date:From;
	b=g9jyxnYxh3+aXpicTfXzYw5DfP5/ijmPO6PmNuvv/AUpfathgJomht+ZcIuoeauwK
	 tMQi2OS+JMf8Byuc7W4nrJlp2jML6HfzZQCu5A/9oSGUflzAThrnMh42pbCAxMF8SF
	 sV1stZAxBd6fKEs9HdQ5XROymFWBQGUQ5ddSiPjZqOPXdIzoT9Kr5cBFh1vm6Y4L1c
	 BoOc2d6NwxZ1gFe835ruBCqw3/vsDhMHx9OqKUMKb1YHO20OD1n1eEKw84lGrDkj5B
	 g/Lpodd3hiGRuyIG75Ep/ZPPFpVu8p6f3u+sKhZXimgzkMXEFWlckHoX54hnmmshjy
	 OnS24IXs4vMyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93492CF45CB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826983358.28601.16101642967285839183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ca2aeca14d0e588b3d4822f1ef3f505fc55092a17972e80acba229dd30eee9
Date: Tue, 13 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768269833

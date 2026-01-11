Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117AD1D5CF2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768148034; cv=none; b=eclUbyetVwQgC0lmXACI2ol2BeP+phoNoTxN44VA6vrNKzUpNNoAcLBL3LxmTCQDwiBBcLnewmPQ7pBKGt2DtGYovcIQ5tnlDM5IVN8XUfrkeUYgGQj5vMztQVRdWotz6dAdAoSyi18qnkkHVoXRaK0Ua3KnXBWigZKQRE5NGpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768148034; c=relaxed/simple;
	bh=bPFOf2GpEuwPPi65mA4G6yrXTIVSEFaeWN1DZq9lJQA=;
	h=To:Subject:From:Message-Id:Date; b=XMBJgndtUcm7f3xQS38ahWjNxwUDdjPLHCK0lSH1k1b87mWXxFjfd+qj1fuuUBlz6bwzCHWr1pfm0sFN/p76uTAh8bODpp6t8kSAT8gooLFKbVN9ioK/rGMGULKDM+URflUlpFvaJ4AcMJcHzOkbLktHKLcqtTjj1iJnl5ECgsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvVuaNOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvVuaNOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6798C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768148033;
	bh=bPFOf2GpEuwPPi65mA4G6yrXTIVSEFaeWN1DZq9lJQA=;
	h=To:Subject:From:Date:From;
	b=QvVuaNOrUNYuNq/UdGrl10AcI0m3QDieWwh1rYSvQn9TmOs6lTiHQwthNvTvfgmLF
	 /yCiFwFPITXqlmg4jdUbs+qh3azZa+2yXIjguAjWPCQpcJ1bxekDri15ZqxblrO8ct
	 82XVVhyemdi+T6sSqbhQwrl6iEAgZbzOGuDFelaBf8cjoh30ozXQdiioBXvYOWueOB
	 4dZL4wfURBgweTMkK09wDmCvD8QBMEMeh1DSn0J2hGXUMKi7uZ7jgSTTqFdt+wPcXH
	 Wz12tTL2qNHav5pmk9EeKtRvF8SLDjpU6XPOV1jcLaoLIbZKdvx4Gev6biwaGOreJP
	 /STcxNYv/l83w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928EAD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814803358.7664.1170672824829093702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637c4c3d37bbcebbcd5921ed56c3a45c522e2acb03674baf4fedbd3811cd1498
Date: Sun, 11 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768148033

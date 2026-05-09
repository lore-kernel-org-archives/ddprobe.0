Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA7B347DD
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778305054; cv=none; b=NJj0RKuyHZ6VcWR1rmQjKkZk2WcjmSknwnJAzeIk93MaHCqxWxuruakOoDWkYrSph/6q6V26jz7Zu8DiIovCwjmR/kNgiosWAdgn+2yKRgENbLFbSjfrwPOKddG7G2UBYE+6pjo1GuK/InwoV5AGDId3vOjkloVSYCPGyGQNunM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778305054; c=relaxed/simple;
	bh=nACmdjF/tAsxC8B6ZDfXVG3f/rT2CzGMFExCYFWhpqk=;
	h=To:Subject:From:Message-Id:Date; b=LZhJ8FJdTPaaJEyhVTSj38V2qc5el3+ZExjhg2y4PM1SiYNI6TSBBd2+JTw8Iy7T5IeiE3VmK1wWYBnoSiwh7oINGNwwRjlbawCGnbiIyWF8yzomp0p3aQmWgrEvWxMMM+Fprho8/1nnFVqrCKCvmGWe5worWWW37rZlwnE5l00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnCN+Tgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnCN+Tgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2233C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778305053;
	bh=nACmdjF/tAsxC8B6ZDfXVG3f/rT2CzGMFExCYFWhpqk=;
	h=To:Subject:From:Date:From;
	b=FnCN+Tgjsq6NYdVfhrJWA00nQTCLxd+6fU609iWcXDNnt/DxUQEoEj2WL/nl5lwTV
	 8uhshd/RLY5W8TmJGh2kYoMh/skA1zWjyBC+6zT7utBIx78nKYTmSmpnRjyKrvMJgS
	 HmmUdPKnIA1+89I5Mbx0V483/qzNXIM3Px2mtbJrak8fi6MWfUJjbeswrqJflGPRjt
	 M6csot6jmfg9yphU4Qes5sYaiEHkHNAdstEuMKOOxaRNd1o2lgxtQjzO0xE6J9nPju
	 mfxc/Q+gEIntXyEd1/1Ilq4e/lswukRfsMObsvXAk2Iv2S5vZqwaW7dOt8feniNteA
	 idygpqHfj42rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5B9CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830505368.6795.4855938881345963911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c471e2e47638c4ca9550b5328dcdce0be9e7d06d46b8e972143eb627794df82c
Date: Sat, 09 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778305053

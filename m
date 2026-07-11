Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7154126D4CA
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783743514; cv=none; b=QUc4q90qM1DEA1ah8ea1c9cAZCU6eIbxAB0AEp7sBHxWdyd7hl+mgdH+/ElnIK8iETWCfeTMKcQkRNNdMoLeOZAvpmCngg06qgfdaZ2yUN7mPfaHvtjv9zAuoCXmMrK9shiLPAw9PfT891qVwX0GnuI6NQwnx2xBpRCZzTWcPg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783743514; c=relaxed/simple;
	bh=feOjU6StOTh/PRUIHSYEbc9ZI6AAFIWFDroShNIuFW8=;
	h=To:Subject:From:Message-Id:Date; b=fARoIZ/NXJKPyW3Bu0gOheJxroCCeV9ZEncDAr9DQRYb89v5TALlSO9SD8AT/GcMgHU8Lvi7v/uKIREVo8OHUXURABHbPjKSZDziCbNTZb3yy4zBc7Zk2EUh2UqA044RZnAc3rmpk6N13u+2Rc18vluCRn0dmbfFlCfGtkvHFA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5Eb6dHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5Eb6dHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D36C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783743513;
	bh=feOjU6StOTh/PRUIHSYEbc9ZI6AAFIWFDroShNIuFW8=;
	h=To:Subject:From:Date:From;
	b=i5Eb6dHTtVa7edxmY2uD/M/R9qAySmq6gVOv6vhdKtw1Z72K5ABS6NzfywiewDnSq
	 ckP1McOiOMsunpEFtpUguMLCdTjGC+uBiY+b4KudY0xsUH8fOdWfQDCLTZWyPGwFYp
	 QsEjHrnpMq4rzvgnDYiqbDbo+0mUaBZlOHv4d+wqi4KcSdJf9VnU6+dDL3Tp3yzYzx
	 dhAI5mNSOkLXZG6fqFusR7QlVSTiizZHTYCTS18bE3gZvrCmZu4gXACbm2x0sQGcCj
	 RKO84joDW6gireXhdaZbgvyaE7YSX6zSvIsiLFiVqIITOEMm106UPKleKP35JR3CjU
	 +Ob+y25kPQ15A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1ADC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374351368.14667.5572700553818312962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee03ad9439a1f5a5666f8340a304ff50618cadf3f2360318d776f24cab473b7
Date: Sat, 11 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783743513

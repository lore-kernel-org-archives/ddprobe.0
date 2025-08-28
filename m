Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F273009FC
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756371594; cv=none; b=Ya6r/+Ub8dYNTP2vypoUIIKDwixuTz1j3tXGP4555AvBkmY6s43QClZTy/f8w1yl4A5/cUxqVq6tyvZQu0oSY56bkMZ5QC3+XQ2fgt1BQT0xmTTuFI1AN9v3s8iUWBQ9JQLd5kiOS0vYaAtTIKKHLbYduucceg8aln8Q2p8wWUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756371594; c=relaxed/simple;
	bh=wzHd7DZHPyWFUtcUsbxttVmyWHeOTCR0IIYEVUbHrZ8=;
	h=To:Subject:From:Message-Id:Date; b=Pn9rwKC5Brp91pum8WA9WZOkwOxigVOY0R7CEq+9XQu3zEHenc8QGj0Tn128kVs1mFKns/bjsthherY4xPZhyOzWC1cuCrMnaayW7XTm73Ileo7dpk3hFOxwrNoHY4P93f4BhTQqql2n+XqjaUS94A9JMDVSYBkIDJCs4V4+I48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIWFyE0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIWFyE0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A79C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756371593;
	bh=wzHd7DZHPyWFUtcUsbxttVmyWHeOTCR0IIYEVUbHrZ8=;
	h=To:Subject:From:Date:From;
	b=UIWFyE0fmaGcj9bk917Nfq42UuDB01FWQFrqSsjyv+ZUkc8JgPSmDOnjkYdve2TBa
	 JHAzlX91gDcJ9zAbpdV+Rnew18Leuj3yw/r4mvDKexMRnR0IbbgzBUVmE4+GA9QWrz
	 Z6ZqYRl4iiWibP66lFT6toawfX77vrQSAtQa36r6uBrZ3F4INhnUyu8zTa1HT1R3U4
	 LJ9tn/S0Fj9BmT8Lv/WMqjNwor8RWBz2AOkR9y2p74aigFpayrlheJqJYMkSwKozye
	 hF40dzVMtWNcC1I9uPfBddR0PvY5jgOl7vo9cRT3z5qZmse9oSxGMobqezFzn+ffRj
	 tdY7+qFis4Jkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637159360.26665.5883416269297953411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d350ee0b3df6c439f083f31876a26afc91a3a933f09905aef541b3397512b52d
Date: Thu, 28 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756371593

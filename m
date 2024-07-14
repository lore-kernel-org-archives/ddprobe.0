Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA7F63C8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720972223; cv=none; b=uMJ3lr2YQHbcTVJU6PzQ90oBpSiWYFfDtUs3ji7INoJACQlcmzzkiLDBKwFyPikM1+KrQ1Rj/ZN+/jppcT3K6aS946JIzkuyxc/PTqQ/ejmHfmDJRBCVm8euF0KaeagEnn18mdKveaGbesUwMt4zj5xjlPVGr5DzIHsO8U1AMmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720972223; c=relaxed/simple;
	bh=a3wr2nQOL6fvrXINKsHSlDoYQBP+7soac8ZUpfmUp64=;
	h=To:Subject:From:Message-Id:Date; b=cU+PEtMM1drbaYonvXx1mcQFpIk9WNlOr+bL6PKWirrNby4KMXO75gMeOcaLpNcszjQEnzq1zZoHz5XUb33b+ySgKq5QK6k1oKUU3hFn4gDEf7/wc6KKVtEQNtvCDykgflMz9s+dX7JWcHXWWh/vMz5mgKRbsm3uo4gV4eKiWi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCV8D4Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCV8D4Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A07C32782
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720972222;
	bh=a3wr2nQOL6fvrXINKsHSlDoYQBP+7soac8ZUpfmUp64=;
	h=To:Subject:From:Date:From;
	b=hCV8D4WswqDpp+ouMKMyLZgyLCxu7f1QzYLMCODofUy0EqJucSPXZ93fYIaxXv2GC
	 acLnV+dW3VZFB1B/t/80Hh9cVFuzXeih3KKtdjHRr2Sj3zPG64W6me+syWguP2AZzS
	 rwQEGl5m2hWY6JssCITtEcYhTGrxLVePGwhBQBXENZAaDeCzaXX2ANEU8mprZ6vHZ2
	 14xP/5EGteMbaxu9riP9KVhoiWwrQ5lxg7oicewjRenfD5qxClN7GBnfm125ATPDME
	 Yp/PlQDf7xZ6ihXwPno66SWMcm3VzQeb0B11G8gDDmyxidfqqZU/3CiovlssxnNaQc
	 ii3B5dNeNleUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA97AC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097222275.19660.12859451707061123191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda2a1f314d07fc7d95b6267c56c33dff2861a554b51ffad414e4b9ffbbb832a
Date: Sun, 14 Jul 2024 15:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720972222

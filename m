Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3645972627
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761178794; cv=none; b=IHp0UYtlq5TT/mV0KcpKmw99lRmvTBf2p5zVYztt5RG8bFlQwEkDkODf3ewZmVysyXS2ei9VKlruJ/lfzVkxvR/ooWICmmda3wgBb55ToDdB8YEJU3pDGpKWksB5FWI4CXUZ/BrZ8gg+wp9HqaFLOufbyaDniFzghDAqT2+XrUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761178794; c=relaxed/simple;
	bh=kXFlXMO5AAAa3HIdmzYXr+J6SIISS/cqcHNEM+QXldk=;
	h=To:Subject:From:Message-Id:Date; b=swqT0Cp3Zf994X+0fyP7wPjjjA5QDt3C+AZcRvve5YQNG87B6+2EOVJ5i+TNw7gVbyfInTEFmwXGVilMRZiCt8ok0o0DliqYnWDmMsFUG015oDQZLexJ4TcxoRxR20VFn82t7NMJkwXI+3osc2pOb360mOHk/7cuVRVvqdvTt2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmj2m5NL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmj2m5NL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4634C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761178793;
	bh=kXFlXMO5AAAa3HIdmzYXr+J6SIISS/cqcHNEM+QXldk=;
	h=To:Subject:From:Date:From;
	b=mmj2m5NLTr0LyBzPXUCJzQLRwLzINRcxZKCvQVp4WOkgvlwnA1sOLviqMnZvbvYaS
	 nzNsDSZuEnDcrcFZuH/bmBEdlSLIPMSJaC5IIvcqlFuM8Nn5Zcros/9WBys9Mpz6tZ
	 122z/vuDWIJg+HZMSTNUw11/yTWSjYx75oMtdQm9WbzTVbHEf6K3JPF+payOqoeTey
	 8C8iM85mV8sPSX9JOlFy3YIjY/1L+MNjgO+R7l3WpZE/tUGQ0SHgy5jiPRZn9ce6yc
	 d/P6MQOaxgJ4IZlCloAMX7f+AMO62uyGDMT/HidoB5QrXl6C2x6wrrGVHqpBfkemoM
	 tSdTs9t0Gr5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A58CCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117879358.25670.15444940083039111611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1956f3d0477e4b096bde424796e263be778b87cce647aecd3a07338194f829a8
Date: Thu, 23 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761178793

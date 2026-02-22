Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2501495E5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771783493; cv=none; b=oW2k+JmCC758i1ggZRZQQirhMdWcyXv42QHmqgZv/8HIn1zYz/8yMtUsPo1Rw1mrl5f4cs+uFJ53kWhQW6yiL2tA9OXGKai/zjloUC9gsXdWxgiO0ZQ2c+nR38k7DFKshsvg+yACNM+H8uBKmRw+aZhbPeKWJArs32ZhUujE9RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771783493; c=relaxed/simple;
	bh=I2I0WibTWkV3bVDH1Qk1evq161kU1wxOiWL4DjAYA38=;
	h=To:Subject:From:Message-Id:Date; b=ZFjRR8g1YoP8Cp8uYgjZyzWy3Iaxs6wIHE+t2JGRlOYsvwHo06PStcmz/6y7woMZKZrsZ5UL6zI8TJrhVltYQWJSsla/Wp6lZn3Y9ooK1V3wFHYlevFHrNZuVBo5qume05v/DrmCueqBMmbFADmsk/YB/8pX0hItU6EABhHYdkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgrQETQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgrQETQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4B2C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771783493;
	bh=I2I0WibTWkV3bVDH1Qk1evq161kU1wxOiWL4DjAYA38=;
	h=To:Subject:From:Date:From;
	b=dgrQETQABPPV6zRIDPPA4S2HESquz6BH5QRK3o3Jf0Hhr21RdviMTVf/51OPbvlR8
	 yAkLAxqZJZwcdNTPndipsnV1YCTVG+WR81xyrHDANl0mlS4hcXEGslcXcOQHQmFLRx
	 jRVTfD17TKnXtOA0uk5jXb1TW2EIDDxRfODps0+f11/mVignw9k1wsc8FUb9hIVnVi
	 gZmRrbqSITccpISBMnimZLjxvhGO2OY3y2e/QpcFIBvLv6oSigzUskjCK8domZdAY9
	 lx81hXq7uJt1bHgafSvjxGbuC0apCY42yyRkCRCM4zzYJ3P2JpK1OSXm1w+tdO+itT
	 4ELfS6YXe5Nfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92439C624DB
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178349359.6841.15299491085830645457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1ab973b4dbe996ea71770d8923c742c9238e649cba22d77d9b1112d31bd437
Date: Sun, 22 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771783493

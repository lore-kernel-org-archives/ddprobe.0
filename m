Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E12C468C3D
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788605434; cv=none; b=htq6KNA5IHxfOqjXNOVPSsCqu4A3EDcVAGLBwvWxmdO9qxz5lfgRTew6nMYu8qbprlkbefRBhD23TXAOJ/MtF271PeqalroHumDLmWtZbgQPnUiGKrFd04wJes34nRBFOF9KeRrZCpUhCtWR+2/92WgUZEnNVt3M2EpBXGMq0R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788605434; c=relaxed/simple;
	bh=D8mvzE/y9hUaurrp6vYH9yrTxFVcDhrJrtSWiu34iXw=;
	h=To:Subject:From:Message-Id:Date; b=IOKUtTeOwBtCMbZLvzAeJ183H3MKvPxGcvl2f5gzaGUAw7+mBzKEnrDU6nR/hRgwg6br91sjNeMcRNWcOi9TLzUKukyQaArPH79MmH1Vh2+vbeZrAufxWFGeU3T8pCExb9YGtrihpHW+KTV1cahPzh/Dt7sKI1JYLRQrY/hnQjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDlOVq6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDlOVq6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCBCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788605433;
	bh=D8mvzE/y9hUaurrp6vYH9yrTxFVcDhrJrtSWiu34iXw=;
	h=To:Subject:From:Date:From;
	b=GDlOVq6o5gvrpKhtGJdg6bL/mvMRHztpW5KeFpw6j1tIl9J1hErbnt7zWJEsqC5h5
	 T3KPLh/vnLJkju9JteiO7z8DfnYkrTWETYXPssFnyiedrZX/YQ+UeIg1eBXpJ7dqWI
	 oZiGpAwHiaY2xTR3sKjECEho+iAUlDyerHN766PltOoHuxq0uhmanhFcmZq45jFauM
	 WIb3pteDjk7MPmFh8i/Q+T7pbe95on571dTdwhZJ3t2gsJEzkP/Bhx+0xKRNSS/d9c
	 K7UG0wHinG8njSIeyI0uonwLvk/H9yA97f6OFt2alJrUMT5jvgs7NnaK43+62l5YVs
	 61h6xyAxbrrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB78FC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860543369.19908.14857190277449945409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb08d71d9aac2b2c0c5e5938c91e4825b9e6e7ac153393fc127c860f435911d
Date: Sat, 05 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788605433

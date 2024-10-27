Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29088179BD
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730013954; cv=none; b=bwXOHGv8gDnlUjDtmqmDUHaxcIJg3VVpGtqwm/MeSi/V/WsBdnHb6fwzgnN2tgvKFSvMPmtRf5kJoGkffGfAQF/70mQAcHaAc7SEiZxw25Cc42ni2AA1Ll394ztGzBrHDyz1bVRxra0k/4DJxkLPUJdIiZLxlTRq+cHk+aREQA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730013954; c=relaxed/simple;
	bh=X+SAHNYcIbd8cOh3ialMsD/hrus5jjGyb+WzBFYCk6Q=;
	h=To:Subject:From:Message-Id:Date; b=XlWp79ut3hPwt6804sPgUmQqCja08cQ5wi7Pk3iAm1UuBLmtXQw0JYsZWL4zFYosh2eYXVMxoXnLKCZy028iB1OgXkakKVoTPWYUuyLwgFc79EaU0NinGjCfb+ehhAoazbi3EFazHY5Q1JyBi/yLcuM2sZ7R1qovClg5br1yc84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFUkSICB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFUkSICB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14ACC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730013953;
	bh=X+SAHNYcIbd8cOh3ialMsD/hrus5jjGyb+WzBFYCk6Q=;
	h=To:Subject:From:Date:From;
	b=XFUkSICBpggUc/HXFiwCOkqrpfnMgut393AJ3IbmCxkRzfA5ENjwyVdekVfkT5uVX
	 gupnRgwhZkwYmvWc8xcYI2zsofhxzWVjARS/e861aceYGC/vBP5t9323PXnOFZ36II
	 xEdHIfQqqiNvoXF4Jd+dFnBTqdTgQejkMjgQhMbfCyfdz5X5835uG+vjQXOulV/c2k
	 8ZB6GqH4FKPXFCvs/wzWsTJ92j7lsLB7HTlNrdZOgwVJDd9YlcxU6OLpwPM38i/v0a
	 EGyf5sSzVZRjGomguwadev0aej1tDpsl02V/p0LR4pWvNXmOZiHHprJ1tZxx/UmoeE
	 bMvzKx1JC3shw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFCCD10C08
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001395360.28284.15239071777347414056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2eb867b5802700851f85888c6ab8bf3e0484a76825d2cf849d14e0d6ab83a6c
Date: Sun, 27 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730013953

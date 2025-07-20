Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2134D1EA65
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752998994; cv=none; b=HxWxb4Gk0KJpZwAO84FxeHX2tgWsuAZZGTRel1GHkUZ27Lx81LcM4aG6Ap72xTorp47xQHRTFcJ/z0/h/Kmfyy78db4d4z9DfD36Jp1iArHZQbekGaSTGbPw4HKpTGHYiA6A6L14hNZ8YQ70j/KFotvj14ao05xLE7as4otzlns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752998994; c=relaxed/simple;
	bh=tard3mFLAxMpDzOUsbtkUVuM6dtezYf5/LoT5SEyPNk=;
	h=To:Subject:From:Message-Id:Date; b=nESA3CJOA2BajbJTkxDOI7lW1wUMR+E2dHyWmkCGzWpEZCy71XvuojtjNSazCZuOafGppdZOgzYEZUbsnkOkreIVXoMaVe/GkzZEjHE059gXWT7uZpPWZ/fciVWAfRhvV1IO0YXchWzMd2zdWkq8rFGPTBt0neI52T9/lsYcIgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGwtIWwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGwtIWwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D05C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752998993;
	bh=tard3mFLAxMpDzOUsbtkUVuM6dtezYf5/LoT5SEyPNk=;
	h=To:Subject:From:Date:From;
	b=ZGwtIWwH4gspKUqnwee/8zqZ405drNRcewsWAT7w7e58iWjq+/KJiTY5mFuAJEjci
	 CEYoFzlbj95gkwDXp25fXKUOg1cxJSYM98XJerdHt+zaT1+wtNmvaR/uiTNmpzScRY
	 GYsdn1hhQZY0GwSYYVQDrrTbHwzkWhHWlLqAgGuIToryzj0QQFvKPlrkt/nX3kqq6R
	 1CXclBYNk7u2fA2zbILHkTgu7lNJcq7ui6KI2CdgzdGeIndVbWYZbnbbxDJmUb3DZf
	 cBBUyfGBNN/3S3pvRFAkqT8nTrEgYp1Zx2AyEl3P96XMT5Ys0cvv389QrGnSG7NtBA
	 jE7+3AONxyGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F5BC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299899357.12216.7509303934112424720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f332c4230a81f78a0f3969e1a83735a3d6eb4fb8d9c4df9a77ed17b3698a60
Date: Sun, 20 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752998993

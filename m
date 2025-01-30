Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4089D1DDD1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738248355; cv=none; b=IkEv3qhi03dx8UD1YWmb5xIghlhGOI/aQpB2fZS27eZaaS4ZZE8PUGTbbRWeNMgtJ4NDgtGilWkUL2bOiXOzFkLLItXE9lyVPPO76iTfqsUdG8ftA4IGXBgvJ0qbl3Ev1pTRX/u+LNkZlpWvqqxtIi2fOaUWkItrXQGq9iPsRqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738248355; c=relaxed/simple;
	bh=GbBTgPyXn9rxufyz7agi+cE11OQtyCU1Q6sagIM1uxA=;
	h=To:Subject:From:Message-Id:Date; b=WOUESzl00q2rsjEgIgDNl81BmvljBSgI96MycmF6KXdWJPHKrXRlHiVFREpQRnGMqh/HRKZ23CzE9NAbeIMUpZm1g9h8BSvAKQVtMNbQK44ujnxR/YuZMICW0+mPBU97FszANC+PIoMOvR7n3SkXMrdlwzWY4RtWmv4vEingbiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpaK1ohh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpaK1ohh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95CEC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738248353;
	bh=GbBTgPyXn9rxufyz7agi+cE11OQtyCU1Q6sagIM1uxA=;
	h=To:Subject:From:Date:From;
	b=EpaK1ohhgQrPVfVN3uASrTzlU+vXnFtA87CvNaf+f4+NkDtQPIT+wV3gf7ap84r0R
	 Tni6z8MPD6wVLCpz0u14mTMH7aM2Ky00+UXLwUre8+klre2+nUYC7vMmKFhZp3P3xr
	 uEHv3k6sngwRwnETD1nBwPNJ9OZtaOo2GYjtyX80SCnElhBoZ/+1elCLpvWx303ocU
	 ontYk8ddg9oe7rhbgMNHyVNNoS+S5ndSXnc70oiMMFEJXme5Ug6qK8OVySiYJHsy4b
	 3LHB+ZC0ZDncFYcW2UyPpMVsKDqxvOUzxuOqyTr0VfTDHFazcIDaPX27Y/rNQk4GoS
	 XWJZ2zwVx7RkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D8BC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824835363.27354.12788513296856286460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11304fb16246fc492299a4873887577a0a01d0712440e418f8aa226b7f26d0ce
Date: Thu, 30 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738248353

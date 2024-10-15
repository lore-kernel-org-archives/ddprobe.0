Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0959A1B6CFE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729022154; cv=none; b=rY3rYfMF8PfgiLoMdxuXTqxldocoXclyEQ5Qkr0A6ZbCSevtAkM7ls9n+Z2RUpdI343zot3R1dLq07Hnf2LXWHA2UYBUr0Gi46/BWmZcC66RfO3nl19wYkXpPXo4FHtxj+53XwG7DXfqWm+/yINe7RV4CzRbGTUunZ8mnHT2dcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729022154; c=relaxed/simple;
	bh=StHzkf0sGTGksrbXeZU93WvNK+tlCu7HFNBLLIMSerQ=;
	h=To:Subject:From:Message-Id:Date; b=cZ8qaui6gMrm2LrfCDg+NO/UW/DWNK3B/F2X2ssh+p8cT+2JOI7mvF572Ws4icPKX1V3qg5k0FThLU299ALtXpQFsLot9sydASavxhoO2Zt5hq9vfwr3+Zw9zuLRrL4yn2n4+nIYcAjmD77K1YxzWCw97h/bnd9Ykfs/UrGaWs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwnSC5Fz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwnSC5Fz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC0EC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729022153;
	bh=StHzkf0sGTGksrbXeZU93WvNK+tlCu7HFNBLLIMSerQ=;
	h=To:Subject:From:Date:From;
	b=rwnSC5Fz2HcpexIBqTHMC9CbAsYUF/GS18m5etxdjnJbWGuAc9vPrLhp1nrO15LRA
	 83LDKtg54Qcu0Gh+wOt7pqKZS5gQTHhI8xPiCzTJ6yjghfGVs1sHjFzJIbHYaIWZO4
	 l5wVy2HzQyXOzBz+bmE4VGW90DI37/nb4wRP9L/v0HkJn/S0WcCgFWwKJpz4ghizm0
	 vgSr52QExZ3up0thKp+xhbNzwqUhJxzIDfm/G/gpv6pWwAmn7GjhCVwLaTTva/vQdL
	 itXl3tV9wcL2YPXgc00oDSeU9VIyEV4iAuzR+PXwafV3YKEG5bEUpEPr83CixOanfw
	 ETsxxsoM+Ro5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD92D1F9C6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902215362.15022.14173011886548531674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d48c0432a95c8f9c23dd3f24cb37c1b249d14fb3aa9bbf73cd31cffefb9d4f
Date: Tue, 15 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729022153

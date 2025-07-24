Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E23F9D2
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753345794; cv=none; b=ojQG9cyb4oSHf2WIGg3fCuKST+RfrOePrMgfHZxQcfuwZPnf/vRqx4iGxdCvQF0SaNz2+IV6K+bAx0wpL5+RxJKKWAeZnQ7zNXZvzeVddddOr8XsB7xhXEyeNqpEO+H1E4cb/ZhDRlTC2H23I2NekOym+97HfXbk9iA48xi6xac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753345794; c=relaxed/simple;
	bh=NBPKfE1kHN9irj8uMToweW4beojBOZj/6ugokTcJwPE=;
	h=To:Subject:From:Message-Id:Date; b=Kk3MbFC1GecFSrk/RoHgnvWI3uR5RmIDrfBy2MuS2Bt4sVI1zROvM6QuAYUfZHS/oPjGThkQxpRbugK4sDhA0Pnggtzxy1tsLIoBT+oMoq4TJTJWuJqqTvryOMZeYf2nXGOSLGKUoOPF532aRaVACv6xytefS/wlSQr8mYHKnOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1QHJcOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1QHJcOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753345793;
	bh=NBPKfE1kHN9irj8uMToweW4beojBOZj/6ugokTcJwPE=;
	h=To:Subject:From:Date:From;
	b=i1QHJcOqKpl4S5O1bOdBeaYizDM7htTAdCyWf6vsfT9Cx30bKt5W92pR8zTH61Ehf
	 mBFpXc/ly+zP+0w+fLhfXFgn2pCf/cjjSJCDQzwtlhgi7I6NLvAYjWNIWLiBlTLQLi
	 b+tPh7t8p3jPyVCKLpmBUeSfqTjTwAWpZCYsjs0e3V8DJ88pKwvhCGtQ477ZrbcBPd
	 7uXJSN7Ae6vgyYeeoXnCg8URLQH2HHpYxuRwf6sfzXyWpz1ZjMXOpODpTCUP8h7nzO
	 jGDXDHX7y28Xz6SjbwlV/6KtaGVPUioc+j1+8qLWl73VoMIzhdS4DrNx4Ofu9sgyZ1
	 UYF7SQriSf43w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB5C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334579358.31158.8912353152012136337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d1b1059a8999dabd8feba94f72a4299d7995fbc02ee4da9a9458d74ff275f8
Date: Thu, 24 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753345793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D31547047
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791175834; cv=none; b=DO69EJoR/Kj/+MldqR0YQKHeU8FyMz/QQQLe4y37yDMF1wgUFHg3DUQDDHdZOQIgV31YW0tPgBRh/Ktm1nKVpKG8PVfuBD2S0sD/BG4rjrJZL29IB/yxY1jzQXxqb7eblDkFduM7scNf2Gw15EDRN3lncL/gSYpBTVrTJ9fi/vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791175834; c=relaxed/simple;
	bh=SDx7ItBqscpHUpKQSz3sIPqL3Mpkt/Fn3dRVMQkfRPo=;
	h=To:Subject:From:Message-Id:Date; b=Rij6TnZSJk4mOBqnCG0WcYW3mNhYf7YBrR5bNYGHifm+NLMI7NyoRHAIG4BERFw5HbI/YRtjqquWBnHznXx72zov/a1yHbLpYYh8A3Oj+YTbYCH1G5XPTynIBx377W8xg3irqRa9eziSYhc1Uk5RMC6dYSXfnwgYLW5vZFBRaeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpkIO4e+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpkIO4e+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4438C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791175833;
	bh=SDx7ItBqscpHUpKQSz3sIPqL3Mpkt/Fn3dRVMQkfRPo=;
	h=To:Subject:From:Date:From;
	b=cpkIO4e+eKg2Hnx1L8D060vCUWSuRM11iwBRJGCxyTovl7QngOUr7zM79C+1jcXHL
	 Mot+JU00nkBVUpK9ipU4xmctjFWXqo63w1rsTDWRefUu44EXpo12fa+FSCd3tsqPN8
	 ypsE5oFHNvEnCjCJmY0BqDriP6fSM+BGygqo3xzgIXc4EksrsAVRNk3o7wl4YLewb3
	 l5iSPOWqMCkrVhRCrJKrK9WO+EsosvsJHnBpgxm8okm9I3CiRX6/qR+kXjyoH8CPx5
	 +F1ydO9EqNuxRIMvi0HtpCKIlkN7VlCM1GMSJ1T5IBP4CW6acdR3ZV7ySSPU7oaOcl
	 UMfYZF5eo114w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E07CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117583368.15160.16700361439169646409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0cc4aa4ad8a32ada58ab6949e652d60026abe1e71888eb9646291de87ce920
Date: Mon, 05 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791175833

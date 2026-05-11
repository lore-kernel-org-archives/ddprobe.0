Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C0137C930
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778489434; cv=none; b=tVmHzFNdHdtDOa9VSLYwjR+0bLeUEeBpSaTmTyC1SIyPLWcKMrBxtissbvUKtEZhP6xaqgN0NlAMR5G1yR9MbktN/QO60YbaGfS/PRa/Vwq17a4JzBhlrSK+PTTtxwCIqnljDF1aO+S/AD2qXyhywB7Zt3CQYiofz8QQwdMP9Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778489434; c=relaxed/simple;
	bh=1MB5d0rra797uMSA2ljJs3aSYarFtDBESvwqTH5cQ1Y=;
	h=To:Subject:From:Message-Id:Date; b=E0rp+GvRnBkGZz20JaKv3nar8G5UUY3yvSgnPu/bCXu19JMgSeaJXNCLXOzZIOIwjeF3LBNGCeDndHsVVwMgQh47c7p10rMROXAXx5QNCWKpZ9/XPSmENodzqgDhuuzQ/uJVlCZDUK9OGAjpngdcuVZYDsOUbD69qpQantoCovw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC2Mpx9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC2Mpx9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF40C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778489433;
	bh=1MB5d0rra797uMSA2ljJs3aSYarFtDBESvwqTH5cQ1Y=;
	h=To:Subject:From:Date:From;
	b=VC2Mpx9yh68w0OYVZzz+QAvFFVE+mwnCU8P0RNdfT+Axdp8s9RtJxLXPPXUHd7iHv
	 Eo7Qhft0t3SHEhWYxqnEuOpCVHM6L72zuNfIaSVZcZfqTqFxSPGBlB/Czd4cf2DH5o
	 orbCZpSGAYu0ecrgA19ISWl3g0Jj4lEbUYhg/T9Jq4cqYtYH4AVvhXsc7GDuWIoNYh
	 +85uDpw38col9GqUrncZLl/KnPOwNjoog+Lq/Yft/trZpK2s72bfUe/OnG/Eu1buEK
	 LigRzu3p4dPR6QHcrTRkvS6gcfiBidSS88sRGaHnk0uTPzfmn9obQmg9SFix4+6/20
	 yrtZdS7Q5oGAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B2CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848943369.15070.5448492629494408639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29855849995e3ce431b2ec16e993aab04bc751f0bef0910c8b0ee4f4713580d9
Date: Mon, 11 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778489433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1A73AE6F3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779811354; cv=none; b=rN5tyOR/xvcLY9poIJTJosbrxrb4QRQlSeBYz1kn7wsnS0iLdzCf5Mh5ZIavoKWnIT6emfsUKds/EHwY18Q0bdagCaMJufiY68Gp9VyitVyXMmyZcZkUBPmUY5Nt4UU5D6ryuhWPHvUCCzdDNqIzy7IylH6cCQKVaH1bFFaYflw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779811354; c=relaxed/simple;
	bh=ARJkxgSNwRKGkLxE5QMmTGxnB/qkbmL8SAtXWufiPvA=;
	h=To:Subject:From:Message-Id:Date; b=eFcVT5LpyJIDCGVKrpuzC2aSJ7By6PWuEqy74Fs+W2IdigYf161gFI9Q3fd11tpGIZTipHTK6VqWGfgpzIAdRBKIXbfeEWvQ/RDlAb1X6Qk0G/bHypRON5uCxJ+dTlcYQDf8NGUemtaXpf/lAZabpGdDIKFcwSV3VbWOm+bR46Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REj/isn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REj/isn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7027C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779811353;
	bh=ARJkxgSNwRKGkLxE5QMmTGxnB/qkbmL8SAtXWufiPvA=;
	h=To:Subject:From:Date:From;
	b=REj/isn+Kh4oyrCX2LRIhPsAfQDArnzYny5Fla1xuQJ+Yu8FAXQOe2pxFd0xodwNz
	 tr9/I0KIeLlMRW9QiRYxCtrYUlZuvo5UuQTKTMb4ECw7YnKyuz6K2C8Cqj8mlj8Eb2
	 rG44Dv6ZK33XupGiru/p14kTDv6c5y/t/4sycUIGuGXbQeI55LUNl4FFgzIIQ0+55E
	 F2QWtJjoKAM2ybrWxDo3XmuaoLDO2iWf9Cz3pMhCIuu7al5HkrBh/M9+9JnRjGz6xd
	 ktyTnfaPMU68vjMW3n/Fb0WWoezln1HKhUyTeB3MC9TIRStQyFGtHjM55eqHft46vc
	 jzKCTHfdyaMfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB988CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981135369.25292.2382922867524923410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf37dbcf69b8839e613ac699cc8b0c5c89942aacf47e1124d9d375ef9555e2f0
Date: Tue, 26 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779811353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9E478F24
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753023594; cv=none; b=ja1HbkgeHDn/lbSLdofgd7RQoscO3sO21u2ZWW5puOfyzYjsg0vtLYPHwXA4PZXHzIdXTuHJpjq5LfRzkF3Ha71xX1IZaOj0AhB3BFcRFuhB7Wntl+mQiB5mJ9tQEzqLKXDA9Q7DnpBMgBaj/zRzhH0bt7fEajQ4OGkaby9f9dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753023594; c=relaxed/simple;
	bh=xiHFJZkvdArIF5Q94C9s1Xv7gmu2DaaVNU8R5jGSB2g=;
	h=To:Subject:From:Message-Id:Date; b=uT6Bt5FGjpwo5eEiZ7HQAGLlZd+eG65Y7SgS4fnBEl7xTuSUbB2sG+//uZLsF0sTHYCtA2LEgdhbWLm5aA0J1KnP+6vJ/dSH1+aedoHAdsB23uP9bKeoLG6M6Hg3ShKPwzPSI+KUGpaDTWxbVEPGGY5pXq2L74XZ8kLEHr8Sugk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+ZcCYIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+ZcCYIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8FEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753023593;
	bh=xiHFJZkvdArIF5Q94C9s1Xv7gmu2DaaVNU8R5jGSB2g=;
	h=To:Subject:From:Date:From;
	b=I+ZcCYIG3QAZ4ho1wGzp1PBxzfPYEtj6hB+eosA6bSP7tQqIfAdTwhhp9UJH1r1vj
	 Ilr+ouRuAuFfp6hbDDvtvsZm7q0maUtU6R50Z+SHTCequr7AidHSvTVaYyG6z10FhA
	 kRsP5cBTtzajIpf3qrkTytAF3sv31nL0Vl8O7XdiPNGOE5AwUY0ot1NaqZ1dBSXZiM
	 VdWTmvAwbOy1jvAZukLzAUCwPAUq4ZfTY7JMPzxpik/v4DOjyLdfhZOz4thf1OKmQ9
	 P8VVFW+skC02TRvVL4DMPlKQ6XLR/bYOn0CnjFhvm556xAgW+ESRSn4UMZWBTuLYQz
	 M0CizH5bWUaQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEACC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302359358.25581.5760069620798084151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcda6ff5969ac24dc9d943f3a2986eec7ee5c473612b538750c1bde72076581
Date: Sun, 20 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753023593

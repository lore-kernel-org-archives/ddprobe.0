Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EB837E2F7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769680434; cv=none; b=Q5fmwSJLNVsxKm2wSkJ5Nf7iugUQsRLVJcGhe9bfyffD9EgxsiBUkW/157HsMNHpTBhkzQDPpehGi8iQPQkqXZdbeDJowyPL7XkwxtIj4/3lT9rDHArfm+bxiqIu7Ol98RCykD7nvIhXpv4nmpe/bQnYSqMAzqwqzYdXck7pp8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769680434; c=relaxed/simple;
	bh=/6P1niJ4kTbKmdQMDUadd+RZT7bdzc12eD01xP1xPQQ=;
	h=To:Subject:From:Message-Id:Date; b=aoZyNEFibfr+lfsL75+8GR9byje9qIZD7nb0mMZByL1O/0BrltvZ85AaFFgvtMaybjCmt58V0f5uRR37EVUl0Zr7UJo7vK5vKIeXLiLDxVQoEawT+2XYiFBCQMxYbx3OjhXO/NyEp73Rj6zu5s6DaQNdWqJtOscSqL/lVEyxtig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb7Yf8D2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb7Yf8D2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ECC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769680433;
	bh=/6P1niJ4kTbKmdQMDUadd+RZT7bdzc12eD01xP1xPQQ=;
	h=To:Subject:From:Date:From;
	b=fb7Yf8D23BAE8TuWWxzOA1FyQgXoCTzCALchSnzr1hQMOH5NJXBMSmEOtFgBsWNWZ
	 vcV1yiEZR0laWAXQx61rWc7eHX9qAmXI3Q1MswhPUAE2a0nIaUgvk+e3BDCfwfToXz
	 PwxflenKXuF6NxjlzVwYoamr6kmdzGCfOWJYhp7BUQsi5AjlcffMiuN3gxt3IBaajf
	 wJzj3D7yAH+pDaiHiTZce2gVlLBqu5o++ZYbfleYp75FFRG6MduxgMXLTbhl0eawJh
	 lhwwxdMsSlhsdC79fY+uhrEr+tZJh409vgvB17T8ZPHZkd8hA3ZvWNqkVYQ4hwgYkj
	 aDF6sg7c7kDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D75D358EE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968043358.29467.14209210225987325200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fca6f0a1665c004ae64640bf68fa0d015188991cfc1c5c5d74a674081b860e
Date: Thu, 29 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769680433

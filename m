Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8FB43E4A2
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791463834; cv=none; b=p4b0CDenwa/yHhzBohRTmS/BZ2tucPI1GDXbD0gnR1XembhPrh2HZYAgrFv3P7koAKqm2YqSXZQp21y7jckKBhRZaOXtnZSjDKUzNpfdfyACYl/gd4nrs5gldD4Uhit11AixoxnwDGTP6SaB2KMSya2cJlfkWaOGT6F7hGhff/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791463834; c=relaxed/simple;
	bh=XuNyTe0rGao5FhHI5BeprVvecxHsBNY0x8kWLKJzS1k=;
	h=To:Subject:From:Message-Id:Date; b=elgvpC/p+WCruDMNaWsnUlufgdCAP7KySE/o+bzkpQQjRhgLsNlP8l+SgRkLB9f3OyJY0fSBh+PFhETymxkgcOUzy1Wl+ptHZk69oav2o88MtnNkH649PlskfMORzmDSoYTrrO8BGbs2s/yhxuM3Lb4gVuN1PKF1q31/A3w4IUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+9B2bSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+9B2bSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4894C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791463833;
	bh=XuNyTe0rGao5FhHI5BeprVvecxHsBNY0x8kWLKJzS1k=;
	h=To:Subject:From:Date:From;
	b=V+9B2bSV5Y86wZd+FCpIESez4lnuaffPng+tm9OO5AtNvxZo0PdbnImX9y/8o6izd
	 O6HPnQOh/iOMrjB3ofYwA5a5GmQPxClR95zUdiCU6+7cO046cyvvxyfHZXOlNFhpfU
	 j8BdOMcXm1uWzZpSx0E+KllEo/PKwA2vHEde9lXlKzdun3rNmwJcwnlpydf7mkDJCr
	 qE/m3zkz5c9OlKA2UkZjgsBhCX8hPO1PrIOmQECx54+Kbeu06gfz7H1cg1B+HcUHzP
	 Dsa+sKcbz76JPdwLaJJRu5dwbeQYBNaDwTPvYZhzWydOtJzY2oJTH4+Tl3JDAtx6Wk
	 nlQy0sldCUKKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD048CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146383368.27033.9594943459667379859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0e06309051b06f89fa752af45eacfcf597cfd3111c7e1f1efb759a06209369
Date: Thu, 08 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791463833

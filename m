Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C79D3A1E8C
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766799234; cv=none; b=suJXUYiXiFxsuClJPW/KWW6fqdFLB/Wt9Gz6Lrm3LbN+q2hwI/qFp8l0guHVdHDmRAuvrf44QdXZCtsatWT5vbNkPOt9o7IofTLYRvFNCJILnsVNUt6TvwfEAX+ku0J4QLD/npERZ+zwBWflub7aI9ALB+xmv70Htb74twMWK10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766799234; c=relaxed/simple;
	bh=d8tjtL/3vh8Vi9W69sstsyHf12oEUmxAt7xC9BnLcfU=;
	h=To:Subject:From:Message-Id:Date; b=E+YA5yCcDMBghzqr3mH08yyDv1rvc/y6gA3q4rBE2atsSgzv0G6v9IST0t2jDPNG37MH33nmvrGAOPkZYzxnMMEo79fF1UP/onNVphnKL0LSISFmkdiYjBvAjApksp4t4OIBTZCtHrn6gGrdMQKtJBM0ZhYo1cRvdEWXiFSHQu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujGdiXqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujGdiXqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A871AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766799233;
	bh=d8tjtL/3vh8Vi9W69sstsyHf12oEUmxAt7xC9BnLcfU=;
	h=To:Subject:From:Date:From;
	b=ujGdiXqLbzn7Ogdu2HCfZVFiKnu1DTmzhWmCdxgIgRSELCiYq+5YmYGk1C1/oZscC
	 71WHLqw+TFhduaf2xpyCBzDtmAwKRiW4UrKyxZcUE18jz7EZjTPWNudumt20bpP7gM
	 P11oRFeTwbMWLPBCCiqnq4eE/XGQzmValxTyUn5fo3gmsC46Czne8Vh6grsNZCmd7v
	 6nnEai/dw0jN0iQ4gzcaaBJdKJs/zMttHA9cjbt+1jl4kWgzRp8XNQmtREFUn0sVPq
	 F9WZAF5JA4R1Q/ZQwJ2S0rOyxVlZv351RmfSue0nalO7bEQfWE4T4z/UO8LrwIpc/D
	 Ka1fWt1LKZOyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A20E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679923358.4654.13648141709338887194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd71b78b8dd1509976342b721430ef8fb96cf637c7f58ecb5052b8ffe2e98719
Date: Sat, 27 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766799233

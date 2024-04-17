Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B1F13D53B
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 14:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713365963; cv=none; b=rjYS/truGiRU0a32BmpQhBzpoAjR5o9sjiIfhVOYasG3tK6OPXHiXY4sWZ6p3kfBg88TfioBvaw3F4v5+Rxt51qaTviCGuuVzMYIsyIj0HMrFxhVQR7rEnnY+PocAl8Dy4oyReBWSoocvmTanOrdB8PEst196LAjDhXi858mGdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713365963; c=relaxed/simple;
	bh=+S+4liSbUD8u26NifO3lxEBIRsAljoVwcHQDo/gMV2M=;
	h=To:Subject:From:Message-Id:Date; b=e20i5ScM0IXBqWLr1IDtZxryqn5nQzJEF+wfi9FNI/NQdiu+7mnCZMoK9aXjVXLsXoard6xZJ7gC+rXcWbsvlah7R2gr2SwPzaUJc5366F8G855mScSSCrNw8mWN8GtpAR7kId+NEWkfpk8Iv0ixSSo9elff5ZnCaptybY2TKWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJWUgxE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJWUgxE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E506AC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713365962;
	bh=+S+4liSbUD8u26NifO3lxEBIRsAljoVwcHQDo/gMV2M=;
	h=To:Subject:From:Date:From;
	b=sJWUgxE48P2rPCqhQ1WvPYKzzmzJu3IIa5l5H+A5tRqthyFeHSl+0xCa03Dx7FPI9
	 AExPWh7rCsWecNQ1D65UCem1vcOTLamNfwYHo1M5rOanEm3W6/zpnCy4L0QwVzBho/
	 sSZoD2CRzz7YNWv3zznHxwzDGMzxStROuLgSHkcSW+uPsLVSCfm84AUIbBu8vKtVO6
	 CyrYu94z5mrei+WlZhtkp/kYVV7nV2OVRYBkN6ivPx1pTUmCi2kkcEYfLzEE0dflLi
	 q+wGcxzDC4jUqJzOczpR9aYDnbzP9IBAAl80KwyXchCIT2+uFF8bPcpEEBE+OKzoQA
	 Vk0mAKDzFEBIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDABAC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 14:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336596282.18819.10146274254256869048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef0508e42cbf1a380c8e3bb0ec33331fe6d309b1e4f6788ffd4a04af1783e1b
Date: Wed, 17 Apr 2024 14:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713365962

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C894343D75
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790717434; cv=none; b=LzjVNfuXoDIhE0FhvIAi4At5K+6pDEb8MKKWWmpL+dhFaIyy7ng6AUA/TOD+sQyIvEvwscQsc+nBeUsopJIFyjwx2fnhNygYxRAxYKTykE+shFiuhCYiUoTuI2K2g+EwTvdU/bdiVQw5HLVnEzm8FtDrcp1ucw+lDuA4QV/+kmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790717434; c=relaxed/simple;
	bh=92eKTb3dueTPXPlxbLTC8yHyfETCBkNXLbtr9LvD+bU=;
	h=To:Subject:From:Message-Id:Date; b=fOELyJ9SiLwHvrgA07Wm3wAO6vVHZPsAW6VHE2dEj+HnN0lyoPHmwzI4CU3Kgcx8Tugn9XBfnPy+MSkiUlPINg5OUp4o6+/wihbyius3XGvAOx5ZnbRm5cdUs2GriaQy1QL7mPh81PWQ6CaOwJMAeiqobRzy2vmCByXpnF9R1ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k33LhsPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k33LhsPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C089CC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790717433;
	bh=92eKTb3dueTPXPlxbLTC8yHyfETCBkNXLbtr9LvD+bU=;
	h=To:Subject:From:Date:From;
	b=k33LhsPPR3hUTlAOy4JPWVQaMs59LNFcRhBFuo+ipy6nGwMrQ4YrU8EOYLpwdcs+s
	 rMWkm3M8UEnbyxQRFkwEDZixCzen9hGuwL8HpbIZP5MjM9GM0VfPmmIx/2iOk365Z6
	 Tx67Z5kRQCLYr1DkSrEBVmk89jin6sIqhxbaBKSItnIHHkjiMYzxHab3Y6tC61SoZj
	 d/evBp1ocZLd6W40N7oo5kfkDAk23hc3U8RyCUtTnf+xFBvlmW2vqvXUcmMxRvfUMh
	 li6+kNqFRXD/PTwdYtqueLQLNUC9fv+FP1EIosQs0/p3NaLhwcmo2AcgJ7tF8fgkIZ
	 qcQ0duCsEw82Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D7ACA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071743368.3530.10639527444164918599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f06f6e6a3efb0ea4141f88d912146940461c37d335743f3a3fa757f39e333c
Date: Tue, 29 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790717433

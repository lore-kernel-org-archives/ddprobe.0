Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356FE1C01
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740702535; cv=none; b=tAcTxnyeh6KYa/kI20nuD6bDQPN3NvjuKaePE6nZl1SKvqXwsFMsMdmSnd6aL06kTYeaA6Vq04fuX8fnLT9ccluIt9VpA2tLB3YrTRldxnFjAHU9y+mvngdG9FbI/W0hZSlOaYDtKytAxhlGTfGV2yZB2Udi3MCTV8deTrRSrLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740702535; c=relaxed/simple;
	bh=LuVHky3vjQBCLggvaAU8JDkn6W6mmCbuZiC09KNARAM=;
	h=To:Subject:From:Message-Id:Date; b=hGr80VX9OuEHThQjPWRDfiH0rTEcFzCXh5BkIOiAahrVLDGb8Kl9MCluw6goxhqofe9kDqcgTbCOjqyUgoYoGdvyYgXCKqkz/p6ygDuT7ZllRVmWh/j2vtLHUHFLuiR786IrOx/budh5CL9oIvA0ZL9hMwdgSPjs7niuCKhv0Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnwuZ+qO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnwuZ+qO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740702533;
	bh=LuVHky3vjQBCLggvaAU8JDkn6W6mmCbuZiC09KNARAM=;
	h=To:Subject:From:Date:From;
	b=NnwuZ+qOt3IMPWcFNEcuosa5jwT3Ly+rd0+aJhPQX+SaPMsrWQ3eJ2kFwrGm/r/jj
	 ilomoLsgp2sZfVEahHpIVWco9qaiIC7dbx/HWiaQ9SMNegz26AlxxSwOSGYTXocWBp
	 vmisC8BdaeKa8HjDxNqiYeDsqvaczvAvA4GzjL0UGwMomWK4fVs19yrChpEBipXI7w
	 PcOQJG1eUAfAdxie65hL/7UNkLu1+mHKGQyUcRC3vWdw5pyRTg+VrzkzoCDrjXeXpF
	 ZgNlHYHJd+vAOWlb6Lx76rJlvfVlzzCv/n3eNoXz6B8CmMZt6h1mBpVZAstnnjevJ5
	 dMoiL5fKHhHfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95584C197BF
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174070253360.12482.16546931605413096958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c973c71d8623bff642f3f5bbcf6aa10d01619a4cefca6bb2d532219831f8f5f5
Date: Fri, 28 Feb 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740702533

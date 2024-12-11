Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A6B201266
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733941555; cv=none; b=BqJD0UCpLBS2Y7+BDzfrWTFlVWMmLuZqjNuMwSaOGmvVBDkBh5rvB4qKawLqmu2U0L0RGB9r2BPF9YjrHvT+JBAKFA/Sd2uBA0TBOK9ecs15NHSJ+jd/mJlFg/7v+cwwerfqcwof41edb+BT/xpforfLNTl2o0J4lLff2zbdQ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733941555; c=relaxed/simple;
	bh=d86KHATdFHeVHiIBgwD/7H9qd3lhtSEgcW16Kdi1XhM=;
	h=To:Subject:From:Message-Id:Date; b=ZFgwDnNCHuCvT/tNmMjVDDmH5ozKgUexW6lKwrm+/AWhzMPKqll9gaVqXVwWC+CmqxQIY3mIFmt9y/SsF6J3LUXGh081LV59UhzUS1aTfZ5ZeKn8GfOY6e61rJ0Uj2Wd/2kfZGm58f39eZ1BUPOR30Ra4uzs4db7uCVZFEqUDTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6bEmatn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6bEmatn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3775C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733941553;
	bh=d86KHATdFHeVHiIBgwD/7H9qd3lhtSEgcW16Kdi1XhM=;
	h=To:Subject:From:Date:From;
	b=u6bEmatnzIkgEGOeUc50ZorDTyja038uhtNgOsNQd3cM5RUOdytCac+p1tlLEL0gC
	 oj0O4MHdA5ODmTDQOTwmEZpM4a3CTu7kNyzjOSTIR2jrSLhA4JrX2dS+66zFC1h0jR
	 i1td01mkRkNAeRAjeuho+GBgzf1jh1ZLZPS8PV3ptrmLIYh0lFVJ3EQXuyvvN3HlyR
	 4tH/3C9L3d3Solla7NT21YQOB6lFP13Y9IyAprYt6DxngkSbzu6ymVc4nu2lLBz948
	 ApCsK+ut/z+S530tZCAGAx+9bYs5aF0nK8nX98HkPO8PxiGB67K+Wnixwa4uKG/+6n
	 SEHxJ0O3feXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94078E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394155359.11466.15521450871945269405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedbaa9213875ea16f10b304caf7cfd600b0f2f13107aafc888e66dd3a0770a0
Date: Wed, 11 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733941553

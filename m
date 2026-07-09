Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F39335BA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783573714; cv=none; b=dhqYv11E0tFWXJ8rKBIwQAg/P7xTwb/GHplmbELYIqPU4/9sS55zZN3KcANnB1GwjngwsGBSC+iOIMEyq3LX6Nof/3VcE07RWKevk1AUe+RwfGvKTYuVuI7nAsOx4VdQGSkKbgC51tZ8TYSBOEqXpXWrv1w4tOT/Z6/ZD56DKO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783573714; c=relaxed/simple;
	bh=mVv+B319zmQcI6CmjW4KU7uCXJs3WRnlWhBf6JeOnJY=;
	h=To:Subject:From:Message-Id:Date; b=mRVdcvw4XpxYq69T3Vf/c+le2NVhgLB9hptcbMUegUHjU2xMfklCh4lTJJJUi+15UtAp7wHtXKwpyLp3n2ykfC5ytLbXosw53Xh8mU0CdU09ofgrSMaMeBwoAEiqGO1IVocWT6KvUJmVtO54uz0978srGKCg/+Pyi66/2YVOmlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5hexywX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5hexywX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA40C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783573713;
	bh=mVv+B319zmQcI6CmjW4KU7uCXJs3WRnlWhBf6JeOnJY=;
	h=To:Subject:From:Date:From;
	b=E5hexywXzh8FJPHFB4Neun2w7LY8cc0Fo7bi7KTFyZXOAlm4WoL5GaMtRtqFGcsaC
	 5SBj+wOufkjozD2ZWT44yyC9pZ2McD0BSrA4y5mLi9u34kqSYU8Jbn09AfnDpf6das
	 a6EsToCkRmXh2Db9CHuGdRVltAx5odOZ3Mb3dq4W0EEYV/Q32tSEsy4dcpYeG5SHZK
	 nrqegTyTsledn2cRLaErj4GfjHiEWuc+0UXIh8pMsWWFHsiEZrq+tOS0RKuRC+Bn8S
	 TkhV4Lbyl1Rgh/BFjsCBOYzUJZL89P1DdZC60OE+7NHzfkxePLUluMtKfpIaiRB39S
	 aU/hOB0NkXH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88FCC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357371368.16057.17817276490503841267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ec3476b97ae72f4a127f637de0abf02405e595f872266d24d0fb0e153f210d
Date: Thu, 09 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783573713

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634571C6B4
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713134963; cv=none; b=ShBrVnGxQSe+WtHVjvsGz3Wvcjyew2qMo3gdSlXjzHFXX+0ChHbwI1K+hvlYwbQa8c0ncNYW1a+TvkPWlgYgWfdU9M3h/pns6U0oTvCAAntlI8lf4ZZ+mudMpIVV3662o3sIsFXdsfJ4qSBq2mG1vboxGnkWYr8VzHlV+02loT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713134963; c=relaxed/simple;
	bh=rEGtQ8SwqX6LE89V+eC0yTl9IDlkHAvHdTkbc0kr/8M=;
	h=To:Subject:From:Message-Id:Date; b=D9YPm4idu6kblgP1lEBH+G83NaiIJtLciu0hz0FTu8fvaKXYwRzM2oMLj9d0rByWEUIAZvs/dTAELuhczt+hBO6nO6/DXZKYWPnMig/sBo2u5m0ZmCqQh8R3UehSUxCEK2z8MweQStw0fWHtCtxVr8dR63xjYXWuZUq+GMZOi2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MitnRr2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MitnRr2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC114C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713134962;
	bh=rEGtQ8SwqX6LE89V+eC0yTl9IDlkHAvHdTkbc0kr/8M=;
	h=To:Subject:From:Date:From;
	b=MitnRr2ymHXh24Eq/XPAon1OBJsCI+RuBosctnkSIrDr4F2RO1DVLzkNXT3GL/OSC
	 6qiHpOk4lwAIIalQEwmUGef+6cwp1qzBo9fcB1I1JJTmVIfD914xTUQKiwPEXEFNfs
	 g2YHzMbffMgHaJKjYXuJo735Iahqq8rT1O1zkFsJtMyLSOM6Uc63ecXf5G7/haXoSO
	 rbp9cgnmDGe31Lt85Cwe7CEbXwuI3ryxZgYjF0Nu6hgl/CDZNlJ0MA4zs92g0ExzNy
	 Hjix+HWnu4kDQHnJEaCziAH7leTN5D3dC0S8bpY723Y+I05I1GycCzVTPic173bES7
	 wDH++UZrBSzXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEEEC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171313496275.32374.10504290584777735402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9350493f3582f223c48cc9337d403f9604eb8f2e9930c5fc5ddf9384577277
Date: Sun, 14 Apr 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713134962

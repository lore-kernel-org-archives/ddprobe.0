Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429F1171CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781480794; cv=none; b=Di4N8VtJWO7pwDY17tgtB3VEiuDp4RdWezOoCifDYj/ym03sXNon3MrtImacFDx/UoE6sET1pa8n9a8F/WfIVTKQV5y7fPF3AynoLVROBkel/IZEgH1UYKJ/hYCUfJcCPxIddsnVYuUW0UHv3tjeZczwuZCzDdAKSzTtTS5MRF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781480794; c=relaxed/simple;
	bh=QEFqUZFXA86NlVm4TT/kBTiadFs7X9HpfkF7ecsS3a4=;
	h=To:Subject:From:Message-Id:Date; b=TeR/7qqjdtofgAD0F567nGzE3LbrDBUK31fqiazopYHJgeBEKC0+q6HBHepOYvVCM8YmfIuhioxoiF9Yuj3L3TwK22rFbaRaQtwUMIBo/aqaiQaqHdP0ebJ3xDf6cEWscsQWUzqlMm3GBM9Gu2399jcGbXOBHOuEiPIdhFMB8OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOLNsA41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOLNsA41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEB8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781480793;
	bh=QEFqUZFXA86NlVm4TT/kBTiadFs7X9HpfkF7ecsS3a4=;
	h=To:Subject:From:Date:From;
	b=jOLNsA41aoxvrP32aDZ5LR1aQFWKBj+xk9HOYXWIAkymiVLjR6Gb99MFVkL2zmTgn
	 1Tzn9prB2Odxdd2TPqER+YohYbiXwSU0QMUR7e1a0b7LKL7jmyHpvV3Ly67JnLKFWI
	 HBur1aUQ9QXgHLG67ZnpNgmBEB1OAFA+T4TWY6wdgBsVBP6EKPbAVmY4zhnp59fGj/
	 o9QK2sDpsr3WMgvBRXN55+aTFuLEMLVGCAy3+zl4qsKetUGPlvit1ClBSh6/rLGDvr
	 Lr/FjnXxZZ5EzRx5KH5JHlOaY55qImjWugSlz8jI1les9BGHLosRpxlX81m9yLMma/
	 hNYz8B13NsOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18E4CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148079369.7820.15424943405731654376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9b0d76188f690b5de382158fc8cc5a526458eaefe12dae9e5ee44cca03efb7
Date: Sun, 14 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781480793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633D82253EB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790216434; cv=none; b=LF1wePXCwheuRqp4rpbnahSqB9ZfVOSsOU9dF8NAmNi6BCLaUYGzIVxfwl6bVzMshrjchvdjQCnQfH+CnnxXG5PNhoeWOe0ReuMxT/eLDoU3mS4bJCSb39vHkpii2NyzQVFdcVPhH8M/dgSKfKtK2noTBL7NDOFLXRSQz+UglCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790216434; c=relaxed/simple;
	bh=ftDq7oW+vXYCx8yc9sL92lqQOHkRVkgx9Le/g5odhaA=;
	h=To:Subject:From:Message-Id:Date; b=BF6FmDna6viGmGvmTVK8QzMe9pOj31AZ4aVyASbx/D/uO2SL9JjVm4MbpV5oSGj+MlH2SxBC/aVy5Utct0r8s0YilKGhdqAkv91A4BijPqlBj7+XyV5+vsJ0oliY/4i5wl6mqB3roBo34QfSAar7dMiKHtY2UZqh9FHtxIDW4Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOiTH1vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOiTH1vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF73FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790216433;
	bh=ftDq7oW+vXYCx8yc9sL92lqQOHkRVkgx9Le/g5odhaA=;
	h=To:Subject:From:Date:From;
	b=SOiTH1vyDo6i1vee+RZbzERVjtPvscO75b0yZ7Vmw0c2X01Uh9+qIQ9G/Z3AOJriM
	 jz5I29VlAT0Jtyf7+Xe+cUDHVVrxdBDmU/1IJ2cNM3lUmj95XzvoIViuupOOzjC/If
	 RYbRMi0t/mC+oeiFRJZgTirc9LrUdnxqnVbcmW3+WIGNJfIhMOWGkgvG78acMuoinT
	 nmD/x5P5PL9VkEJkDBzInVqZ4QwpkDjtnjLOj5yu6TNnMWuojICQ+rX7pleLMaOW/H
	 YBt++5Q+7teax5WUv/6pygkE0kdgPa8TEue58E++7hohQ8j9Vih77QAybl66rrwZI4
	 vEQfBlmuc1kpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC11DC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021643369.25765.12949988873226252499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6a2f1c31cbeee36f79f4a650387af21781676256446c47ba29b80b5f390f01
Date: Thu, 24 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790216433

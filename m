Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1ADDF71
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757842794; cv=none; b=QoVUNvBxl4yIJib4ag/6ulLVM+3FXVzbAjLE0h0F6GpN15/rz3OGPMNbwftkd5YxivX2rnSarp7dRyLZIOvt/mxsG190a/NYC9nU0J9VcDsr1ZXeqYw+nbsNNeTMwjg8OXw+E1lrbPU3n/OgVM/WNhkniZeeXkDA/sslyAv+ew8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757842794; c=relaxed/simple;
	bh=T21mVeRmY621Tz2g1jgnQ2IzsGYeKD9b9Ldpk3aL2pA=;
	h=To:Subject:From:Message-Id:Date; b=oOHrfopmlnxWZLLLQlmDxpQsRs3xmmSw69ZoypiSJaSq6tNZYOxnk+BXHJEy33IeefvfB1cyaKILveg3JfstiqRSEdUCifG+dyKSHLSDoGwzgK7ct8PM2QMNXUriz5/DIr1Cfp9GItbJnuSTz4Q4k2wfbbBU1v90qvqxct7rfAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm0tK0N3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm0tK0N3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ACAC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757842793;
	bh=T21mVeRmY621Tz2g1jgnQ2IzsGYeKD9b9Ldpk3aL2pA=;
	h=To:Subject:From:Date:From;
	b=Tm0tK0N3a42mt8/5qlABdaP8pYOwPfMzOyR0fWU2Yrh9u1yP33OhX0rbwAZmfIJjN
	 ltmT8YOztqbT+JRcCWFeImD2PqJnmEp2ZCrT8CN7wNMQOB+J/SPh7VxTALmz/s08pX
	 5fyf3Kn5HotqPicgGPwOZ26zGbpNlpUy/13Es01jtkpoixGr5xV8myNP6C+BkczIl3
	 KNBT6zofc2pQoLkb+4JJfyIp0ftaSGo6fgwfqkNHg8+YVJagcD0Fc+35CFDs1HZc4R
	 FqJyZreDH973cUT/uoTfiUYxiaW0Zj6RNiBZSfziMokSARof/firZ5MeNJj2iY9u+T
	 GXGLtRIKVgmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E2CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784279357.8015.14698059739064910015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3bdcc3a4018ac151b9bcaff5265f066800183af9b782c2b226901babaa4b49
Date: Sun, 14 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757842793

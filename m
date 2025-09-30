Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD58B2FFDE6
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759244393; cv=none; b=FOC0dXGAiBt6GeyryPhZSsps924aiNJT6FcXDIqMvlBSfbWMcTsUIhN7wCW/DTInEKxtLs91J5gTymzomQ/1+OA5JWpIxQmuxA0SsWkk923cYge8IT009P5C+21GRWbdHj3mXAOKO9Yl0AsV8wzn4aOJidP0yzTnOutiXHzpORA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759244393; c=relaxed/simple;
	bh=KQ45FDoQAfkDg7M+HH8uvhA0x1n44DFffQBpXLxe+6Q=;
	h=To:Subject:From:Message-Id:Date; b=efgxgPeWs/mnzzpkfryH9yUhAlIJ/gra0b3ATwzTkq3uwE6pR5F3aU1T5PLJEqJMWQJ0H2IOd5aIS/wfV+427foOxZzPP1+7KfZbk/zPGPKqay/k7fnq8u1I2UxiZDPsktBZhN5AI+waiRql7HSWDipw6f9E94CQQ+nxWC2CxVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+XdDykr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+XdDykr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C063C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759244393;
	bh=KQ45FDoQAfkDg7M+HH8uvhA0x1n44DFffQBpXLxe+6Q=;
	h=To:Subject:From:Date:From;
	b=F+XdDykrcodWSFp/siK5gmnSl3RrX2YFGsqQSsCQ+hyAP+fdy8EhB1NKhyxwbBr7I
	 /P6+eHh0i4ynbgSRkfGP5hefKxX2OAxnCD1EPv7d2cy5H2LCTMylMNthapp02Hj/0q
	 CLqbrDNBdpUXXM0e31jRY8dmL4KkvzoLcwUjkvdJG8psYw6aTu26PX5TGOaNuWLeVz
	 f4GfaEYZKKAFLxNbqx5sYhuiuekln8welR585/MFJVt2Ak5gw0usRqox+GLsBZxAB8
	 Br8o0uh/km3sgS5LzoOCbZhZXXvCdavsGbtLciWEMCDfae1NhV8M9hjg2Ya5yRNlyt
	 hFyu1vzUjKLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC25CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924439357.28521.1076520444016039254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1aadb1df7fbb5038f5f4226f1592d6ee4ae179a416b701d0aca022c0917bfe
Date: Tue, 30 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759244393

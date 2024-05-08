Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C38924B33
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715152343; cv=none; b=EFPvR9oYrSZwL7OFYHh2gfL3PZrPZFNg18QC4WiBdxosluOVT4ChC8f9RsyP8/Mh1axLQmQT8S8rARCOGgly2fdbIMusDUCNqLMjah3QvO6vliY3qpHcP62iqpg3RsmqFCzxjdxGjSAFTvNQZIxW+2sj4TVzkjgTbajqzf7r5zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715152343; c=relaxed/simple;
	bh=xwzk23XwBopSTWhfzO9Gu0rpvSSo74EGvwG1QLCFmwc=;
	h=To:Subject:From:Message-Id:Date; b=P4BGrL9GzfjIKN6LwXE/x6oiq5OHf0f599Wm2VAXfnB9pkhbV4dfFpjwQ7OZ26nsq7gLQsnU6HGLAmfyQH1dG7ZeBD/0py6cZMiFbb1y+p/6XPpCfSb7zJ1kZuuh1X8Dme73bsAbz0VXCtQErxOzq77AOVdygFJ4035VQDVUunY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoFBLr+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoFBLr+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9221C4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715152342;
	bh=xwzk23XwBopSTWhfzO9Gu0rpvSSo74EGvwG1QLCFmwc=;
	h=To:Subject:From:Date:From;
	b=PoFBLr+M6+PdGWeyBvAzghI2zF8f9kEbvGglZb9wnT5gSWbTiD2J3bdPG650T1Xll
	 SajFSG7UholaLSnZq78PfmQXqoyappDdkwQPDUWMRv4+pSXLNPqhGVU3zbRDDV0K+Q
	 JHh9mxQJuXdxuFMDwPWneADxr0vpS9vxQV8HD+K+nAdtfxt6yhOV/78YBP2zmBPVZt
	 s8/rzLHp2ePZAVG21g/HcIpq+SzNidRyk1R4SzTBgnwGMp/jEA+OYMdTXCdj38T7y2
	 acy/tiV9YYZnLOEmH/9umpUDZ+gx0JBexCi/i+rXJXPbamJVGrHGcRLum2XwPWbQoU
	 BaOhE0k+RhzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66F1C25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515234280.20211.16221696478093386378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0389d3353c8079c3f1fc1debbd6f342ae40c929efd0a0d821ff427cd81bd4803
Date: Wed, 08 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715152342

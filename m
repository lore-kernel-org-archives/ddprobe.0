Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4445538836C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772534094; cv=none; b=eJhuEji7wf+66ML878K2gckTNKyAR/vPT6beW3QKGuJs1lt2pBrdVe+jzo729mv2zsI7v6zCT44N8buDbPy1H70EPA+oJBJCBxRzeBBPRSr52Y6bpEz4TtbAryAXqHwNSFn2iRSa+zCQjETQLRX8gOwMTOAAfw0poafw0BptCaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772534094; c=relaxed/simple;
	bh=dqejxCEfYcvo3ZXfukgmtqsBFbM79PBxgvJETL/WN7U=;
	h=To:Subject:From:Message-Id:Date; b=GS9OiUZ2mAMT/A818tXE8Ou+0y1pbJ20F3Fs0tWL4iYizNap4fC2OcE3M/mFjhTHLbm4aRMGLbbCL6bU/KADfPJk4TDueBE+AuaP7nrnlcONVDzksZS/Qp/dmRnQvxecTn+BhPOAnG04vCf7YH11ElDXq8qsVpJyGM40hEag4cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8QdhoeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8QdhoeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEE6C2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772534093;
	bh=dqejxCEfYcvo3ZXfukgmtqsBFbM79PBxgvJETL/WN7U=;
	h=To:Subject:From:Date:From;
	b=i8QdhoeJrjx6pmXf1oTWnrTbe7TWhP9JdsrISQ1e/SE+eN0//DLPbBX5Jo/kYyBoI
	 zkJHyE3eqS+6AqzNSshR9YUEAWwU6l28tkuyc4YVAvDBV8Htlc+pJz5/XYf4Mg52V1
	 JFlkdp3u2YQoexMq5LV2Zyw21MDV6MhMKqC0CA+784UecmM7nSN+ds4Qfctc8RgpgD
	 qg2NhQ6a/zbn3O1ph0VNOUCtCC3QdSOoZuU4OA1nfX7FBG+0SitgKxELR2rKzeLE9N
	 ginKyKcsnUEMG/F6wSRFNR0iwiNH3DqrRvNhpAe7dStP8ZXzNSK3GlOHfZxDCyd294
	 xPX0F++PUloPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA19EC1428
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253409373.2175.4767164790063752791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd81cd5b659e12043fda7ad21d21fce5daef8f7f7d991e5a38152f4de184fd7
Date: Tue, 03 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772534093

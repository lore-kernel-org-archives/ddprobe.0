Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C1F4E66DA
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790610034; cv=none; b=Mh8IzyPPrG2gd3CKnklPTEmpIN/oG0gcRzms4OYPOtZgN4MvhyU6dYqbBPco2jG5jM21KxknJ0L6qIpCrkYajCUUihIffyzCNC7+0kIjZwTFcEtQJRBIrvRSMKp6dVsqE2Tvw2vMgC5hLhUctSxklevTWAOLRHLM7uCX1AA/pMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790610034; c=relaxed/simple;
	bh=ZhvzEnsTwpwNevMdaVmGL1Tz58qjMwK6qotjoJu7tP4=;
	h=To:Subject:From:Message-Id:Date; b=bhvXyzD/odJoYAjvTu/40iCV3o0cXbURSa718P7ip5Zvm/1cqX8YS/rFPDPxgh3JtR8NWBzwLsNjGKzATg2jp1VdImfZqwDje6rAWhjKnpr1bGCmukspf4vdvDsOZMQqzfpG/yijUdPW7p/NmQOVNFj4Slhg+A+ckK/PIn4jFl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfuXx29t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfuXx29t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96A3C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790610033;
	bh=ZhvzEnsTwpwNevMdaVmGL1Tz58qjMwK6qotjoJu7tP4=;
	h=To:Subject:From:Date:From;
	b=dfuXx29tu/4FFnBqFU7i2lsQ6YeTNNmgNi2vtW0TWTgkuIlxli5SPeRY1AUsL/hKo
	 U3L6UFLjPmRI+Ryo4ImVlod8KnGpCkxkiOtQr9rGwiiaVCJnohHW3SkeTGxdPuZWAz
	 LALI+xZ3Q/IXUE5pTtnroMx0N6nV42Fyu+J3fOmCTSM4s8DzFrXXd3KO07SHi70nAX
	 RFxrpPhUSph+mwNpGn2zZubxQsygq8SyUkFknlXdvVAkuM6/xJrKJVaZBYZPH8JvGQ
	 MlIHGV3Qiy/Lb6SSRHmzlpFHVfb1Zvmq2MvgjLBn/jiQqFzWNFW+HIy6iYqSImlV/b
	 t7o7cMpvFIBQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0264CA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061003368.21824.6392184705288095782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b133be9e65af1d43dcdf6f702bfea0af9da79be447d6d5ae197ca376ab032fc7
Date: Mon, 28 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790610033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7DD1E98E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737390354; cv=none; b=buB88RKNrb+BwwZ0osaGzxVNhZOMZcQEJKi7tg2VTO8ncm6xMqBI3GRc60NYR1eq9Px09MtDsTALNIftL5gw1ZXZ9PGeB27OZ5kJpcRYagNzMYn3rRqbdJkdWBo9cGIecl9TH316hGHjsGdOK0nubMkFFkCFfAwoWPWXcxU9jWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737390354; c=relaxed/simple;
	bh=kv6zgWEAkLTX6gd/cElZXN/tHLEhTtv4xoTaCaT0/CI=;
	h=To:Subject:From:Message-Id:Date; b=ZP+JIckCA9FoEpS9KzgzP5HJH1SjZhf4YWCFGCfD0nl3OSIdDHi3/FdJnoDqLTCevkdSRrtDknj3Ort2oM3kIDX5cgoPGGSOfbTExcHy+LIrU9VvfOpKyFywbM/zLqt7t+Q1QodhJKAiEcsiWS5MHdytCOBFHJ83bljmee4kCow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZInUMDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZInUMDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35DCC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737390353;
	bh=kv6zgWEAkLTX6gd/cElZXN/tHLEhTtv4xoTaCaT0/CI=;
	h=To:Subject:From:Date:From;
	b=DZInUMDylF3hpV1ObxHKAVAfiFgdWD6Qt/xS94ahkhpk4MiR40A4D49VbKrdQcKiS
	 3gisnacaabfu9napcNB9k5Gh0ZDJrAOp4n56bTjvUCy3Rpncd/rpJ5wCfHG5w129Sw
	 j6zLmlH3D1rDRS/eGFe3rIjvqsmxbvdAq1LE305nK73B0QlUI3bBDiGnOuN8nx/i8n
	 fGd5g0tCILK3qZRmzJwUh5ff57Tw4mGq3ifTtf7dtK3YFri/USAy8qK5Y5gL1mtuxY
	 N575tWDDVnR63XkMimAlU41RZTyrMsFw+/9qPnUlDgnQFqpj9dE4LsfyakZUCD1Cgu
	 NTFRgE2cIIppg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F7C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739035357.19020.6295243173412151264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e340043dcf85973d8f1b84b5a87acfb4424b42ecae2539a0831ced00ec60b49
Date: Mon, 20 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737390353

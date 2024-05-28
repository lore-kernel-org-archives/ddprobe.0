Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E6B17E8EB
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716932063; cv=none; b=TztYD9rjqssh0z8KnMITKEQAm1oVr+ihaz6k7c1OENL6KIyywrQgsxIM29ctTah7gCzl2Hx+kZuvQ6CXcwThKRTCcPP9Ges4SYs/si0Qb83/Ll/1kip0O3gjybk+x4BU3flVrj/pglmxsYCopUQSMTubKca8Wy0fUK4m+cxW+oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716932063; c=relaxed/simple;
	bh=J/QYbLlr7wYKlbsiljMr7KU/9SSyPZWqGTSScJhU+FM=;
	h=To:Subject:From:Message-Id:Date; b=PbkCnUQJdVaZURQNGPWBdEa3Gv/9defVH1cYa3EX/hFI9iEb+kuRxAP1UOZTRAfVeb5PeNVhrKDqPNJPPz4meEN9KZm3DLWg+l49Rov5ZBjetYP32VU/Yj2+jURIgybG1keaXOn49L1Gls+gSFZZ62VhZFeOY4NBUYJ5NyMi5DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrDw+4eV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrDw+4eV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5608C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716932062;
	bh=J/QYbLlr7wYKlbsiljMr7KU/9SSyPZWqGTSScJhU+FM=;
	h=To:Subject:From:Date:From;
	b=RrDw+4eVjlG1ZCGGH7JwcTFgXEu8GnV3gb92hOQQ9hiqhk9d9Vc+WidI6FjbE+VHy
	 wqYPa4o/P+geJT6MUTgSDYwT2CLzWkNm8Oxfe3D5YI4XNY5/Jh/oOcey92PBqMldMX
	 Q96rc5l/epkFQvXFhoDrX4+/VR4n2L0ScRW5Ob0BD0iw0RMbeCOaAXcHuEBs1GiKMV
	 oICCfyAw6luSABnysqhME2ELDZUm8VgD4LTaQSLg1Dx2MKfAeO7qHqq83vIz5a1h8j
	 fNx0k/tuzkwyEkAlbf3yfPNqTiKImbBTdnNl9ywBj3eNMgGxynITsI1+JMCYCpgceY
	 JOvE/kElb1Csg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF34C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693206276.25337.15337455099545481745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2affad0ea5063db5744bd66d5b59876cdfb4b0fe6a35407ec79aebe88bfb6a0c
Date: Tue, 28 May 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716932062

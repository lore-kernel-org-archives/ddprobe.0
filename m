Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581BE1CD1B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720299383; cv=none; b=GfQU7kBvScfRtQlyJoXtvufsjRnSQfv02xWmwE405H6wqpg6eoZIFbz1VmRQ3SoeHayPGY9i13ZdhZh8LzyodMvhnxK5bIXZ/WMW27+0Zbvswmz65n8qAlMLgUKq0HbYBMsrNDul8h3uzXMxBnj1aNbMDacWjDeL++7FSNvSnnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720299383; c=relaxed/simple;
	bh=9Weou0Oe+Xy4gtURYzuZzfI7Oz95qF9JVQjMobIIVkA=;
	h=To:Subject:From:Message-Id:Date; b=Sj8t8zg/lh8PeAttjO193O4ZISZOCSEeThqE2xR9BZ5uU6UKgFIW4RKEUadEp8cZGiub13ZxC7m4JQrUYfQbvIAZrNSUe1aMLxpL8CCDhvlbY6tg80pUwAS8XBj2bPtcv3GGDYaQYGTC2e90+qXAeZUx/rHalmd3loZS8+xg1iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av+Brtz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av+Brtz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D291FC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720299382;
	bh=9Weou0Oe+Xy4gtURYzuZzfI7Oz95qF9JVQjMobIIVkA=;
	h=To:Subject:From:Date:From;
	b=Av+Brtz4W5MW+jAtTqtV2tUN8X+EEh8605Yqo0cbI8QEpbRLfBGLiy2GjPS+o7OiS
	 aqLBRltT83CgioW+30XoVCDgV+bZRxXlf611EySGGeCsOpxuNc+OCa1TtVUKR6klO5
	 85dd7z8KCnBDCli+nY7K1wubhzpv/aijA7B/KphcGjYeWuErmkD0PeE6VMP/eNSrmC
	 Ao5tATBgGlHY6kuo5u/NFSgghAyiCXYgVEA2rdip2xj+hSvzgFJxx+ElAMiTmkmuJ7
	 7i0RSEVjh4zzcfabntfmHqgerzpYqWtiBOM8fb6MP4Nrgpg32HLfiKmgqKyflJXqFc
	 2nFFaiHW3Is+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB9FC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029938277.12329.14682298567790504747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4902f86fdb9664b2f74c4b3ef7e4a1a121e94209ca620ff709b767f53e0d85b7
Date: Sat, 06 Jul 2024 20:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720299382

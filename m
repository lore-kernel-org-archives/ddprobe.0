Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A3433EC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774816494; cv=none; b=AOAuIpnEWr5uYq7Q//TNWfzHvXwsU7h7F01r5X1DwtfA0vxGG6chLNVx2Cxb3H9FAXGPbquHV1CVeEr4e94YATVDYLJxZNkbcL2dGIrOcJRJUpdgQCD12iR1exL00B0XU89mAYsWevOqIQsqPCg+A3wdxAhF13pKT/pTDQTvGG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774816494; c=relaxed/simple;
	bh=EKFxEO9fmXLE3wFlt+7OGCF7Hm1ob/WU82PcTPpyD4M=;
	h=To:Subject:From:Message-Id:Date; b=WZIGlWYKGVEdgklCsmNX+Yv6JfKQRyclcvtsM5uB9kukm5wLqCJRYCLDG5vrmB8vHSwRAzoqwvFB6CAewcWMKjYIKJUAxxMrogaTsd25vBMqWqm/S9Ik0f2EeyLgZeCCAKG21aJyZ/O5b2YkGWrdd4HYrO4WzZw8kV3Nt9wMsfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADVVp7rj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADVVp7rj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93DFC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774816493;
	bh=EKFxEO9fmXLE3wFlt+7OGCF7Hm1ob/WU82PcTPpyD4M=;
	h=To:Subject:From:Date:From;
	b=ADVVp7rj4WMaDUvWd+Zrtwv5jtU2MYxy++w66aUDx6c4ns+z5XntUaltOJ6tnbT4k
	 +/mHDFr0taYddzQCEA9C6DFJ2ijl7wlUVb3PK0FZREImj+M4ukAtflFa4zwUjJ3Y9V
	 /8OquAkkFOeg/PaWxmX49kA6wlXD5ZGT/o9BLhOtR2WUBEbdUZ46l/t4d9h7H1L3BY
	 eufAoJ9ybFcl8N9U7VdAnagHt9gZJyq5d5LI2df1SC+r58bTBQ/ppDOLT76RQW+6xB
	 0NjNGFP/RaPEpETaecIqIhJ/FanVMtPTMNYIKqAPCyGxi+99YQz4YG9dAswAmZqX8m
	 OlKb5eOimFnyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9416AFC97EE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481649358.7171.2145865806148681880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dab12d95b8de36dc77225c01c1449e8ba4260789163ad8b23529e03abc9d91b
Date: Sun, 29 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774816493

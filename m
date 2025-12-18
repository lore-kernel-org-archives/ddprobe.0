Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE56343208
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766063633; cv=none; b=iYxmOO65FAA8WjAuUM3uVJcwdBzchWR/atxdCPMge8E1ZEpw0oEjgTnRGraODktWV+CK4pTBzck9sFap7Ajh0g2Fjjzbv2t6mxJGlDILoe0VI4oqRMqYH+i2E02BsV/qPzVqGGzBc4WdFI3JhMlOI5xu1XG4o+g7eDpFOJc/lCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766063633; c=relaxed/simple;
	bh=nWB1JmNCHk7dDvPCCsLoF6OOSa5YUdctUQO0WTgMYSk=;
	h=To:Subject:From:Message-Id:Date; b=dSThyiEZXeXaWRQBFcsDHdPmpt+7lGoCFWhepqPNzUrwPBMgr+lV+JeCIuvU6Sm7ZBg6t3c2cy1PwJYRdQu2w8xTrtinAp23eC/gcPqwpI5VqWsb7YDO2woP2lEXWJQjLMav9MbcqQAqmrzilTQiJEimOM7XKhjB1VkCS44woe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzMhaM2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzMhaM2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DFFC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766063633;
	bh=nWB1JmNCHk7dDvPCCsLoF6OOSa5YUdctUQO0WTgMYSk=;
	h=To:Subject:From:Date:From;
	b=QzMhaM2kKwUpJyFCqsjg2Uyq2F5xpWT6jzOQkgArzxwz/SnUff9FBVBjAundGpOf3
	 lvBrwWsX+TVLlzz+RPfU6qQu3DSmcLgsqiS6/wSyc8lLnEyUMXgPOhToxDgSpwvxUP
	 Kg+23fgamtnLqzHMmb+RVUNHhBHxm3dS3dwg2JstZvDxySilKMnJxeSZSUTmksNVEo
	 cXR76JqPtpnCS9U+Fnnq2H16ZMxfeH0xfOpbQaJNuVtSHizHO92/L7QZ4HxMI/ykol
	 8VMoEIOgIio9M0NSPk3wJDJ+w23A12rtULsB/Kcs6/VP6YgQPg04h5Q7p6eu5vAFxh
	 lEhlThAhkH6dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E12D6ACFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606363358.15126.17994569508937184028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fade48521443e9391c055df9435b91bb9b24d827c9c77573bec0efb695fc31
Date: Thu, 18 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766063633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EB42BE03B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765864975; cv=none; b=REMWkFs2VnjNhSv+CFLpAcgxLUpjZJ/PBImc7A2+3Awj/HEJnM77TKAU7ov4/53tioi9Yr21ctcUjfDMYoQCgjHHm0jHAEnW8i2QVRiQcXaAqSyS9dCmbp+HTBDu0rRhF5GqijEAo+h1GMTjdmij719PBq42lfQsqjf6Fy1zY24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765864975; c=relaxed/simple;
	bh=8yIMORFS61/UD1KFillUjo/PUoG66QRwsy/yXLrNYBw=;
	h=To:Subject:From:Message-Id:Date; b=sZkmqbBYNcBtoYiTLxhisxg2v5VowhipzqSkILXnotlw145QEEKw0fMmfoWuK6ECPVoMdCuYCsJEYGTq4BJyFixODO7pJmsalw1eSNY5djtRwI2jDw6YCIJs/Uzzh8zCw+nS/FrVyFdzxxxwVJA0pkzqLWjbtFSOf6ysvwyL6Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWlzugcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWlzugcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD0CC19422
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765864973;
	bh=8yIMORFS61/UD1KFillUjo/PUoG66QRwsy/yXLrNYBw=;
	h=To:Subject:From:Date:From;
	b=tWlzugczk0QcoGmXMCiQ4/KrkqOQKnfJv3OK6zPa43coizGgZaqX2MYeFjzmuOLQL
	 djSMKqwEWpXHY18mRMOOVAINJMV07gYS89iiRg1sE78USLTvx/xuLOlSXevR3HTXwn
	 NaW2WnuLBcKe9qZIRP7UKf1vPmMcAM0c2J3C1vCe8QXKefMcO3TiwcYjHIWV9aL0iI
	 syVsYQO3WFGDV3MLVQ0xPRQzJukPwyrUe3n1Mn8xSHmwl3UQSBrA/za4nLIwXttzLp
	 pyWVOkVeYvoL/5uAMmTTYNVYRBAawKsIyZE8SFs1x1mPz7xKvHQKoFhR7dihnPXRuS
	 iSz4x7AMfUTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91162D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586497358.26459.3491714612059079558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e8fad1e691259838ec58fd7795512a9e7d8a443c088bc18fca7d80a5255edf
Date: Tue, 16 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765864973

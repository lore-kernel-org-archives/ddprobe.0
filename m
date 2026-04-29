Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F812F99B8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777457854; cv=none; b=qqvmiVoG6J9zheKWf5VWY6Cc87FgzYo+RKObhT2/8NsfYDC7pray3+tCV2DgG71WOFeaJxMhvNpSqYvxnwCy3AOCP5+ksRtZkvSpYhWPE4VDfLgbABXHZ9iksJ637rvgN9amstflpLUkvyMICEK0NV0KoSqoFBgul3unizOZAKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777457854; c=relaxed/simple;
	bh=dC3V8QwM5JwSo6zsnkDAlW4i6k0nD5vfQlDznSzMprE=;
	h=To:Subject:From:Message-Id:Date; b=cVt81wquK8CXdpcgzoRn/zEmfDxIibfdqSvOk1TjXLl5nCumIgxtXh+GLF2+CVp4UEKUZ8qaocI5eiwu8Rt2BurjyYft7CVPf9GJH5tjTH1ODHJ8/gts7br3cA6oMs/W1EhUd2c7TIEFEwRZxbQ1WALEx1fXSAVv1t0FN/CKl8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIzUDuZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIzUDuZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CABC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777457853;
	bh=dC3V8QwM5JwSo6zsnkDAlW4i6k0nD5vfQlDznSzMprE=;
	h=To:Subject:From:Date:From;
	b=HIzUDuZwmWG9gXgZzbYnBIT84jfpdW8QosSeVPRcH46lPhVWPQylgRLS6uCf4bBph
	 4rNxgDhSV5pBLCnvjjRN4g7+d96S0Enua7Wfj0LkDZr4B4QpPtp2W3xi9Q3lbOr+dX
	 BlMXgy7cVEoZwli9anmrEXTS1rCcDHX2dljKxoS8Ulu7+AsovPlkQnqzbvB+V0fb2i
	 aipK6OqtGWXICVj/7lh+SZ0qRn5c2Xc6rFv/ibYoCa/tOHKuj/DK3mIXiG1KubK5qe
	 yE2Vk7LRa+ATDmEqB7UHxAeGOx0Ef4ulzRf496Xwh+KWIxP4YvcnbCIuo2c0WW3not
	 btqyR3gIhV1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9355FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745785368.22842.12596218595902381681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4502f88b2af971a63aac791845064301792b8032557c8d258f99fd165e86b16
Date: Wed, 29 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777457853

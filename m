Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14449199934
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759019994; cv=none; b=ZoS9Chs2AGZBzcbsi7mC1zao2NDl4g+LaR+yqYisTxFOQagMOqXc5yh5yA/R/kMgCpcRyqWYcoBM0Ey6vF6ypC33Kskt7ia3iiVqyveGFpImHC/lUvDE7Q6GriWCj5nBekfHSbJHcX3tt6PgoIgVUL17D69vVbwViXayaAx5XAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759019994; c=relaxed/simple;
	bh=Mc/XT+5yDLKHVu7rspe+BMXVaYBXWXTVssmeuGTOLqM=;
	h=To:Subject:From:Message-Id:Date; b=uvzV5mo5JGPh9q9cfXa8fz6953MYPs8rA965KRmPueGQpXQ/cMKts7x8exK3fd8yTZzywZTUUS2k2dhh5+H0v46SPue9qSOYturLIQtoP+rK0UOlYDw4Osz5vNuKZx16RsajB2Jx5dTCkYN8dHZRRlBqS3HaVzUMptc3qqRlnnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nu1XrdZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nu1XrdZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A024FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759019993;
	bh=Mc/XT+5yDLKHVu7rspe+BMXVaYBXWXTVssmeuGTOLqM=;
	h=To:Subject:From:Date:From;
	b=nu1XrdZnbRH36wWM9GJ8ijaMTwHlTIV6wEN5k1yG+h/qyUZ5W2vY7DYBadTQX29/r
	 RkOG02uCAZlq3Nk0MEYBnSp9SsLsUUlFETZYoLqBkommlKvESALNjp8cqkhI9m6jpU
	 3sXirH/VE8ROJKjSMU2BkhtPQbWZFJCrmt+SiQ7/gG48pIQbs+hGisGkihRrWKuRaN
	 qh1qU9cHNDkJXib1DiosDsMDQMTp+CISeVaGopxQsDt8dNqaoD8cc1MFvy/PdOi/ov
	 NTNeBGV2IDbq0cOVkH85pmgDWlL29TS1YRfwFuGWt9faqYTbWukcSQSW29enia4VbW
	 wAygqb88fY5yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFACAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901999358.19983.4635866408206640601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd4ed9971724a3992416e1ec8f44baabbfd6fecd08f00b6c398db3cbba6ad34
Date: Sun, 28 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759019993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFDA46F48E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784806234; cv=none; b=UfNDY0cEIDJkAP0d6a1Hr05micf6PCEWXjtJdcq+VUOpDfQrHa8QBtQdlbEQIhneGnID1wy02bzRcL2OalQ4/xRea1kZnOWBz3KnZxRgsc5GtvZRnqqr4XRc7dhH3lWC4k+1XIfRqJFysAIqxbDJHpQ9ywzoWJEuOERc7gvg+ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784806234; c=relaxed/simple;
	bh=0FPtgmlPH7vB8snjEfJDe+pODo7cE90WFuGC44UhC00=;
	h=To:Subject:From:Message-Id:Date; b=fpWSpbm+vCAJ58FoaL8smvFQRmQo0ADnoFccPqjYSykFY02Pr82ZsVUQrC7Rfl36rkVqAiyUuIK2nwR59Y18RkUSALiecJUdVLK3QGPW+MCKkDxJbvs/g2jTThlvaj1uRnVqQGn2b0QMQiXAH1w8CGj4DTpHrz4zDIXntobIGzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdGgll2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdGgll2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13AAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784806233;
	bh=0FPtgmlPH7vB8snjEfJDe+pODo7cE90WFuGC44UhC00=;
	h=To:Subject:From:Date:From;
	b=XdGgll2zIiG7WanM0cbwwCi2ainXVfMdF50A5bW6yPDHfker1RWAPrxHLcxO5xp36
	 904HjeXgYMsB30NYi7AOhEkSZxhViuio/+eHFTICDmhwfgbc1jV0SCaCgViXnh1Vn7
	 AplqkmAKDXttwQAvRg3tQHB9+j5QLZWAvNu1kbC/V7+kWq1FJ/I1lGeBNouGp8dq5a
	 4Uq6t5VvIxhR22ntxhLj4uk+mTL2SjR0Fr+EkCTyqZMbHzi9E04RnuLX1nSvLymMRJ
	 kzMQojOIBg5F3ciXTVDyQmc7c884bAM+CJ8afnhygQACisFhBJ5fWd6TssdubzAo8Z
	 11gOcCggEviHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA85C531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480623369.5977.6997735329637580419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d2fb12bc498ee74e7469beee2d34e4cfbffd08990d0e9c55275ff7b9d0b07c
Date: Thu, 23 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784806233

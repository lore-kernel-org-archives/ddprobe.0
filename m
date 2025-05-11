Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E6B28FD
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746950994; cv=none; b=psjnaDTCzb6dWzBpQtKZ2N72bj1A2x048ChiBppihHntoqg2qzeH6xSZ68C+mTLcYm07n9Ci+VBnSTAZkLVmVVVu6gvjboMjYEi1EPGVZa08phu8oUKV3xAj8zo3ul2tripgx1M8lmId62DYl7lwYLvS23ZtEXA3EtzIAz65pYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746950994; c=relaxed/simple;
	bh=NDX7nlH4zwKHpAhHHjYyqElyxUZWHjPco53LPwrHU1o=;
	h=To:Subject:From:Message-Id:Date; b=T6M7Jsy/n/59u0bsdF+b7JvdMSAW0qEGzoktF9fmA6vze8xxU0i6NhZZFwW8Wi76+jls8HennEHMgIe9IoXVoNM0GX0FY92jG6MgTmve9FUUTPJnpP5bPKAYNhtRY3qmsqlHjqq4li3xbYr/aBFFu9TdcNClrUzDb5mFCgO5MlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l28fDPKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l28fDPKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D70C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746950993;
	bh=NDX7nlH4zwKHpAhHHjYyqElyxUZWHjPco53LPwrHU1o=;
	h=To:Subject:From:Date:From;
	b=l28fDPKyJdGJscpKStcSieTEFCciXn0G/F1WxACfBbJo6aNsdITIZhXAVJLYzqiFw
	 xXkmsoji97dfmxfYhbzH9XvN758O9MJ1iF6KUnV4xjjcx09SV9RkYWdM5myHaDzeF1
	 m65a4Ap5pBJibLDq51sZ7gE3wBysHdJAJ503qdur7B//knHmjztXsnOHUiBKOyxPrI
	 iXW55q1TLC3f8E9B7gFfEVaprYl3qcylL7afqGUpv7buPXiN0Tm7Nn9zYozGy1ySdS
	 ehBQ4Rksg4vFAcnWo6Bc6olcgpkC0O/KSjEHvVDrkujGUCzHXryO9bwVT4wR1UDJ+n
	 s7yWYvawUCtTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921CFC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695099357.31100.17303103322074835693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d59e5768ef4be372d2536811189780cfb6195132ec45617aadbf3f65b64806
Date: Sun, 11 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746950993

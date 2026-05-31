Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462BC2D5932
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780227274; cv=none; b=HkpaRAKISdYmaTusbCCM9jFodjW5Utd3YgRmne0QD5w2w+vvSeI8+SzVYzITjE5J+SSTOPK8yU9U5s6008WB2xVvssQHjcfKrVmJjQzNz/zfWipa3A6e68B880Erbc7/xLj42hWGwq2P+5YIcMoNtWm8Sy/NgrnVQQnqHxjh15Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780227274; c=relaxed/simple;
	bh=YtNm3DR7BA3Zju+uqM1fbj+dpARIOFsrAsa8Uaa32gc=;
	h=To:Subject:From:Message-Id:Date; b=ZTRGWjYKRgsPrLH3pPfA9X/MqsBobj1qUbfODYYC7zRqeF+Rnck9UehOqFd0ia+hSAF4HB8xq/MmrNasvFNwVIOC17WqTHMKA11o9UlgqUminXjrOQDVWXNME1/bErpUAwmA2F3I4HB5ozH5UGg7JO4o8FDM8Q/IciR48+2RTUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUb4TdiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUb4TdiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA60CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780227273;
	bh=YtNm3DR7BA3Zju+uqM1fbj+dpARIOFsrAsa8Uaa32gc=;
	h=To:Subject:From:Date:From;
	b=VUb4TdiK3lSS+vWoeokzTZPmuHagzreRYY0ur3DUxvTs8VJtjquYmUP9n+karAu+T
	 SMQuBoxIVG3Z1TRBX+CxPwefM9AZJ4ROe/rqSahI4HPINirG9F11LN2i6/8L+efS4J
	 D1IwnfRA0Z7/2bJFgwQa8ts3DPyUJi+FkkM6DQl0NcmPtR/KK+LM8I95BqJHU+wEZ0
	 DzzhS1Ms/VLMFGIlvrZ5mgq8mEbmIrIiWdGJITLk9K87z0+4MqOi5NWPJYvTpJq0Rb
	 s3uvDEg2JUgTKpau98USeJ5wWTPX6ujPpO4YuI/woxANIzDsk4LmmWhDqDeh5DWilE
	 7yiCXKV5+XjXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5CFCD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022727369.27900.14164728930413511614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56145e900fb3cc6d4dd6b05a39a64a9fb01c14518857b38d1b8ac237ef9e85ad
Date: Sun, 31 May 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780227273

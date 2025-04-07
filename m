Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAB12550B4
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744051194; cv=none; b=Q/m2Eh71njWwOwSlo6qkdWL0gGoP738afWM5Q/mTFRXoPK/3CcuHxmrAb2y8DDImk6AY6NIZd3KWq8FE93jOiqhtr+eXp6iYanNMHZiKOY/9hdFuAeN043fHl9F6FmXmYHTrs5TYpc+AzsETYMYph5CJE4LywVryo+Es4hujOJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744051194; c=relaxed/simple;
	bh=QDflEDx7E6OaGM/XEkEGKOqmoaKIhiw7jBdUbe77V6k=;
	h=To:Subject:From:Message-Id:Date; b=n+63T+WdBzEIFnUEX6Q/51lhBA7ZFpmITyKCBVm0mb38J0ySByCrOUIK11cMIKRVWN/DswXxNu6KoEo4yarZyRFscyHQ2oAmRTtFekROhNuCapA5Od9LV8p2jVHE/40kQMuvYl0bjxZRoJuDnMf/4XWfapPQhDN2XmO4wXVIGpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCUkSXEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCUkSXEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B11C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744051193;
	bh=QDflEDx7E6OaGM/XEkEGKOqmoaKIhiw7jBdUbe77V6k=;
	h=To:Subject:From:Date:From;
	b=pCUkSXEheTkmDXpmfOJ3wrmuv0gKWUgCqO7lkkyN3pbfEEXDPlAMZbCPRncUqoF7v
	 EzcC1e2vN+ZHS3K83nvL9Jwlo3PTag0TVFqohtmq2jOLXgVnqLqgLZCqVIqSxNTlRO
	 GYM2suiZZO7Uzby1jSjZb1FVClZff9Sr9Bq7x5IvbZofkHJEXnEqBlksrV+JUVXxBR
	 pV1fEE0z8NROoSH0EyrcPHti1sFFTvfe9mCEeWqXuszSZ8gmH8YVmO3ztAyj6NRPeM
	 PIXaMNyS4PCwxe/Yx17rzMgzbNg74evXl5hhplNMzT+LFtx+d7E8GnVIZPorMZ+C37
	 obmlkEDkohx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54F5C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405119365.28185.12026301925855506215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: facf148de5e4ca5f1f095e19d9543cee37ddac2ec007a565ff7ab764abf9461e
Date: Mon, 07 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744051193

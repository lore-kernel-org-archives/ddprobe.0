Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406FF29A32D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783292914; cv=none; b=DAx0ARiHUE7lMGQBWsu7C4eguueU5zz42wg3U9UFuhZ1+t3zIqf6jRkL3bFUr8aQraynXcGgr+woWoPqwMGCuWh7OVNnUibX5XvkNwE3ZJbC8cWOom0n90ZxQf5yLGQik0U0KZT16IuJy58duizlK2TVOrCjK6N6uVBkMle0dk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783292914; c=relaxed/simple;
	bh=ApXKglbWS/nLFKuQNWZhQWBGpX0gyE9b8o5akbSNaWI=;
	h=To:Subject:From:Message-Id:Date; b=mcy8fCJi7VPYSKGgSmtmxERbCE+SBdFNn3HRTv7hYp5xD8qynqvqwlXxZIBFGdV9uf2SP2CUQc9FrEe/QKuVNGYFeQzWMchX1NJFQmBU3xdSmSz3PdmYbn1SUooDwR+4H1iFtlVr+SpGMBgT7dlTgA17Hka74sIlZZL+AOHWrNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDNy2KFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDNy2KFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38EFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783292913;
	bh=ApXKglbWS/nLFKuQNWZhQWBGpX0gyE9b8o5akbSNaWI=;
	h=To:Subject:From:Date:From;
	b=BDNy2KFugSbpimgbkOeq3fQb5gpO1BinRgTkNMBkq48JNkf35hvqrf+Bp/BYnL6SC
	 9Je2iqJCEOeoLy27gaJ7rAByIhZT6FPG5DzOUo6yPApeXxv2SYqZaye7w5WhSM/2eK
	 A7zAPufA7bPfSgJQRrC+moj36rmvOAlSf4A30saJP1DVj2OhDCmuAbIPIJEfMe4NBt
	 Abp0asIldIKE7/UIhYSDLZw2fkcsSccz9CKCFgnyJTh8aywV/p3hgHa9u+lAkKyaRv
	 aXT+DiRXFjs+9odr8O8w1yHC+PddRrl1R6V+tNutYoJ6PWxedRZ5JCPalhaK1M4pzs
	 +Kq2p59wurAiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7E2C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329291368.20501.2218934219850548884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bbbcc0d58f85bb85ff205bee8dcc3079a92989a8ac8a8ca638b0fb39f5ecbe
Date: Sun, 05 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783292913

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B762030A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783745914; cv=none; b=GfAMtEqVYxEji8l2Lq4iLoJpF1btsE5LyjSTkcSKNfY7MG64A4K5KygZFRjrUauk/yf8vBB8fVl44nMeoa8jg9PsiG+zqgK5ceQQFDR5qI11rRA6JrP0o9i2zLumMsfERDWT3iPdx8T1UNnz5ymKzN3enU8OiVv9We/o827xWw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783745914; c=relaxed/simple;
	bh=my22DCUltIaJHUcU5lHbqizWN0DdlkIbGlaOo+mfzis=;
	h=To:Subject:From:Message-Id:Date; b=gt7ic/Ib3Z11Bqx9CQegpAFWqDXuPX7RTynrJXaINvi+9mEMh09MRklPcQyf6RGAW/w/yIURsMFxcHPZlqscr6bLlZ4sJK50209XXOSTbw0ehK2R6vZZJA86eYozTK2xxCDwDHVtBRydKAb1tja7h3bxdjFXhUZ8S0RvNhi/VKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUA93hml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUA93hml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C8FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783745913;
	bh=my22DCUltIaJHUcU5lHbqizWN0DdlkIbGlaOo+mfzis=;
	h=To:Subject:From:Date:From;
	b=uUA93hmlglp8wIfmaT/E2bq7czN58uzRcg6rFAfXZAREJY7NgGptoNjkVdlyjvvKt
	 SlMN7UvBKcJ4QvsdEUk2Q+izAbuRE/35LGAMjouFy+DkdjmSJe5o4obVED6l5qsbI8
	 UXKuqvCODQfJTLNt77+uvKKeiefezmbzpu/LAJfjs7hck1wZdMx3VK15l2WBDSIcVc
	 D/68xf0cLOPB0tIWl3v1JHW1muiaMLTef2HsqUrH/BLntTT2AqtS+g86MLdp/ll5Sl
	 OEm18jRz2aicnlEwVgBGBFj9GAbkjem/aSccwqr17wwu0sWzaeZ/mKVg9CU/ZDHuYo
	 O+UMCa3ds6vXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFCFC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374591368.24512.1473450193808845816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea05ef333373e720de58dba535a85862ddc4eb1335daffbf11ede2dff26d539
Date: Sat, 11 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783745913

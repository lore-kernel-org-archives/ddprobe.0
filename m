Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32354347BD7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785421234; cv=none; b=ZHJWi63k2UGoW69i0gZjTZx76MH/MYRrIdpb36VsIVslSZPnoYDyrWAYDPv5jtZSf0hwyMzh138rcbx7/V9/eTgpbgTArPNpbDH0i7JfTUjd8nESQnOvkp9kKh0tkpgUuTXeM8e+DRTrINlkwUGkSuhmjQzE4fBMgCJ8n3xTgNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785421234; c=relaxed/simple;
	bh=kb64GPzN+PHLi9v2ztXWoXVaxu+ZtwjVPWAQvS268dw=;
	h=To:Subject:From:Message-Id:Date; b=jHuZbd196RMP3CuvrvcDUk0X3ddG+d0M/2iuf6HQCv7GgSm23gA9kiT93qzzxicRv84WOw2Ej0nzFHz6+PKCSlg37J18lLBaLLUmMGlPPXWIzGMsRW+8bMa9W0SGi80yr20Da+hrT+U7Ks4mcGpN7sbSi8xsBuxarBaRaS+qhuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au2OHaFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au2OHaFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0625C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785421233;
	bh=kb64GPzN+PHLi9v2ztXWoXVaxu+ZtwjVPWAQvS268dw=;
	h=To:Subject:From:Date:From;
	b=au2OHaFzhRN7FcYHOSD6K5V0CrMiruHJx3ZpFqd2NjXu4SgPZaPWPyKU4py1+uh8S
	 un76BQXVNS9Hb0KHB+KdcDhTiRt4GHhWUOmNWHn+DgvhgEDXTWWVjurdE0QS+LgNb9
	 oigS6Vum/N+0rjcsEmWpUTeosY7In6CPimNa1m+YVVh/f+QDhUyDc/Bf6JOF+WxmpA
	 qUK43x9M4gS+bZdXHknXwUqRnWSf+xAHtnnr5738Pza/Wd3IgP/g9Tamqi8gzvwTA6
	 0dFz0cJMd4gJZvBjBXa7+S94lqEfuRHAXTQ54r4vZAHFd5ZNwqgRw9GMYM77DYnl5A
	 oU9wpD0SwSdCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68A1C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542123373.19940.1938258361148046200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d920ad771deaeded9a043c7a768d304767c1a371ca55108e83ceab2b5356a2f4
Date: Thu, 30 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785421233

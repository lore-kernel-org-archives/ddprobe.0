Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8094908BC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784886634; cv=none; b=I0CyEcPlaAFuZD8GjC2GFXa0ctq4vKntx/PVJPu4rnA7kvUMeReSQvrOYc+oiOVW20hYZT84GvRLBLGDDaNT2ILAF9SxopxEC8m2j5rfVTXO4mNp/EPqTxKLVWEOTy38XvgbQbpFbHLiKs9n64BQQOfIsXH00PuKaheFTdTNnx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784886634; c=relaxed/simple;
	bh=Gy1CTG5fYJkBEo4rTWbepQauDl+id0lCV1hzgj5r15E=;
	h=To:Subject:From:Message-Id:Date; b=mNZO+bm75Nkr97UVV9mj8jRTF8PP18SGmKB8kndScwHbn8dOz+CsCcMQGmlA3//EbMCL+C993jndi+EGLe+qNKWURyTcqkLB2SYb4RsC9RXvkK2jVE35XI0e1oHpz6VYyOvBYNwK05n0NoQTh5Zgi0X4E+7Nla2etBAQztmJ/Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLK738KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLK738KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC310C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784886633;
	bh=Gy1CTG5fYJkBEo4rTWbepQauDl+id0lCV1hzgj5r15E=;
	h=To:Subject:From:Date:From;
	b=HLK738KWDxe4yA6DZSqi3B28Q1nMPhKZS/1UqrTubrNNvY01cDGgDgsjSVrWQeA3U
	 LeGs8CKdy/bRW0+ZPxXVWHQ/FJ8v7V8lcfAzYQRrGhopgum7LdMOwRvf4qYq98BK95
	 H/apUJFoQyrCsfmBw2pIHnQuQ0yas/r+XRNy4TBB4OFLpd8ByU6/yYxkbq8xIyW4vv
	 B6vHE0iPvuodnLhfNrfP0GrGdkRPcTINGQ+0ZPlnZ9rsrxiecwSGTamOOaInl5WoYQ
	 VbYu5m0aEfz6UNSe9OcDp91TWqnYrwrIqKlOLSi3MN6YrgsjRdWJs82CVnBqqXhlC2
	 vmWpDYikFrgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C8C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488663368.10500.8110140665738359480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7039d508508467da2a3526586c820717219ce1a0c36eeeb87f627c3c3f323a60
Date: Fri, 24 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784886633

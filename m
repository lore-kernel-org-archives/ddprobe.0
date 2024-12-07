Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320C522C6C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733588754; cv=none; b=eyDUE8J7pNwgpqu+mjmLBHA+e39nd7YmggKqhLm1+aY7nJJbd8MXg/S2znlagkD8AAX55pLsS4K1HyojpXPzec6B44DTpBnfaaL2oG9LlgAcEtGdcdfGYDPE9yip72ER0f0lrJMLrkRK1b6CWMvuJUUA41VAGXAnkCG9CVMjIVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733588754; c=relaxed/simple;
	bh=Lt8gimMEcrvzEFfiFXkiq5YqnGaBuXvCxR0g57A2Pck=;
	h=To:Subject:From:Message-Id:Date; b=UjEL6ftdZvcNs3d8L56aC/VWXuRVVUh8jVuLWTotXUd2b2rUOk5UuMDyg5J8lr7QXhW2d6qdqfbhLHF1zSFditbZXcFZZ53aiPNNzoIU+ngVA2g6cciAIT7pdxRRvAGEqMsYtM71NQMRsHFFFqFc7FLOL92bCr2VtoTzzG03ccs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaQcI7ZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaQcI7ZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4ACC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733588753;
	bh=Lt8gimMEcrvzEFfiFXkiq5YqnGaBuXvCxR0g57A2Pck=;
	h=To:Subject:From:Date:From;
	b=gaQcI7ZRfvgdiuQbReF8H+DU+8qV4FmsFpogSc9J+apwmhvsrYjNk8FznlbQDMKke
	 5a4gC7zm7NAMmP4cR68xjleq0D99TOmpY90QUxpxkLQ3d74cjgKnDI8tzgMUBDmMpP
	 2Lg00asqLeg482Zk186dnoVrxNghSIV7kzvNP7IuLvUxdE7H/BnJFHQ4UvGAcN0QgK
	 wGrzAwyqSgcHf8CGfKBr33RxkNQZ4/7ZtR16JeYzo2a9omEmVteoiT/MxuQDsrN6fY
	 6Z1nTQXSRtR8fTDOokG4wYDT6503Z2fKYlxNUZYePtPuefALZOCxJVYAL6WkokiEOS
	 /oPSsKFey7WgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285DE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358875359.10383.3305419119900047485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99956e7138bfa44f35c1caba9e82976d1f4e54be13594d9afa0452d55bb69e0
Date: Sat, 07 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733588753

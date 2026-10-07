Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCEC497B62
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791398434; cv=none; b=HaQUPsXTG/lCsF++yeyu4y7BX+4hGLQDhgy0qqjw1Li33/qZCstplT+WpMnknPHjn1YmciHnuPPsaCEioth0vADN/qoEcq5v8ce+M8/NfbqukNvwRTlVXchl9h6EpulHpeZuM9sMvrabaihMTxsruIZO4MY3C8plgKmZRP02ZZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791398434; c=relaxed/simple;
	bh=gALSjg5H+WrtuvNUYdxOGSmysMDMjXVanb1b/7fljrc=;
	h=To:Subject:From:Message-Id:Date; b=Ahoim45i/JgqjDfhFogbcQ9RpqC1QCfcAYUE/+XHECdnOJXwEtX/XwnAlCQoMaSgEWQV5lXoeEDrzYvYnEfyXFW+TuFfU8N2eBJOGi7Z95nVK0W3g8NVZiM2PZsMs4VVmdx464hfKe/Lwt9WvPMrgS5QZQ5nJXO48b73FI2pECU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVDCrSpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVDCrSpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1C0C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791398433;
	bh=gALSjg5H+WrtuvNUYdxOGSmysMDMjXVanb1b/7fljrc=;
	h=To:Subject:From:Date:From;
	b=qVDCrSpL2Wrna0kc2LV7shpTupGgHZHUiYdj9STgX5c+q0PDNZMav7hhhi1z36nib
	 e4JoRiDhvX424YiOy8Gwl+b4Mx6B6NckCTCQbUPlt0GWv38J1HbNcr0u7shLa8n8iZ
	 7x/FlhZovDadXJctitAKv6LwrKbDojIBwNHUiPnTayH4C+FoKU+x4eAy21P+Jq9gJt
	 eg9iY947jk/lUBP0Ix2nzYBmL/FS+KHpiKKmhdN4S3E39TbRvm9+SBGaoGM1GG2eeb
	 Cn/znQOYxhE5gjAmqsKQ2UaDQ6QG4ns6a+0/yGR1Qc8nsGpnZhpDkAumvF5NdiIue7
	 YtRhcWHeFsTTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D6CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139843369.22324.3741364514011314833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa7246747fc684259ea0f003d48b17ec1abfb0a643d21fb7b8f3e5802f30763
Date: Wed, 07 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791398433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6638195FE8
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765087973; cv=none; b=ITfMLBJM7ZI0jFNT9fOLTOm4TRO9Do/uNdgNcCSi0OWwiSomMfKys44o+KoaGqceEGhOngDsNFSNr0lFpbKQVezvViAN4B/l6IDyZqLPeLTsjtHG1vjWFsKPOhvkrRwjncg91o1PY5tP+gUtupJyfFnJLJX/ujwGIL2rzsUVV5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765087973; c=relaxed/simple;
	bh=7SJ9DZTBUu2T0x2Lojf1BA9JrsNL5KhFp8LwwGCrvLY=;
	h=To:Subject:From:Message-Id:Date; b=pmYXSaUm0N+Guyr0PjhG97X1hB0ozXVyijmvBKgQjtcfAiF10HLmS/s4ylMKRVvzQfj5RYXIg21bCbXEAVku+FcPBAsC6SrQa/MVTPnlNClG1t3YBHEJXTXQWBZdoxayTwArnsOFHWcN57ALpPtH2p2UQaOyTJda0oNMBbnv1pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUAswhRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUAswhRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B6C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765087973;
	bh=7SJ9DZTBUu2T0x2Lojf1BA9JrsNL5KhFp8LwwGCrvLY=;
	h=To:Subject:From:Date:From;
	b=eUAswhRrz4617ue0ZHlB2mDB+vA/pa2u2oGPBTO1uHAIo4r2akS56/rzaMofy6ULF
	 +jfQa6paXJfdy4F30N4I1M9vxDasO75qcGc0HmYi6zwPM9QjWXs7uKO6MYjj2Cgo+V
	 e5h3/775cDLQTkPvYQmqYkxgXoycCuvTaeY4U0mV9+hn6a0OhsW59X/fypLabIv5xE
	 a3Lm9GSsnkGEubV3gbL2vmmw6LiKIwtArRxkYqHnwOaHvgxwj6vWHIUPhIe/srZoUv
	 41bKS6kXBScHdIDHoE2p46nfjF6LX4BLVsr+09v/PW8IChFznEyVxS0keGiplOK/W3
	 XaLm17lC5W8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FDD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508797358.12813.257305892212462684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730f5eff886ceeb961a51e551f23d11d28b6c1d924643d84ac2792ef8d2369f0
Date: Sun, 07 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765087973

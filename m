Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1341C81ACA
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766344434; cv=none; b=eRnOGMgkqxyrZr8yt6flvh79LoC+zFa6eyCByajSpQRhfhqZ3T5GHJpDl9tvgL0+9IKyV4x1PrZ4oWxvbNGpr8kmzshzgNPLGzx+F9/fxuGREFvQ9nYCfonnPyaCR1Vw0YqR1bkHS9rpOjAvfDllJGaQF6XLqbLQL7BeUHKVxSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766344434; c=relaxed/simple;
	bh=14JhPJGM6vDz9FJWOfu6rVNAzhI+tSlAAf7wpNyFdio=;
	h=To:Subject:From:Message-Id:Date; b=JAZzTCBTD4p20G6bvb0W4QXTrO5jAe1KbYbedJJTzhQ/RGj1dWNLtzwY92N4WSg/uDhBXqigs6qlkeNYDgSLRSiwoub5y4w3jodcSGedFLsUUcqy1RwNDidgLY2PU/LKLGosPcS3XeM8BUffgSifZmVsQ03Fq4ebRd4iXX6qAZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN1HoPil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN1HoPil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766344433;
	bh=14JhPJGM6vDz9FJWOfu6rVNAzhI+tSlAAf7wpNyFdio=;
	h=To:Subject:From:Date:From;
	b=oN1HoPilnnWd260nB/WHV+5L51ZAI/0ZIpsXeFXT0l3XAA2Ee42dZLM4mr3tRINwl
	 mR8ByW04gpTNm4jzqCVUhZXrWoZ829R/l7nM6Ssm7DZiCXwHnJ2aORdG7SUVf4kVoA
	 ra8DqQPExgIOQ6i4gsspEoDk7pSiMvJXs12x+ZF1y1/5j1VUcwN8G+9iy41EaqYrCq
	 CbIp+AQSmfJU+YvF+BNslrW+RN6witdXOY03MsteLdYyJMSkPSzQazduLGOHFrEDZr
	 dWZU2KC3LxqsB3H+wByiI0UEC7V72xs+hhDZfJXEo7gcnPCk8oRunTqeSZwygpa37I
	 oQd/7wbzh2GXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9712BE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634443360.8621.9776341085869959606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c85390417cd741a8bf524a21a59faae75b81d1c36c8d120952895ee0cf665a
Date: Sun, 21 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766344433

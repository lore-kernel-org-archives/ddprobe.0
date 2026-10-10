Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB2C2701B8
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791618034; cv=none; b=jFya9sHgdEPeUbAB/mf6L1EK+dPuR5lbRi5njmtLyVl7w76cSPOT17esw+c4XnxyXVSPOkoPdTltBSVMe1Lnqw/4ESGTZxHhcy8/0gqe6c+X2VnTKSkm7lMz/JoyhpeU19Ib4r60G2dK9Xu0K8akz7oQF8VZRUWCKtsjHq4cIQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791618034; c=relaxed/simple;
	bh=c6Bq6k5EErqPSp5k6nmzQKIbZWNh5Qz9LC78TU7yUYg=;
	h=To:Subject:From:Message-Id:Date; b=la34PD/9ZrnMQ+tEPfzjhy103xJV7DvNwleLz/c9ljRD/7SobDYQH1iDo2/adbuvVI7JPvICLPra1v1P74J6MTPEIvjirju+pCUd6Gv/75TUb54YobKpY5j0OUERXw1Rg5SVafMbqws+YlGtIG3O0UsVZ0KFrRHasEVUKw/RBz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEIQJAxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEIQJAxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EF8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791618033;
	bh=c6Bq6k5EErqPSp5k6nmzQKIbZWNh5Qz9LC78TU7yUYg=;
	h=To:Subject:From:Date:From;
	b=GEIQJAxrsA4RueHXGjH1KL7+5Z9hHm5CZtXBRCm2eafIETVU6erATL2ZlVu0S7gtW
	 sTGCxSEsZSadi4zaRgn7lse65UCw4CyySJWMsiiIMZcUe+bFDYfbAtZTAkmxujwW2q
	 c8NYhI4oQhpy/w25d9xgHZAHtCqgSc3bcUP+fYA+nd6Zpjva30KGv9+lwrR8+MPpyX
	 LgJ7MrYuyhztlK9FbaYxzEa7hOyjVilDvRWB02cuwH4QyzzOWMAEKckyCxBDpI3GXz
	 +Aixz7KNum6cjH5TuadRVphndALeMVH+pw5P5l5WY97eulyi1af9LJNmGSNbEamt+8
	 GCg6EKsaBOXaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB2DCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161803368.5077.12617813979055200629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ed682288109729d86616341b6bfc8a80da14d5b2e6a73b0e32e797fdeb2897
Date: Sat, 10 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791618033

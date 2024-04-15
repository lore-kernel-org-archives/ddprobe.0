Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C7D745D5
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713190763; cv=none; b=quKaELRlDk8SOQ1zx/NOYMobmnyf9nDNFywL1rAjqbvdHzx63F5H65Q/yAOcEos+WqyUJZic+WcdnlXHtJWTU0Zbhmg80y6uf1fmRjvw/GxTdteVrfi4yysrAqXvq+EbqsfbgjScJfQZrepeDry6BKlKaXaxjJ5K7WzIjUveTIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713190763; c=relaxed/simple;
	bh=nHVas4SUHZ4dlQhYYw6EU/5Dv9wLyZUBmL6/ajUkjhY=;
	h=To:Subject:From:Message-Id:Date; b=nD0HF8KvYJGqJpeJZYQD1A4SH7Rh+mE3L3TgXtHjz5oOa7NQbeHTbIVV8tl67nrdpbGFK51ILot+2NcpWTASqqiZfXEDBu/D98qjBGA+loWrDFXq3nTtV0O5fzsqAltm3F8sa8hJS3dUkC+BRlGsJ9xUtmVaWAFUea8zZ66Gdjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYJ2Ew62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYJ2Ew62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8B1C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713190762;
	bh=nHVas4SUHZ4dlQhYYw6EU/5Dv9wLyZUBmL6/ajUkjhY=;
	h=To:Subject:From:Date:From;
	b=WYJ2Ew62I2iS5gw7qgw/1PmV7Wy3G5MuNOVWrVKI92GnRPbhSU32I3E7MHdtHzCnw
	 A/9FFL0ZvCx7+8t4gdEsrCEG72oDBIs6apYLkAmCrn1rjZ1uPHYito46J8OUg0ksoA
	 Lr9QzKjESkaHuML3St/5QN51LiSm0S6hOkGicZHWFDSNf3mU93bhVoRMT2ai28YMtX
	 z+PT6urrCSbQg5DJAYFfmB7YCHYz5tWi8lqi+OCC1Sebx5gROKZJLp4L7dqnU7UGon
	 gOio8sQRGXOECKuDDrqgY51CudeNrnRcn4cXToTxhqygyILefU2qRFLVVWxnVUg+KA
	 6PhrhKpB4PM/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5E5C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171319076276.24170.12598237009825198453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9041d73fda44f2d85cc92716178eb7e8c19e1fa9c36b82bd31164835ee6caf
Date: Mon, 15 Apr 2024 14:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713190762

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29576248867
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756734594; cv=none; b=R+UIgMMVriyu2ro5sl2r2NemWqrYmaYQaU3IxtmpvW06NZo/LLYpRWXyqdQptTrSOPGjeqHoHYfFLMulbb1pkdxUjwNXZQrHbLfWZSKrXISwVVEvLgl7JDU4qZL4Dbp9o/4EJsf1fef13lFM9HD7c9ftqhYKs9ncWK6QTXIDw/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756734594; c=relaxed/simple;
	bh=84l1AdXSWDy9lFDDOOFeRukr1rLyPuJT9pET/Jd25eA=;
	h=To:Subject:From:Message-Id:Date; b=ezS5wWYV1z1y5UaKoNQ7/XfIcwUe3+HIJjwllt6bzRBQpLvT1c3crLZ2PeJU3T55ecpl3m7N/n+CTm117/wm5D5JtyELo0BjGEgbMToEdRYo0p2yVobG2e4oVIIO5W84tfruTP9EYQBG+EAIGSQ69wBqpcnbCKPeJy6AS7oqOHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kK0ReeFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK0ReeFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75ACC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756734593;
	bh=84l1AdXSWDy9lFDDOOFeRukr1rLyPuJT9pET/Jd25eA=;
	h=To:Subject:From:Date:From;
	b=kK0ReeFWWHi8Tg3LV+ESMSj0vDIcmHrsUzSRP8cgUpwKJLw814TOJmYmQkE0WY2JC
	 pGl4Cd2f6gpzjzR7V2eKVahBVue0UH7E93fvZETvkk1jFP+Gf6SIBA7fao8njf3o64
	 6hd9yt0iEzLz99QmysSmT1vuvZd7cmSTu5m9Wlq09QXx3rgVXTSTkp1LgKi21VC180
	 EJoBjY5y3vUDpY/8TNGWDA+R4mkFokjBGiY/0zk0MscTLLeWSZRU81EIWnaS4Oih00
	 9zoFHUMS4cp6Bo4aY7biIiq6HR59FlnjwPsC7L3mg+OTs/mnvs86yETUO6A/+zgL2W
	 0S6TbyTyhQqiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5CCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673459358.31547.2187179433610199541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f29a3a97cbd820e205368c180d61ae55b303be249f1081dd053dd15f78b66a0
Date: Mon, 01 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756734593

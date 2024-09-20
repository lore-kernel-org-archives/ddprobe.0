Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9F5F9F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726864554; cv=none; b=kiG9Qr+SsTRvvwwYFoGg8FPoLsHD81saRbDpUc9KppzA1xpZa+XvzJAa0gJN2VuSyyYRAC0kf6VJvDWklTuxUKtSl8TWskS5yY9I6ykbNThpn17liR8lRSorhgD6tFJ+4zWufACerDcOARMdETqiSrzMnWtrBthnN+e42FnGoC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726864554; c=relaxed/simple;
	bh=3Uj0hhD9hSXRueUcahLF3CRI/WQ847EREq/24Nl9CNU=;
	h=To:Subject:From:Message-Id:Date; b=cLOGi8++9WWVfGD/3ei8t5IqfSbDAhIB1QKr5axJHi/56OnMHykp91u9M7VV5YtEAeTA1PgElpIeLqbYr7yviUKwXA102uGw3UcjpEWx6+/8v/EvH3/4RNO4nMGeBeKyGfXF9joMg3+mEqVnm/1foetXBTs516S5eQRKRNQxc8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak1ihzHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak1ihzHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC326C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726864553;
	bh=3Uj0hhD9hSXRueUcahLF3CRI/WQ847EREq/24Nl9CNU=;
	h=To:Subject:From:Date:From;
	b=Ak1ihzHs7W1SZincyUzQibdpPU5wOMNYpDtoDK3XZ+v36zpOtL9CInK+9iIFG+W8H
	 gLs5qUUdUnUTgFIMZ6PNxdySrwWyZnwlgAerfHE5IrXwgHJL0Rnn6Th5NMf+wzdmSR
	 rda8K+adDJf64sLKAnGr7d0K711rDqsrz2BmkoQ2AKmy9kSyArtFGd2sSeRVYyXt7C
	 yVQYD8J1N92E2xmngj85KPFenUw2VfqCOoRHDUnujlfQ+1X6SlIYhKAo1u54RGei2r
	 E2s4TfKq7KgVee5Pl0NdzrCwuqOMLrnBXUK2mMtdnKStJIKMqMHmhP/0yAyoeutJHY
	 hPkvImEVLe4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F52CF9C64
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686455360.6305.14492719985213753945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84925ba980bf174228638483e218140acca40c7fce5c992ee54f9f81a5185e6
Date: Fri, 20 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726864553

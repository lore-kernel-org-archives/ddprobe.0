Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA01433E84
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783135714; cv=none; b=l9hfMZoyiH/+84lN9QyWA7X1bogFLmbjvowghybecYoNZSbenBHvGYyY1dff/3TJPvbWKbWYXkqnyATM1G2MOfCvbg0ak7xIJ8XcIH6e8jWgg6VVWAYUXYdBKN3nNlaNv9nRHbqbNFaUb5CL7m8HkLerdoZGWzJ3YSZy5N/7zMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783135714; c=relaxed/simple;
	bh=uFut2A7qflHlMPWh8GyFkup9knSARjkRcWgUEV7i+Ao=;
	h=To:Subject:From:Message-Id:Date; b=oui7zrAHAnUTZ8ByCU8ZFvgZAaVwIIV1RT0/BN4r3K8NHRYQ0RksC9rJ4oQjbHQJ8tS2OggcciF5AbgbDR6kn1VGLudWocqx+whhIE8TWWSXx7WZyDcycXddT9b9mFxImNdLlqyOgGGugsrIMcQ65ZhiN+i/NVa434oUV1pktGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbNOGaZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbNOGaZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF16C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783135713;
	bh=uFut2A7qflHlMPWh8GyFkup9knSARjkRcWgUEV7i+Ao=;
	h=To:Subject:From:Date:From;
	b=fbNOGaZmFYoSRacamKznPrTfoDwVCjcCsRtdvky+eKGo4S2R/3IkxWnPA/2pZlhFp
	 jY4EffSMW/tD6SYf5GjQL5VOmoB/r+o/lccgd/Mk5PTBjgnOessxACAZQj3Yhc57Js
	 PTEozCGIVUB9eijDyJ8SK4k07VqAtrD8PeHJwkBKw5WtY1e8fZqGEStQMk5BAUhvmB
	 bIY3AOrBYWtgpIxNY0XB1+CVCLDMTH7vlx3HSWKen/bjyXhwEzdyO2mhib7tqjalKy
	 +lSTuI+PeEeJjEUporeYPc6O1/NpDlhNrpQq1bne/xz4/al+xdDsc1shTAZdi74kwZ
	 bdJLD3uJIY/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB331C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313571368.3457.10131068616687223465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9731559fc27a4df51f2de155d50e6b89a5767bf663b98a945a81d4ef31e6a8
Date: Sat, 04 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783135713

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE4645
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756339794; cv=none; b=cZ5xrFusGy0xNlXq6ATy33SX9FxlivtzK714ypRw8jPIc/6Zu8JU8oHg2JcboZG/ZELEubSWmztHC29WSDnRZGAXYTiAba637xva3SJeu+6U0V0nSvyY+c5tk8bL9Rpu7mZPA9eslwnQWaShR8cJ8Jr2wyTkcxyyE/ennzvExw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756339794; c=relaxed/simple;
	bh=KMVXe6/hC2HeIT1TyXF0jGDajPUhSjR9IB+afN5bFWw=;
	h=To:Subject:From:Message-Id:Date; b=WbF0M+AfUyqEn7ySsrZlrVOqwDz2sONxUMQAjjIvQmc0UfN5LYSLByZZec4ySoebOMVbW0p97p/r102sBDIWHccwlTwxymrPrTPAhzAPRSAHC9/SDS8p76P0Yiblzs8gVlVbyQKgortdWDlJ9SjH5dCfrNnCqSsYQPh9IaRE25Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2C9r8Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2C9r8Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A846EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756339793;
	bh=KMVXe6/hC2HeIT1TyXF0jGDajPUhSjR9IB+afN5bFWw=;
	h=To:Subject:From:Date:From;
	b=J2C9r8ZlAD8KyWdpRgTu2uZ/pZ8NRVnl3eRQ2BPThjU+SHWsNV4/GbXt9MGwKtB6W
	 0fqd5kkCfZkloc9t4ScHD1rCp82XvxJ4n2wO788xNXycX5gb76+yoe54Zi0cH1sb+j
	 5UuCWteSpLTPOEKH/m6VXBxnwUAI3tOWGr29FKSo6kIQPe4MpMHNaRrSQ3feT0wrnM
	 6l2YECi0rK7ZVfHjW6NUNng+4wv03ldci1Fbu/HpW87kkyxJsYS4U+xQXkmYzAr7wP
	 uUhPeK7BG5lhBdMqidQiBtqZQ/zY2UIOSon+WI2j1igDbc3/0uqkQcobjrFOvCXVtV
	 dw3XsAIjw4eUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956EECA0FED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633979357.865.18064669736104700325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68b7dc6eedb3b3a2b48c1ee77fb7a616f15827c8417f9efc015a8b428be0646
Date: Thu, 28 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756339793

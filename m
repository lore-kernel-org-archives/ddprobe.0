Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541DD3FF4
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713064163; cv=none; b=l7RPry54V4O6ma1zQL4OZHrFWF/WhxquwZyVGfw64vmTkafHl1O4tQOg1JN+qrpTVC5Lxq35U77zi78wxdedtqNdfmOygeYoUbkiFTSAM8I8wzhp0pDFTi2K+MFH99hiZ/FCdGl19l8xa40sAY4jUyoCQ7OcddsUWs9wHSqTy2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713064163; c=relaxed/simple;
	bh=ggHGyaj2L40TeAApDu5Vkap7JACEBCk1/TsJuXhfY5M=;
	h=To:Subject:From:Message-Id:Date; b=cFjVEaucQWnDuYtDPo5JPJrQmFheSV1SUQbm0bVMUHO3VBPa3lvc+97s0a4YsZKmAGNwZZHv1RpwzLLg1cuubkgU03k3efBIOzlzaRF6kqfhrLaONX0QQXHJuvpg+i7wQnxHO/mWcKZYpGtsOwzJUPALHSaE+lnc/Qm04nFusF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3930iiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3930iiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52A9C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713064162;
	bh=ggHGyaj2L40TeAApDu5Vkap7JACEBCk1/TsJuXhfY5M=;
	h=To:Subject:From:Date:From;
	b=h3930iizn9wEMvaObimz+0CV2xnDGo81zzh2SH5bWVM7qj/yvbbnDD4tG+kVZi2K9
	 lK1dZPZvxg2fqUg8rulBboIAYYq04nbmeGE6VJhzGs6NCoJRsb5OfBAf2spjAs1kcc
	 s3j3uYE2HrKv7qgdPvFRHRB/2exdvpJOIayP/uxmIiFnVW9MSJ8WOettGY3vZMyxJU
	 RH6OREAxhrLbkNgwAy0oQkEuktU78pTvO5iGbreHry3ewL5DZvL/1Q9HzVilPAi8iI
	 bLfyw6KUkw057+cuHqe8JazWdsWr7WTnEysPan2kAz+2env8xEEbPzq1qXq95THeHc
	 6xKqNrRO2BWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD223C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306416275.23399.2695654771518720550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358915536fcf28f8f36408991f3fb5ef3bd1a251028b390781f0a11a59a7b1e3
Date: Sun, 14 Apr 2024 03:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713064162

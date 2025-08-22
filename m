Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624462F619A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755856194; cv=none; b=GX0C2lfuzCx6TW0DZq2BLGp8KXA5fl46cDaOYahH0mfmFMAHszubWA85PlDquU4wtb88Vm+pwIoHDqwqBKhQfBHckWa7/zFh+eA+ZSI0WDzIpI9mTubHuQGyTT6al0kdxC0abw5xFREmdTOamEEqrtxOjotg8C+vxmeFAEYDGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755856194; c=relaxed/simple;
	bh=P4MhTYGaFTf6mg/RZFWLC6FfVwhMP+wYAlxQFiONl1M=;
	h=To:Subject:From:Message-Id:Date; b=Mz00Uy/xjFPANwwIKkR1Vz8kWloxbRhLcihbSGJdpRYGJnJayTBM4pLgNOQSeBihxxKpY5NAd9Jb8+PPlZ00lJHrGHF3sH/008Hb7YgtHGkGBuwHUXWu1E20iDiC7h4LvmZCT8a6C4feoEB7piy8y2OcWDFcnYTjgA2bBI3Jw3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my+9F+8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my+9F+8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC05C113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755856193;
	bh=P4MhTYGaFTf6mg/RZFWLC6FfVwhMP+wYAlxQFiONl1M=;
	h=To:Subject:From:Date:From;
	b=my+9F+8HVBeXP1+Qz5MH1BuNSiXnMxwzZ7/V+ExAbV+YOnxn3fHrfOEosK3/tgWYi
	 6+qZWVFoF68U3LlNltHqZ3mlvTmpObNwZX3W+zRGPeYrBWiRhAmHXFK9Zg16RcoRRp
	 St+KlDF9jvAYExP0iqURwCKByBr6HZ15sgfTZXyyuXxhOqwWVYDN5Mi01OkTObjNG0
	 QFILPf1hgqvQjTk3yGrFetnKuVGyaZBsEXHRO3esJmKJXYRfHiUGxxKWyEKK6RbHhn
	 91dic/kWKwfP1evDWQq5VCk31Re3Xca6dM48K+4tmOb8qGngi7/c2ygzLRDRtie2jo
	 bra2EEeV4FhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AACA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585619357.32674.17062919546765921387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b931bfcc1d1fd6c357fb2434fca8d94b09e0d1c70458b84b1bdef9747c4c8d7
Date: Fri, 22 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755856193

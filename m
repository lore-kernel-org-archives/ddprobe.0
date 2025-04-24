Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AE61BD9E3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745531394; cv=none; b=M7osN43aqaUxc3TSg1azHktbSWXPJXg883B47vZ5V6XVPokeZwzBoPhpHv1mta74O+hvnt7tKdS8pm1fX+I052UTsUWxItcGm1e0Z/q6JouI861MspN2KZ27hpzWkebNlwU3f+a5y73bWJYCXS64N+ux4MRJlN8ICg3MhGa5Gsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745531394; c=relaxed/simple;
	bh=uDNPmPU4a8Xm3CiBVrF9R5RURXC4kw2dFziaczGKYxc=;
	h=To:Subject:From:Message-Id:Date; b=NJEBjetXzjA4wQMl+4KtDJLAIp2xrzuE5nO5PIm+xp/XPiYhdNKayUn4PttgCbK3VAHiBZ9a7NV+1Fyh/1H9zbIIzyzetOkh+Z9vqnWA69UGdtc+gSZ59PMup0FRlC5wAf/V3NwedXTxogceARUUm5BXoF+oBDKKLtYVVTQjSnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9FgSefL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9FgSefL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B75C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745531393;
	bh=uDNPmPU4a8Xm3CiBVrF9R5RURXC4kw2dFziaczGKYxc=;
	h=To:Subject:From:Date:From;
	b=h9FgSefLGfxI2rjyjdvbs8WLa7RCHi3NSMBK2d1+e9zgWR/tG9MIjPdli3E20vLTX
	 3LDMV4jrDdsKDcV/jt+RG1MnbBt1ZzoPZj8e/hGIOe+DyykqIuSrsFsTHkanuHCPge
	 ivNjp+//s55zs/mYw/jcbDQVXl2s4RRNgOxf0c1wCvdrdeOvRP6QlghjHLx1rIQZiI
	 /TZaGaGc5WD5K/uvEzbyqnp5Vh1dPUsMvKycuAMp9xX7Gp/ZxtT3tU24WRJgChzFAQ
	 En6vVajVd0v1XBJOndLzpNggBl6SK9cC3zfxQI7khcMKtRwaRfQ0OVtoEfuMGzogiY
	 u8kNqIGyswC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90852C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553139358.1569.8381742488381408536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb6efcb0958631ee610c6afad5b58b59fb4f40a73ad026b88a6c0aee99b8d83
Date: Thu, 24 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745531393

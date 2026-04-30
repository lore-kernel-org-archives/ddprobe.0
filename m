Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254674315F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777529254; cv=none; b=lh2IGKaynZ2Qo+FDz10D5hUppankCnVzM8iuj5h5zc3cH+SeImTgYMtPzRuhl6QweG0agAMkOsqbiVc2q0ysiWWyqQc9Dvrzl193IOnRf39iukD6T59OkoJOyUm82hRaMychC0tibew5xlPjeeMzdWDXMpd8GyOcvqQW6R4yocc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777529254; c=relaxed/simple;
	bh=PDyCvvFrbpotQLmssFwW+ijhjcwF/bg2s7jZbW+LL7M=;
	h=To:Subject:From:Message-Id:Date; b=d/eKnw8kbynbWs+o/FOadmydeYr9sBBZQAfhd6VlzADmEQpsq+r26b9ASQnVECNfS2k+rwARUlUqDJlStLSXpc31EZxqbvKwWBmZYxhFbqqrLa25exifJynSRumQGeux2mygbov2/3Wz2qLtwxD6A94URAikLkiO3d35NVmc4jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7BQV3IC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7BQV3IC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2BEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777529253;
	bh=PDyCvvFrbpotQLmssFwW+ijhjcwF/bg2s7jZbW+LL7M=;
	h=To:Subject:From:Date:From;
	b=L7BQV3IC3Z9jV+xHrswq7rtmLXsyKHyWVWBr6Pxh0yayBholk2HAN7UGNnSO9vHkW
	 punglRldvtl6X6op1t74f32dalBH/SGsrJRTUqpsCqkFCeGf3OQstdBYUFTtmEHCNh
	 3mmXmc4ColKfUgSITbaEbp1XQt6pYyRIOANb4H/dxZZQkX1EoA+9B/wD3KtiBcxIMG
	 0EosdFxb8eAWbwK65+uEaa0yfWupb68lzW4a6lB6e2pdtfb+zkKoyC4sQmdMCxe/nf
	 ppziJO+puV6BARx8PawSMXoPIj8FWDjX1UvJK55DfYA7y6WlgZkl52QPEHek1AYoAT
	 vA3rXTt9Ywleg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB84BFF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752925369.30049.16005583731133714465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fb70cd6845ba97a02ced3a0b57c3c87880ac6fd2ad99648c1d09ce326b33e3
Date: Thu, 30 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777529253

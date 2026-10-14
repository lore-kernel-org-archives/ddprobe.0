Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A49377AAD
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792002634; cv=none; b=G4Q91pvn0vVqBWmolTnByXdfVOJgcTwkj8ai4bknh9DOg+rA/TNZj4eAsQvlB+ex70tcbR9A0bxunmoAxdlOUhsRzCqzwudEUJ62oi59nleMEcDqJ7lakKTPAaUXh3IwIYG292JJ8AxRc/u9lmG2j/L3iSpRaIkUdwLIT4Wt9Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792002634; c=relaxed/simple;
	bh=qWyckKJcjqp0ov799HSaMH/YhdONduOSBGLyOIoOdnQ=;
	h=To:Subject:From:Message-Id:Date; b=Ry+NTstEZtydw3u+4K9NOBj6sxE4Lw0jklQw7IcK6vYPUQJI8p9wZsTw/D6vS4SttnaXpfkFVO2AVSLCEsD2MfCrx9SViLP1EpPkzR/FXKQDGOF9SdGvaozfFQs19VDVOyiBmbqCCNmdbUcrSpwWtlHiGicOL9FpnMqXXIX/9jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4RLJOrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4RLJOrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E3BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792002633;
	bh=qWyckKJcjqp0ov799HSaMH/YhdONduOSBGLyOIoOdnQ=;
	h=To:Subject:From:Date:From;
	b=h4RLJOrq2pgppCWtz88uqSUd013Cwv0usRwnHlEhdA59asNOALnFJtKOfGGblYDdU
	 vAsDW1xqnCYaDE7+usBduCa4gbG1rjGiMCprxG+Uc4Y1NdcesXLPpwDZdE0jeOkMeX
	 +FYTfZVtcxrSS/RHr0HWXgERr8AE+MmjHtOjjWXZJsM5gzO0H90wQgQK3AkSaIZn5I
	 ciRWVjlEWLw6SKBBHisALjUdb/oG+HMUcfkJgC8TeqY0O9o3RfCP6keJElSqvVQ7F1
	 ckF3P1405ZBBKVSB5YwVD4odMswDRV3L//RhIOeK+6BeztkVCBTJXX6Tp6ImjMMc8n
	 ERxa9m87uPSyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B0DCC6B2E
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200263370.28285.5053359095925840834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9166c67dc77a1cce451574e3eedafcd1671d0a23c00969c39bd664ccfa6f411
Date: Wed, 14 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792002633

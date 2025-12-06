Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A3BDDC5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765024374; cv=none; b=bV6wvWBcWdelEigbToa0EsIt54/2c7e1B2u9MsvXnYSw/D59pyzY+JxvV9MrePrOOQoKXU+ZuMrEJ6/tB+6XahtOyHO9EygM348MnyvJ/ra6SjWpRifNFHhZqM3nXV5KYB8taAQQ35BhrHG3bdwQu4vFFI5U7UthCSIurZd0Npo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765024374; c=relaxed/simple;
	bh=ib4GB69NMBhtZaVTeppjqg9Gv8HlXprzcFvAxkx5fNc=;
	h=To:Subject:From:Message-Id:Date; b=jypEoo+DZRgAuUEDD7MOndzl/IFwuATbVwbDdeRBRcc8PWkuLkyty5aNCC2n1chwKlLTqETFfKBX+CLDCsOm24bFbZgfUcnt1nALgffVfHH6u5+u7MO3kkQkcJsVj1Ri5VHT/vvuUrE7mk1oKK8V/ieI0d0hy7ui0+Y5H/D48L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCrr1QfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCrr1QfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B785EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765024373;
	bh=ib4GB69NMBhtZaVTeppjqg9Gv8HlXprzcFvAxkx5fNc=;
	h=To:Subject:From:Date:From;
	b=MCrr1QfCvbkra+ZPmoHF/Ni0+qpcCwazGYLP488rkbXPtCcOn/0zORluVcPtcuLMO
	 Q8grja7+AhAjcqp6LoASsc/o2Yj8CzRlouw5VLLgqnIhZ6iYCSZZSjdOkDT+zcN+n+
	 +YQYJBwcVAIqS9TkLnEAMemegRvj8+Bcw+dWRyuX3OMO4XtgzDQ5TEedgVWv9V7oov
	 y2ir0klJFVz8KZ2ovMntttq1KppVfXb7V7YCupd1QTOpgC6+Z999irR0+U8l0DgjRu
	 LXQy5mLQpZMaHDWjt3bto6lTh/yKq8Vu21faInHRMNtXftjAdnNdfz/T/IOnZHlBZt
	 h8y/Dtf7mGFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F19D3B7D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502437362.8696.1506954620051145626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb74cae84858739b11613d0af9f86770fe86553367ab02f6647519efc904e29
Date: Sat, 06 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765024373

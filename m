Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E6199237
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766974434; cv=none; b=FLESx+O7Vf65ss1vaClwQ4zGpvDqscu//vWOQIvh7wNm4wm4oLjMfmKuyoLL75rSZ2M8FipuHm1JBOdMF1HOCdvXA91uh5jlGLt+ZXQVQWbEsLd2QJlUlH4fnA1G/kJbhciDIvGpJZ76JYbAG7fJwQHuVrSpsY60A+pgGqexzhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766974434; c=relaxed/simple;
	bh=/ym0qhAnBiRGWZXskgAcsEmqEdCtoLV2BaxoBCjTJqg=;
	h=To:Subject:From:Message-Id:Date; b=Urtc3kaX7u6GOYXilhfaNEcr2jZo2vkXw/dRyl9YqXMGM95p5UYZVvnVj5wxECZBKuUdIRvHSLL0FD4Kl971UGpH6tQ4JgJ3s/IFbj/QPtWdHtVjmCNsd3cwsuM+kHI8zbHtUtn1foLZ1AIURqQDux7rQB1f7JO7KUy4BmuJgJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbaKC00z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbaKC00z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D368CC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766974433;
	bh=/ym0qhAnBiRGWZXskgAcsEmqEdCtoLV2BaxoBCjTJqg=;
	h=To:Subject:From:Date:From;
	b=CbaKC00zklXmIVJODRcGnQ9ea5iZdPuZXBHQHyuc+JMTDNGbRyrgIxAPWMF7Pvvc3
	 NUuTytwiLDItSQMsXaGNxLECuK3rdcWCIjPFuPkABVJwrYTM/e7bLb12zLpiMjnOjs
	 fJm8OEjjeW0Z+k70UIbeoRiEh6JLIK4wqgOnd9sV3Go5o1H4iiyCGbk2Sx7JIiJduu
	 N5TF+yjmIOyyE9W3/V2V0Cp6pHrPuCUlvsZWI1N4GIlGCQB+Dxw3FApifJB4T9OA3f
	 JZHjcwH+QPUPymYjOlAVlOw58KK9L/nU5yShxqeSQWD7ookF2g2kinaY9W6fvFpgQf
	 4vdog63xkZN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30A4D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697443362.17680.9027590568149302499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6882816c452c9f72f484bcf77690fd9f98eda9b0c8ad459da27a9a9039b5db4
Date: Mon, 29 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766974433

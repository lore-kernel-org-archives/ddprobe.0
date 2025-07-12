Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31375433A8
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752356394; cv=none; b=JOLRJRQezXhpm6x4nOl7N9R+mGLtjrk3xmoqFNg5kmiWl3D8C5FPxZQB8wR2Qx8ViX6lDVJN5JdSlxY9WLmTYHlMcatcITMdHo0vpCfOSZ30Oexl9mhjF5k3E6Cti4MQMqcFayLUzMYdMA8swi60w+R+hQXti6lp5281Vk0AWnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752356394; c=relaxed/simple;
	bh=AiQDak9Bo1o7FQgffHWNlI9eYF3/LUgijW5avEC2UaA=;
	h=To:Subject:From:Message-Id:Date; b=UBlm8E2ApsZ5s8d/FrJlDbRmDMqcdJb7PKxs9UlE7H4Y8vyXs4faUcUATLM+T2joAbdHLOrDLc12xnEAHvHEredqFbONMLk3UewhM2rHCn/uH7LSTpRGfN/L7rc5rfwSNJb12vCJu5TRZ9EMhOAGqQXwS16dMs90gVAjGqhBR04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9QVtPrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9QVtPrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FAAC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752356393;
	bh=AiQDak9Bo1o7FQgffHWNlI9eYF3/LUgijW5avEC2UaA=;
	h=To:Subject:From:Date:From;
	b=a9QVtPrMRpus0Bnfxpux1A7SQ/22NwtXwedxFWYVJcJY8ofXJoaAi4oMy87ZBeea/
	 SEoLos61dWsIsf2EyvOlNNaDz+28rH4QQy1qzXNfdMgMGhmvNaTZlTCuCkQhqJJ06t
	 yV/qcWZtz+2vqsb/no2Hqvc95HoaVkIag9uUDOF00GypBpVJgCsVgyUYG4IKBbsDo5
	 G4G6/cSvYVIF9UrH+3ZAAnsZSTQDBI3Ib8rfSjsD41q22eZJ4ZcyD0GyQM7ofjp3+H
	 VGMD0f8lc/7LBePHvh/zBM6cuQGX1ENFQcV7dFaZxbAI2aN7shY/xv/pmNaHRAbFxy
	 JPwU6rBi5/pXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B22C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235639357.677.1578544493157923333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f77e6645ed8614694a7ef6f2bbd8d020f139bc627f6bdb2f36d708f797ec6e
Date: Sat, 12 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752356393

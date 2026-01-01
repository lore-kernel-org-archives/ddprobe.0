Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81F5A55
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767278633; cv=none; b=qtPcR8Zsse2aAn76YqTJDK+zG8QI+pUQv2Kyk2cuTDP9GlPV8jBVnmov/OAFxdlAP6RJTTd1jC8ZEyNC4BsI2dzIGBg0+5rMw8uCbVzGtSmQ9dRtHUPLlJWW6D7i6Fq9ShZhTI5cJVORFQn0tvezxc1HLqMTIrua+LQ835WTUhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767278633; c=relaxed/simple;
	bh=R9buhHPEu46z0pQXIDVOyNjWM31c4EIx7skYeU0kDew=;
	h=To:Subject:From:Message-Id:Date; b=Am7LKNr6PMBTlQ6J2CVh5O/2ApPnyoy556Vf4kYv1avsNz44PqGPA2q79MOD1hEvurHY2U1cR3hiym1ZCfmLPL1F7EYiB0cyazfxVyAXKA8eR1ziPiarwGztJ/kRqzTQFyClK4m8BKc10ajegOfoN597QrV6lLR2U7mJHycQKrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuH8HJtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuH8HJtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6402C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767278633;
	bh=R9buhHPEu46z0pQXIDVOyNjWM31c4EIx7skYeU0kDew=;
	h=To:Subject:From:Date:From;
	b=VuH8HJtdGGjtT/Ph8/K0HIC6fLBJGTDoZhPG/aD8h/WhGnXELD2GVPbDhcuEJfsWN
	 X87ukDdHa93jCav2p6c2DLFbpqFtpjCMDpk5nVvFqGznZTCAQTmE9sdx6NLPZ7FXbR
	 IucdygRrW8Vk9lZhUpe/qWt3Pe+9o/Hyo3qCmdedn+IKC4Yvt7wt+043BrFzKchwie
	 SeHtk/3ltU3Im8uFiFRxEvMH+b1jeX31lLmjN+JgkTKGxz6PxgeY7rrXms6GjdyAii
	 4qqtWKUVVzYkf24TWIq7OZp9ES9YjuOGZtXrdbbFfd/C0q2QzxtXD1OAzHUfwX74qm
	 l47mni2f5LnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959EFEED603
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727863358.28904.1732869441166697542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bac1325ea22197ce8a898b980208f1bbbd437acf5f591ce02557daaf3ed9eb5
Date: Thu, 01 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767278633

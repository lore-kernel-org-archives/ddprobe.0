Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0659E3161B9
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767612834; cv=none; b=ALlFk9+6KnRfOm9LsLDrL9RCUAwZF5sqDvyp0jdp74kOGMLPn7+QSweeQa0KilSzGMBOxhzVjjGkqwSv0ENb8RIJupNLOjKbjxvCPZl3zHFKK447qyEKVM4qxdS9d2nOsvGPR4PeLEYDteBzDBBgj6KooF8NkcuQ+SB07m0Rivk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767612834; c=relaxed/simple;
	bh=k8kJUE09wlA4CtjlcdqIrAhmlHAueKwZE8IseFDhK6o=;
	h=To:Subject:From:Message-Id:Date; b=DaImCveSZ1Ag9czbIFrrUVaqbT6MhQm1rCSqfdKjEO/S5GI2IBTjRltVsVL03w3SSIWwcbmiRTezZveQeL97wTHkX41+0cLFHh39Fatj3iklx1ups6M24zEhrp6zZ1Gkiv6+yNx8b7A1uKf2KcErfhfFrM4LHx6teZzcNeIvsZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac8WM2Lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac8WM2Lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED36C19423
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767612833;
	bh=k8kJUE09wlA4CtjlcdqIrAhmlHAueKwZE8IseFDhK6o=;
	h=To:Subject:From:Date:From;
	b=ac8WM2LuhVf0NlU/AglsFJkB77ByfwcuiMYECR4ygQloZH0l3zSMoyQu4nXmKScuu
	 Vc1j3hevIwXcdx0QleqhhCybByJBAAlYOFcxcPWLvN5ATXDmDHq+jVD3tKLWBDdj3U
	 sktxgubwjCToxwy3ztxIJnugN4VzAIYQXJ4rbJWz1KtD8d2xSdmk34g5361Eint7db
	 STid7w9ZHzoF709gr5wAp3BUtlVJJAOIhoH/avYrsC7KzQZ4bTpa3bPGpA8htpMcG5
	 O+yCbBcWcnaz0dG44oFS9OG8g9HwR748+GmFVB2f3IAgFOo895+C72HCnLbSNjwaGA
	 +i7XKIkU4O4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF7C2A09A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761283358.27586.5035130790981334631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4518cd117c09ae5149355318166789991bb83454c7ec4304003cfb0e7b02a2
Date: Mon, 05 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767612833

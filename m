Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5271F4C87
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761794394; cv=none; b=QCrM6HTIGwrD4wwoVrHs0mbcWg/cZLZ/cAx0T3+QNpep/DVQkV1PmYUe0jWEkgSnp+bp64l8dxC4lpqG80+4u0p4K3jRfvCLX5nA4xyAzV8wJC8IQue+YQ+cHk+vybOEQmABmWLgvlfW39noVSXN9S3gTCJioPiQWH4B+C3qq4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761794394; c=relaxed/simple;
	bh=QGZmuSQP7ZE684UJT3eP35Xx/RCFntr03f+74M1BHNw=;
	h=To:Subject:From:Message-Id:Date; b=IQc3TA3u9lOrY6nJA+nX1JJFt644Jy60TgiKfZOJKF6f0XOEGLguVCoOy7ox9BHfcb/Hvoxhk9IGunlxy8yO1/WOFi2uWFsp5MpsgCBFKXyUPy5j40kcgDHKHx0j9L+fUfo9tcbaVFDvwLERYr820DLLy6n9+217pkQJglA3pzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD3zAdHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD3zAdHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07C7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761794393;
	bh=QGZmuSQP7ZE684UJT3eP35Xx/RCFntr03f+74M1BHNw=;
	h=To:Subject:From:Date:From;
	b=KD3zAdHthSfPh+1tKW5/fGckSljYy6SkkMNvpHELtzy8JXwOaDreHrCt8xuN3TCdO
	 ayLU/GxuDoPfK0Xcpnjxq6R7OzuNCvhJ7hzrjdy+eFPuAr/AP4+PxcpmO56hlGsI7J
	 d1Zs2mG0Y6FH/yxjKPRxUvJ2F77MGDGkUARZZaw4yFI6QFjpBfO4tpK40eTLZW7/yJ
	 3pBFqM6Lmou2jn2gI6iqRch27IxzAg1LVT42VHChUkrGUvJ+b2fEqcREZ89OINRi49
	 UE9SEV1qxMx+3KbYb3fBlTFyX3udpDkDHIuI22HrEVMcPAfTyXWmH95I7TV201Chxu
	 WDibOfKEMQ8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C020CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179439359.14644.1574320516405113294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e2c11dd7d63b2c891c70cb064ab946d111e5340e062f2cdd0c8526ca8fb404
Date: Thu, 30 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761794393

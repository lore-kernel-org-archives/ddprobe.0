Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130A119D8A3
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759466394; cv=none; b=s1hDULEA7M969GP47dNOVDk2lqRTVe6zqn/iY6KCgi4odJHUZv/R5xS0qmgFRjUCMgroiuKY28pSb4vETQZkW+JYeh6GEjFYPy0IDLSyFkoR/HHDuGSGgWS5/fZhxvY4UJsLLLCFyd7tWiXIXnh2CvtfYCg0iqBmVQd8eKKKnl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759466394; c=relaxed/simple;
	bh=gJ87SJh1yovFYORR7MRgzoX+QSpndl+SPlTzQNACcd8=;
	h=To:Subject:From:Message-Id:Date; b=EqLAicrZtzU2r6xWOSgPPjaQpK+JFVPobkI4gB8TlosdYH3GFVfNG3n0WTxe7nEAoD23vifcj1paF0xLPoK1CQjp0MukEWbQ4R3CCWZ88M776El68RUvM8Hh+3K39I7bmyBxv+J9yFmnOj7pujNI0wF/KBM09ZgnPlcQAsAqfdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beuqivlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beuqivlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1ABC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759466393;
	bh=gJ87SJh1yovFYORR7MRgzoX+QSpndl+SPlTzQNACcd8=;
	h=To:Subject:From:Date:From;
	b=beuqivlARpdNuGFS2BDvLRnz/u7Nvs7MdreKd4yofil8RNszJh68GGLE+yf35x3Qc
	 1AAp1cfc2cwpOnyMo0WIbCcO//3CvaAb5pbZNFsetlxPTvma90kA+Kyl/bordrrAMb
	 9VgqCy8qLq3LCNkM3qqoRf1ifndx+1rHTaDPfORvLhKkyQ1BOdUura0vGfoVPJjfe6
	 VC9b1QUBzipdHxfIjne4YLHQ4OEwbcfScHhJpDfJK5KPTx290qiY6gML0+PtKI36bZ
	 +3I1Z8F/RSi9L4vUDwIveCBcBf3LPyo/TFvkNIJOlFnsgisHM/NX3eGH9+J0+Vn1AC
	 UJ63Im3TlFwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F739CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946639358.18773.4475293340592283865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83d1046f6fe619073d51e0d81410c9732177acf426f4bbf1e0994a488bb3fb5
Date: Fri, 03 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759466393

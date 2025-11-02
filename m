Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E80117B418
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762078794; cv=none; b=X0aLUW7oq+ubEvjkx7k90dCGgaN8+uaXeQWL9sHAOdfHg0C1RVZWngBJ+s+bbXawYPRIMw8b4kN4Pn9tDlR+ZG15SdKGeRhqmnYDHBp5nYPGTKy5RpPR5BiWgChWfehPq486KPHCNbQIxcXug5pTFmkjQsNHUojG13bDG8k2QuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762078794; c=relaxed/simple;
	bh=W8Dl9OTFBIBwBt0nNZFT9MLJojfvzuPWN30kwoH/2ZE=;
	h=To:Subject:From:Message-Id:Date; b=VHoOS0dfHntJhXLJ6nKICZ/bFcaVkLnVbzabxaWbh5HCmq37susEDjqCNBVLm3W+u4xGq2DoEp8dlR9/iLH2HL0Ujmh3GQTrSEY9GwBUoLEa39cfFSiQN3/XhZLlKOzJT08dFGR7s9sz59G90KUeE8NlAAfK7E7xRyie7ca0+l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByXba8Qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByXba8Qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D75C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762078793;
	bh=W8Dl9OTFBIBwBt0nNZFT9MLJojfvzuPWN30kwoH/2ZE=;
	h=To:Subject:From:Date:From;
	b=ByXba8QzIfhDYV6D34w36JKHDpZVLO/vq0Qr6qg0w76cKaw/Ipvcg+2TZnCSaiFL6
	 7KSiL39230FzcwCy7rXgtt+uB/SLbne+2JTuBE6/Cip8HYO+4pA43gRrUrgwsWG5cP
	 gjqiGHRahl/5+tXhmYrASDK5qOulpGRhaXeasdcbOoxw7QkC6/rZv6WSkdygqJn2Vp
	 Caa1AufglINzY/8i3kcRLbXXoe++se42PFTeh6Q9YmbMlhKe7XcO8Dei48CNLyrgnJ
	 2UJgSP9bZqjuLeskJisWy1camqe9pIF+OIeAy6lRY3Ww/pumutAPtkU6pVqidIWQEY
	 0wv31fiYie5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7F2CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207879360.9846.2205873756316349171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ffb247bbb75cc100e4fc0c9eeacdae21c482da633973e8ab094c4f303daf92
Date: Sun, 02 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762078793

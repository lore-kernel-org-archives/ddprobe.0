Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3BA2FD7C3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788400234; cv=none; b=tf9Etc3GmKUiwWExkisIfzSMSHrTwCPDgNR9qofydSG2WDl313Ds9bbklIAXWWeMHXfBApmXUuTkTEiMd1SJtcEsoF9y6NgDVE7FBZ0bBiD1ExkJCPonXILUcNNaQDlYCjafbXcNI+Fs5fK5l+ATScAo4osjEk13YVw7fxWkvQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788400234; c=relaxed/simple;
	bh=YOShJ5ymwowfHD2Nt2I6PbPmU+yFHnY9OH9sE1nteK8=;
	h=To:Subject:From:Message-Id:Date; b=Xq8oBWTsMwN8Tu6Vtg6mCGQEW1z9Rj3sAQDXkK/+BMljnoQ8v/ZRSSvSCtlttWx65TurDiNDoiYuuEaeCKUnUukfvsxG80C70CpAFd4L17Yv+5JIhvIrqShpPo8yagWztpwpf+bsKWHXGimG0VsWxzSeL2s1S/Xw4PFXYA8kYzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQPffcFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQPffcFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788400233;
	bh=YOShJ5ymwowfHD2Nt2I6PbPmU+yFHnY9OH9sE1nteK8=;
	h=To:Subject:From:Date:From;
	b=EQPffcFE7EaDo3TXzTYS7e2oOUisiAfaU8S/s/dihojU82JAGhpTy11MwYh7HbhR4
	 A6lQKXgSMo3lqNnnqNOcfpkjpTk2B8lqAkb0w7C4lu0EDOPTW7MBEc7859ZXmr4NXJ
	 hqqdO39K89uXORM37/wtjN6rKjq5aYLgLq6TuHHaEiVurdBJuWw8+PzJEuX3aFWzjY
	 Fu92kKN5D6tc1vNrCcvzZcrgmrRCkGOQNWTAdRORLFs6gOJhv1Ex8aLha2QHC7O9uN
	 W/YTZmVJkt1iiPqsvLuUFT6aYVX3xMXhUQa3HayX8Pik4plee4i1hjF3fmVC4pjk/b
	 07vVayImAoOsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB67FC624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840023369.23962.4515724271232627759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1f892965bd8dd34d18df31d97374f78fec9a9174d1ead7385fd4dde775fe8e
Date: Thu, 03 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788400233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03854364E8A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772783694; cv=none; b=dhaODXXLnVdEakOtlmyZrsLjvxtYZ7HLOFwC6YdpS66zGjSYqGq7P9lE7DlC5MucEjOBcLJt8XB3L/52haSDsKLYoST36YDWvOl7Yj20PMuQGWiBC+fuVTYIPBK8DRTuhXxqrmtg8q/lNnysvuMY4UckUnqmJK4uVIKW/QKD2rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772783694; c=relaxed/simple;
	bh=T2H5RmWvMnRTFeDGBiZTULvx+EC1nJ3VbSoj6TSBCAM=;
	h=To:Subject:From:Message-Id:Date; b=a7aaW15gCW6gpjZspz5jxOF9GuGbI7HVwcLwxYoPFV9avJQ9oH8DQRKRakEPizlmi+85Hn2izIdhaxdFOJMu8L1aEiOC+0MD7MMC+jaRnFpmVOc2YKv9fk+KtAQP+TCbJyJgtGCO+CUcrVPAxxtLhQ1DIbr63trVefdFTa+GqvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jl5BZwQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jl5BZwQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F20FC19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772783693;
	bh=T2H5RmWvMnRTFeDGBiZTULvx+EC1nJ3VbSoj6TSBCAM=;
	h=To:Subject:From:Date:From;
	b=jl5BZwQ11Q7UL1103W82a1iwj4orL1r4R/GB7gU1SGJKIBijwRI/Nz2LDUFqkrqCS
	 azA77Puyk5lCQOxXzahFI5dfH1vT8BZWaQlz4EuUrEQnW0IAlg6Yyi3w3dPcoJOrE0
	 /uRD/VA5JJpEtWbJMVgQxYxQYSQOqSk+0j2tVFw/mEVLF1t0PzTIs+RMZch/ZIwATj
	 eiwLvzMk7sw7B/UISPFjX7/MwwJmMcYi9g2w4ecK2kIPpAFJq7L+1nKP4G/N0/lHnL
	 vcRvp/qhtYD0xH7Pj8aenHUoWINW7Y4rq9UNXrSGayEegiObNsp0GWG1nfxJ+Y2vyO
	 tzk/emPlWWdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BCF01806
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278369358.10216.18344651317667030890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86b0b6b10bd7440f4701832b453ee6a043cb64097be4f7890378b8568be38f4
Date: Fri, 06 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772783693

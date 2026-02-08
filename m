Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E49F2E5B09
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770567834; cv=none; b=rYKHg3ezy2gAn1XtfeXTQ3sLCV1jQCAGEW/i+0oxCYzPU+fGETAwiJ9LstmgWg2AWJezBbs50abKMosGJvqyR8/DdYTNX8yMjwCXDye+NZFge4kmNzrqZdbYdyplyOcCftHiA8sXl22C6wwG1p1rJDhjDb6CJ8/55/5I35txIxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770567834; c=relaxed/simple;
	bh=IX3PC5KOOnvNiv21JCTubuKLF9Ah7OmT4YTG5Nlnm6w=;
	h=To:Subject:From:Message-Id:Date; b=JUlJw0Qs3rBL/g4Z5iKCSj4ucyBfMTcsfExAj1fbrScqsVI9cIwgNgHAErXR+lWVwCirVUUsGbCcktYyAqQ/Ng0mdkfKKZsbOjmNVPHR0DL0iU/GiqQQN9dy35mRBInZqbIOmujIi9MRS/1KvmDquAkCx4kCxdZkJRpMJ9PzA8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAR1Moih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAR1Moih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FF8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770567833;
	bh=IX3PC5KOOnvNiv21JCTubuKLF9Ah7OmT4YTG5Nlnm6w=;
	h=To:Subject:From:Date:From;
	b=RAR1Moihlhk/6Dp2wWdFF6XJRB1HRXmxWF2w/gsi9sT4Vc+tEUrI2PuUwQ+yvxMUf
	 ZkkECuQk9wvgo11vvwAhextr6OVyZTtTwmu6FwcWlJdPY1yvpd5q0oz2Rv8icWheaX
	 6Tr4Z14GTart6O1/vdtJULsbnvFTjtqomWiB5J/x3m6uggIKzB+SPYByjERal9m+6n
	 hpBDs+jpQfCvqFFvq1LLMR+80zO6TiQ+9Ljbfmfs7b6jNwDwW+OZ/D1CjL/HiJ63B5
	 FEyyUlyFGZYJU1+JE1ASCA66dSiQvYzgT2S6uoG9rODPVM7E8mjDYp0pRGvhGYZzSL
	 Sbu6NJZgPeofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1326EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056783362.29577.16173831133427403242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cab50ae07cfb1d6edaafae73da816c9ea0685c1c09a8c98348ee3c943af56c1
Date: Sun, 08 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770567833

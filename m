Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B61A2107
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725528954; cv=none; b=O0/vH+cbqJ2hnpnFDRgipIC+6MgZVWj6EVxGCWsUaL1wceIlOLnf5LWERK31SzubdKTDa79EOCGVO5JnRvGrSiiM2LQ4JUPIKdLQ9zQQh409Qhbsh6NcM71XfTHScEfb5L96tXaOQiqBkjLWFlz3yHmdfEMTlwufMJwyMj4cdiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725528954; c=relaxed/simple;
	bh=wiUpwRjx9+BuWldUECJny69eJNlF0CODVag7b2bpwgE=;
	h=To:Subject:From:Message-Id:Date; b=tQ3qbP5H5mY9vZRiJVlyoa6kB81S1jwg1Gic128kqxWjk+Ob9BUu9q5b38io50egBh4fFR2VluUmK7/vDghFRdP/gO76Y5ie1YzdM0L63/hlLMgyegwe2kd6U7jDxB65QqyfoyKmBSYBvCaGQusODutNRr7oK6JQCVCNzikQ2kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZzMUFbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZzMUFbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2B3C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725528953;
	bh=wiUpwRjx9+BuWldUECJny69eJNlF0CODVag7b2bpwgE=;
	h=To:Subject:From:Date:From;
	b=sZzMUFbQBQWYqWwXYN8HyIADwI456E0O3OQEzJj2+hFX7oiZTP9L/BjgRmivFGbY1
	 BL2/+2k40AtxSzXBeWg5p+XdRT38BctHM0hqdSSRCNBsv+VEil7bk2tRQegKwtNHBw
	 pE67kWsYbmNPkrXjvCtr12MEWwQVt5ECEgesGm5df2RohQVSLXktlujdVMwQKmMMZA
	 tdWUE5l8kLLOfbqinD8Pnqig3g4wI2MpmcXRegtsworTrDP6ZcZHmrGG2zGscj3oOi
	 WOL7MPArrjFLIcoaCX6dMnr4y27OObjsS1wRwEFraEkkdKIo4kYJXHMfrCw+YRAk+t
	 RC9K+RQ0Jl9jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22FBCD5BA2
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172552895365.30730.18041945204678840540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6efec8c44c90309d578ffa71cb3393664ee620ab3645d4e6f3e8b86514adb51
Date: Thu, 05 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725528953

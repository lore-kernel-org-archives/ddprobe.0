Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001BF22ACEB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769393634; cv=none; b=lKMuKKXyDNBUTANlnda1cQH66EU63Q9S6o27g3SB/HqoxS65k8899fDu1aKBAYcrCmKAW9uaPWPWasqbXYotlt9oLzQtJbiUD6uCtAOndhlbulTlTuN0cJqBUDPBEmBMLjSWAfjpqxtiB6tFmJb2rRjCUVznO0tg92LIIj/lAgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769393634; c=relaxed/simple;
	bh=r1QusTV5qRiZT9WQlgKfvEk6mHR7jpYPkm/RS/ofL4c=;
	h=To:Subject:From:Message-Id:Date; b=alZP+ZVnGln34ojdWFUIJ+lk95ZoxTk2GKLyWY8vtsw5dIXk/SbnrMz9xdj8Xpi6XC97VkxzcvwCdtpqnP2qDGO8J7pVR0xu7p2VHohkDG6JhpocuZgVk1PUILoKj6YKvBAW/MduTHjX1+eCGTQZjdtGX/d/11fpJoyyF64uzWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYD45dQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYD45dQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769393633;
	bh=r1QusTV5qRiZT9WQlgKfvEk6mHR7jpYPkm/RS/ofL4c=;
	h=To:Subject:From:Date:From;
	b=TYD45dQHCI0EANu6za/1EV4I2oUtnv3wUTWsCTjxNqSWavIX1LQjGB1jLG6Pt9LOw
	 +qFTNbO7nPUh/p8ayhAQucxfF6NmS1kDWYUK6NfVfro9zVR8wemZ8grlvx7Ik4ZZov
	 cOWgvk8iS4Di/IJd5EuG4h759UF6kXGpnvKL1xb6ze6nkQ8afjdSF1pTx0dtJfEGjw
	 F+sIAJc+ssa7fcpdpYp9aXvKdGtSrJw50ZXTxPtINCNNaWJADFH0LLEbuFWI80rqSX
	 lbU3FyM3rEC/Wy7dvtu8ISLRH5TbEEcBvF4ttY8Lfb2k7bFhNndEWub0AindiSs4S/
	 hdhuERJucgNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD48C88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939363358.16995.17035670262602011922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a0bd0f11a1db73bb7221ea4039cad11c9bb1528b34f8c98b6df3f74b0eef82
Date: Mon, 26 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769393633

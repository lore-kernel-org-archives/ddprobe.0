Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356B91DE2A4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745216394; cv=none; b=e/6pjuZ4jeO0PXyMYKlQxEVW+eRYvMgZ0wf1wST64sH4SXVPtNzDY/4KycpUfTXaC4XFSaIJQC/cDMwVVfm5r5K5BKX6dN7bKUCvjbApK2fvAIlS1IW1IaDSZmJcn7f1+wk19BTaXJaDCq3EZ7Cy2sRfLsNQO3mMtHPH7hW9l9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745216394; c=relaxed/simple;
	bh=ckpkEm3C0P5KNvbmC2Cu3/DFhvHaunzAs7L0E211muc=;
	h=To:Subject:From:Message-Id:Date; b=C0ez8CvP6uLaBwdXUCk6n0IVx9oUF2DciXE5TIs4EWIXakaCk8eT2Es92UmVbZYd0aABPIus9m9Vfn0eyy3JKrOwXvbnxS+zwkddVMQitZmJtzzLaoJYU7nGY7LsXigoUHpmk0L1wNP50l8d9ZTS9hiRwg5ZOr4xiwImNHLle40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jqi6VhwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jqi6VhwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BBDC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745216393;
	bh=ckpkEm3C0P5KNvbmC2Cu3/DFhvHaunzAs7L0E211muc=;
	h=To:Subject:From:Date:From;
	b=Jqi6VhwGl1SkdH9M/YNu+G4VbaOU6J3PfnVZsCIBJcOolccGOhakSjYkIhCnxPSl0
	 RKOcObbFKA8MCPF+ocmM1hV735nGrTMQ1yZBXoSYaQupaqPdj1t79jb7RBKBpMp8Vn
	 iMiqi/2648Y+tMWgPN5QZ2YV6jZQG1IVLnx3n3hrQ2/xByXNesSeuPdCa3WVXZWAYs
	 nDTGClJs3tAuTQjjAgYi25wfUn5GK+IkkhEwQMMLjnnLVRd4MXVQawBd6m8oR9F3ma
	 WTm8lDg0ZbVnbsWK1COiz1UoOW5t2OJaYWbAacLET/s1t1xoMWr5CW3PtL3Vg3AWMp
	 u+rROk2QgiXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224AC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521639358.1730.17043457700035387142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68a72d4654053076321ba62c7312cd5e3da8c0b7bba887ec5f8d4d8a651cb1d
Date: Mon, 21 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745216393

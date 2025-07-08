Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6E82BF002
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751974194; cv=none; b=n8qKPWZ980go05zGrykLIeF2ZQzEZRNYWI+/UQZDvPRe+KZ6dreut3qkzWe5E9TQT0qNPqImjZkmL3elijic5vLehpkZ/vqYe9EjpW+qft5ZPfOx9gdindFUDNWBdNWvn4svTEVt987GM/LHpijwhQdtMd7QRv6ly/aGMkUtM40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751974194; c=relaxed/simple;
	bh=nHe/7k/71rdH+jg+Wu0mJ701+LX0d/cWjySwPbuBj34=;
	h=To:Subject:From:Message-Id:Date; b=XW33lWFwLjliy/1ahFHit5dYCPr763XUnxk+WDoLPvD42rSbCHaXQY3NWjT75AoBTVdOtKk7yz1qRfdUzr/LobwPW2vviwBrgg2oafJUlPlBTmAHSV4lpYkO5XcBktXeqMFlzGri9rnh6rM6ZN6kc25UApMIPeQgbqKyopCUod0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2ctZ8lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2ctZ8lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751974193;
	bh=nHe/7k/71rdH+jg+Wu0mJ701+LX0d/cWjySwPbuBj34=;
	h=To:Subject:From:Date:From;
	b=C2ctZ8lgmCBCzcl03ysmDBcWbqDI/lSArPUMCIx5wdJ+O9BEagM0LJfrI++T/O8gR
	 JMTSBoMePHlcxDJbzNET6G8+nAywdLECP89+h0EEHh7G4N2r7L8hG/A6VMrGCntUQl
	 mgJloDh+GLtCnY+oicIRNkm/OEPzPb8zxfdbaER3JZDDEV2WenDg69bC45E6o9OGKC
	 0d12089nTxMJGr28RB184pVafNPKPtVORhI6vviq07Gqv4+7bWwKKAvQ8bAmD2v9HF
	 QWsG2dFgs2AtMI3l8yedOPT9RQCVB+0gSevOyWu/U9dpyFTCrBzZ7AnVkEKvCw4uOd
	 gQjTQxnIc0B8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F501C83F0A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197419357.8893.16726606361142102907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba5c1ef1417d9d0f34dab7025ec0aeaed1947b06731f597ef4661eb00e903f1
Date: Tue, 08 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751974193

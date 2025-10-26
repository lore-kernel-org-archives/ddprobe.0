Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D06721576E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761453594; cv=none; b=PsQJolx76e3goWxMwQeU6oznlujyK5ZbQwPiWsbpZBwWcwG7KzLabgMBE9ZtMfs+zpoOmer7hvFW20R2uwRAIKfJ/CjowXmqxCiHCmlBVd4mKm7R7MYkZVCnubVbsRzNymMsyIrnjGaVNZH3v/5UiOnqqi+GptOlQpwbAfFzVsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761453594; c=relaxed/simple;
	bh=vB1kAFEn9/b87+DM6wQnHbtAvTqEqV9L2HHbTLHiXQo=;
	h=To:Subject:From:Message-Id:Date; b=sFE0ejIC4BdQA8AoDfelal9c/AcoOp3YwPMCsg8rMpoMJL+AjK90XiM5jFhn0wOQL3fVUae1t6/D4AbAYJVqiWt2y2ShRkKrZTXWKGUXW52/4ylICI85GGSuCUeXHI0zzxHLqIVGh303TTJezpO2ZAlK6nbiiM+1p8WGgLNEEgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgDR2ey9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgDR2ey9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761453593;
	bh=vB1kAFEn9/b87+DM6wQnHbtAvTqEqV9L2HHbTLHiXQo=;
	h=To:Subject:From:Date:From;
	b=BgDR2ey9VfBFB6O01WFT1qdQap3hTkNoDGCKb72OSqMsUkRzgSUNvARk/yunlsMNW
	 kqf8kdZ4xJv7NQ488Xf8ZSjM1NTVWGD1rnv5kEmOQpnrBib+q2trw4KwKBN0rBvU5S
	 +SG3ebnXOel54spuBVuOtcpcT23FjSogO5dID3akCoxWDVlVIGZVey8FXFBB2ox6CI
	 k/62ncAjBZA5F3OwQ/dcYMkYnFvNAPPU7dUZWQggVNxfB8tAODc3ftsbxRYWJFIFaU
	 SRPLCcwyFTZYyxTNgowbzarteeXVrAmyOd6FhuTZBLJv32nSLzVwBgIVNZ9Pg127/7
	 7IuaEdk6D2a7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CCCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145359359.27256.5139335816647789666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631bffc5fbdf8bfa10cdb01d96360fd4be82f43739c3a42d62d81ea9b68c50b6
Date: Sun, 26 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761453593

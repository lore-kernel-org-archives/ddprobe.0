Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F52041F7EA
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786488034; cv=none; b=sWOan9KMkySgnbB6+2DGPuE9as3V0xyb6kR98Rg0Ml0nNxLyKghijEOabSJN1p37Gz5z46aj4h8bJT92guPdHldYt7GgMavoW6BkGv/+Gzy0UZdPtBy6AkrLX8S/LW++fpIhsQDQBW+2GJU7DvZat3nFdmcK8beHvqxwauvl+8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786488034; c=relaxed/simple;
	bh=rq57dHmAxJ3WsDa9hsfa9ipYIJoW6SIPukF0DTBk0eU=;
	h=To:Subject:From:Message-Id:Date; b=Ucfw1SWRQMzy8/tHAT3D0o0opvnaLZr0NoMqxb3hJVY4StKKwYJA5O6ik5NAfcj/hBbbf8Q5vvyf7fGccShSUriQUT+pGAvIbmATw/YTeZrjybLYJlX+1uCXPX8GTg5c9yNTOBKoerOFyyqYFKe+Nx2DbKRz9yfe81g2IJjDd8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLBuL0Me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLBuL0Me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AD6C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786488033;
	bh=rq57dHmAxJ3WsDa9hsfa9ipYIJoW6SIPukF0DTBk0eU=;
	h=To:Subject:From:Date:From;
	b=aLBuL0MeVEUAwpVb5AO/6C1PwzgYkdvOREH9Wd0OqOEaE37W7RLR27DW2p3EmX+G9
	 vkcD735447QMCHh7MyfcIXs327x1lVHaxhUuG+z3ZP2Bmy9IqyBmde8e9meLauwayX
	 VwjdP8c6xZQGBfERww7Wmzd9FuKy2tHrEwu5PftyddtgjQuhyvMHcLoFpp3HKFub0O
	 ptdb/ZTUMqH0gNi/wB1KNmHaQJBmWWxRG8fLSLkwF41/mE+lOnRZvGDLQt4htofG5G
	 CssFU2ou7OIYcE++IJzLuBbo2jftUOeLyc6G9wZnxrLoYSMoeJzBoy2pEOdA8GpSs7
	 hEm9u5jgwVlDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE2FC5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648803368.23276.14129813751155459168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e72be05d46fbcf52450de4d01f899104b92f681b98529261e8c33eb94b9b61
Date: Tue, 11 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786488033

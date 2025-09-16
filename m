Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1834921C179
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758028794; cv=none; b=erNTolmkYQ0M+siju6JVCUs9JBpYpzg4dtsWmkaZ8VPjRd+zKnyMBuVxs+sb1ERGcevRprVkDm2eSgtPszXrJzMLi7x/bed0e/nG952X2jSh5JLRVjrO/GLY3RBUd7eqS6sxUjTIPL3cmv1WBexKBQCN8eDLFPrR5Qlw913yIBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758028794; c=relaxed/simple;
	bh=UuYn8OTk5foUQssk+aba0oMOEq2L0w0TIAvGCUDmfdQ=;
	h=To:Subject:From:Message-Id:Date; b=ib4XbL+MXE/3L5OFqegmojTmOKJ7QwxjOWJYKbKQYtKOQ/p8jH7wU8Q/+V+kELi6wSsFhQl7FjL78IWJTFW3HtQP9Qf1GxEMxvJMe1PntSiyCH7xUnfAkxWA6ou1MDbjV1cFYZab8Ra9WvDIZtcujdNq3cghBwW2PiFqufUTnUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfJR6pxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfJR6pxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE3C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758028793;
	bh=UuYn8OTk5foUQssk+aba0oMOEq2L0w0TIAvGCUDmfdQ=;
	h=To:Subject:From:Date:From;
	b=GfJR6pxn1DFGI2ssxDrQLOWEPkd7uPrmIIEwM/uqgDI475sIDNECAOlVjzEQ2PX5W
	 tMqgCk8XIYFdgMYrIt+Y50ldtXYMx8cLfVWPNgczvbZtN/ry4cAljFF1SwAkz3nhmN
	 kLkH4SdoognH1odVfM5zR5KkZtLlZoVdTL3Sifqum7SXwKR0Ye7mS/YZNbJUdNhael
	 9q8iZbLab6GzcxWW2B975E1eDpdomOT5F60pcDaoNctrU7FLxwBtkgfyx3LQRzIQgj
	 5khjvdoiUvWEBobG8N8OLIebwZqIfrfOXcOhEtIbt7ZSx0imgtMM8ojUbptgsSrjfy
	 ebZWIgXQEHJXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CFCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802879358.32095.10385620890255235363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2d22812d0219c2bfe6f9391f0c1a94e848a9c75919c50798b25b0692f807d4
Date: Tue, 16 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758028793

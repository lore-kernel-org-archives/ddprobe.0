Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208AD54F81
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754417994; cv=none; b=UjTjtTb/WcNvVNhK8+WhU+NpfM5y2gYvVxy3CD6Gkgwa4APemJCkygJ3pTMwdEGVDX0VhYpucnNL/d1RTnozVtdK/gQ6QHSjjaYt3EupeAVQi/rtq30Bcrz5TurtBisoSOk7ZvbuoMzMHcl36Wr089tjldibcLeOy3V2njZtnMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754417994; c=relaxed/simple;
	bh=kI4jy9tcMGFaBzpOUP2jOnAxx4ncfrgAYBTCqMFUTjM=;
	h=To:Subject:From:Message-Id:Date; b=OiN/KmvJ5e/3YcgStwDQd4gLWfGLk6BSm/zQl+07/jDpYx6wc7Xax0rirpWJvjLKGf6uVqTCkNtTtHcVfonHY+MxEb/SDnFw0XCc5fqsgR8unX96k25qhaQIsIKDfaSEkqfhrDfE2HM5SJ6DfrZraHMk0uGWgFWn/05LEUYkNDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkVjZmzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkVjZmzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A0EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754417993;
	bh=kI4jy9tcMGFaBzpOUP2jOnAxx4ncfrgAYBTCqMFUTjM=;
	h=To:Subject:From:Date:From;
	b=FkVjZmzXdTGInjcGtF5USGAB+BwiO+MJPCMl1Mqc8F9MurHYj3LM9HSN2it3Z/uEK
	 jpooS4mc4iVhGWPBTtTjEkdhsqHhg1K3m+poBwgSATaf1YFjrmTpIfl/kjQC7nzAmq
	 ToqEZSOgWvPYJIDDZ4B4dBdeQonOGrI9YPfoX+vfZMswwRmLiOX9XmBcBkOMYBKPJw
	 ud6lzjZVAQeKql1bVKmAAHPAfscYSdTMaCtu0O4EINuWw8X5u0Y2PRUWUIH5YtXN4J
	 J3abIGPqZLPeiKhQah2qrjPs2e1ogzGg/S95An9WT8ZkB6ttIuWQuSx2TjPYbFUpWx
	 iIhInZvzVlfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DEC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441799358.20705.4483275992241035180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78875cce21dac8b904891ba065e8974bbd31e7dea957c6fe6114247e14b8ac29
Date: Tue, 05 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754417993

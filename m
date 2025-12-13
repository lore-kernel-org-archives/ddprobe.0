Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BC16BFCE
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765643574; cv=none; b=cueorjoQHFx8XEjSpjqO4hYvYgUXI2pqToUF96razclHpP3zL5sDF0PkA/1X6oHPUX4yyeJ+GWxxm9fDwpXDgvdEftpfpNcJJuz7z9xZw5SBymkyz0LqUdI41bnAwqMjGFNdWe+Xdmy3kpb6DnXTO5MIL0fSokmoOMqm+Hq0Yqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765643574; c=relaxed/simple;
	bh=0OWD9fjg7pmoI8miqCBodqQbvqI0tOV1EyheWrnqcNE=;
	h=To:Subject:From:Message-Id:Date; b=mFknwU/yvZ19WsT34/6Uc3fyg8mTEQcArXqjQyLAfnghYb26y3R2RR7zvaOlxXnS0UsKfcwdqnQTB50TnDcKTRVo7jQXcOhox8fWdUVTpJRPMKMrOTGlUXShtv5ppiDByORr3UnKXAP53Rq4u/4TFpmDlQYKLaC2Fn1fNikfQMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+fYB58n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+fYB58n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30CCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765643573;
	bh=0OWD9fjg7pmoI8miqCBodqQbvqI0tOV1EyheWrnqcNE=;
	h=To:Subject:From:Date:From;
	b=g+fYB58nB05ZKpDMESVCnyHuLXImaRdk/KckZX82mNu8PWUdvChnW1qEJGAnOyMf7
	 QlpG5qxrJ+oef9P6gFvCsKrO71zYuJKzD6c1ppXFvmQXwfCTULT9Zr3JLZGERo1BSr
	 Dx4yrYSlQBo7ICnnx0O1xFhZCLBJ4FzG6NXQdmDqQuitFszWvGYs4VbtWtmH0dTI/K
	 YlO3wM4Qy9rHXcHhGC730URkmoiE9gnO+0tZj45YMgEJLn/Mb6bOvKSiMa1SX6amHp
	 Kmc8vUIjgmXA1J9u95q4CddEKzvkq+IOp0IyARtSWokZCWR9ssTNkSSZJQgJszCGiV
	 UE1NKA65j1UVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EAD59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564357358.2348.6308539320768727810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f4dd26dbea22b1c0a902768bea94096c5c6ca571f68e53adb6f67fbc7ea3d5
Date: Sat, 13 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765643573

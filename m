Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2B021B918
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744243195; cv=none; b=RCHh+WrpRRpTI4Rqdp+VjCDOlKw+QyOQfIfdLSG0REB3lV8Zl0Bz92+1xNyBfJFbFIobAfoYjKj20CJEEaAGuEanZ8Yf4fR+D2zjHDBfiMX5crGPfBb9QelwDHHP61AWuv58OCEoz/CgADEKceDtKJGlfr4ZopTkD7vATNyMWq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744243195; c=relaxed/simple;
	bh=jl1jZwRRGLrn4RssBlZBnW6S/c0X21ogVAYtZ1Ho4Qw=;
	h=To:Subject:From:Message-Id:Date; b=t+yFr6i6FPAbwN2CUblj3wctZUFze4hR0DpqKQ+ySvg5FrpDWvb/rI5iNUWwvbIrM8k2K7vl2B29Gl1HfYBsjiCWviIslzW3FMQrMMNasNHtH7tY8XUiqeDB078Z8EDJY2AyejLhUuo11W56WFnb4ouEgbX4Av0kXnLrmDWIoUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxGKsekD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxGKsekD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83EEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744243193;
	bh=jl1jZwRRGLrn4RssBlZBnW6S/c0X21ogVAYtZ1Ho4Qw=;
	h=To:Subject:From:Date:From;
	b=OxGKsekDAXacXHZY8C3AuWSVYGw1bvPpS7YPV6cWdXyCjQfElGB18o921nPjmVA6N
	 8NAkF8ctIx9FgPgtkYCe9fdHiiaURg5Y+9taTXPX/Z0lvLuQJ3OkdDs3bHf6wKQ9Xc
	 enHUF8hQaGA4mqeSe7DDt+BeENhpk+HrfMVZ5PrF+K9fIaCk3NMVWwjZMSyB1LXx+R
	 dnFwv5f2PMWo/IAU4Int5528a9M81+6myhDdWlWmrvPl68PMKpDAkWLdrYbAyj9hK+
	 tyfqhpJzJoluoUtUzcCSZMypYy1J3zalw/Eo3i8IOGnv4BFmh4fSLMKiDMbwCPke3o
	 3xoe/itWmFWDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952ACC369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424319357.1409.1193538820744948120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101c551596bd941e9e004fb2dffff5108d54a8d3da7f8406dba298adac059d91
Date: Wed, 09 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744243193

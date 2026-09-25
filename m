Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE5A36A01A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790374834; cv=none; b=irIMZ8GqdEH/Iv8XvxV36vQuz6cukIu2uVKmGkizGZE80pq1vtmMmauYXmDMLdeA6d0/D5lh6S0wLO4WR1l0pFcxrEwNLTM1cSppQG+PBclyBjU2K8nbMSzQVn6rzm9PDGOFMApyO+xLoYa11aJmoASSK4d/ssvAilVIydc7lv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790374834; c=relaxed/simple;
	bh=ky+9gNBZBOf4hLowEQ3MaczMAQWU0CZz4OQS2K6r9xo=;
	h=To:Subject:From:Message-Id:Date; b=OxWGYdw05Q6Ws5aGc1XOiGL2W6Rsmp/z5JbW5L1IbureMBqjlBifuvDA3VQkfq/P1SsKApt+ZF2BFef1M9OmnXfh96c1j+Nw5WVJnHAwE4EGmZYHiY3DKwFyhHlEiWSe1VWs6jpZqlrt9NY2jACnCqwQtHfTaLfPkAnd4WYqqZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEHk4VZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEHk4VZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1A7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790374833;
	bh=ky+9gNBZBOf4hLowEQ3MaczMAQWU0CZz4OQS2K6r9xo=;
	h=To:Subject:From:Date:From;
	b=FEHk4VZyIxXGCtJC7hlRM3E0FdONY5Ff0PZxSHtA2uv519yna1sSyU1pYQicN66H+
	 AJQQ/CNuoT4OYvieuEiix5LPEKcsbvEGutVa7p8ETeG+gGIAs5qs7abxMxRF2Yn8M9
	 LEbBshuvqgdgwtUeuMSSD42PF9+n0Mmz9CHFW+ZoFtqnRdvxgZ24r4oXat2zzB+ULJ
	 7w1rjVC0e7IepuT3q5RkR289zyHfsFdEwLZAvc8CJheZplv4DIkdl0J90ur648dPRq
	 N7B+44zdsBFpe5ydzhnC9puqoc3BWleMW88rWbxOafnnEPeQlqV4NZGBktLDhPv1Nj
	 bPThq96gRiuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B1C9832A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037483368.5593.11878823967753353408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e205e56f2f4a2f31fe2463ddd3fcbec2847d8aff7559b24f334f79f3657c0a
Date: Fri, 25 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790374833

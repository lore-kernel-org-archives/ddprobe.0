Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563F475801
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785595234; cv=none; b=SpK6CdEUnVAjFhKVQOihUzwUhtpbYOkzBJUp1rK9Nvsn/g4iMV2jfMAqUBiR6+fFd42cxGzWIdzOR7Y3GVejWLH2x9CqKgNgd233iQH/XBB/wQfKeiCriPq1Lr37K6KFaWm9pkoZIyv1e/2DMU5s6GEOm5kjdknwfyjKQ9wDmd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785595234; c=relaxed/simple;
	bh=8Yn+X/WYpvaMq82yYht47m7sNcNCVZ4mhvvLHbvG+ZU=;
	h=To:Subject:From:Message-Id:Date; b=CgSdgLR+KQWwvkfg8OAlAAVBz0FDpzNsjQja2FwWQVLzN5lQHa26vEQEqNXQJaZYgxTdJ7YcTyTO9rR1VliXGiWUjxUZVikSi4BgUV1WH+BELh9pttt0a+rH5a5YcjqPcPge5+Hf7lOAZh4BLj3OaFLEYUy9QUnTNboFpy3QWAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D86LwPO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D86LwPO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD669C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785595233;
	bh=8Yn+X/WYpvaMq82yYht47m7sNcNCVZ4mhvvLHbvG+ZU=;
	h=To:Subject:From:Date:From;
	b=D86LwPO+1vUgQ4mVM+EVjA/hM2S816mCG7/qkl8oVG942vYMjB4L6+wshGlpzVFzN
	 JJFeY2pjFqOOP5Kvl44Mg0wK6eUNQ9QGXlXd3mAT6ADWLiDc0ZceaSUz6tEGwtRJse
	 7FKwrpFCOZ2QdDv7Yl7SkfxSQbQQ6P2gCmjnKALauABHdVz4T52209ycgORJuW65dK
	 YU6aX7TRAV53FLRhPrF6FJO0rPy8URS9B15Sil1CXIpVizW6ZWIqU1OCQ0QYhUEX0D
	 PQda9R3V6ummtfVtkv5/P0/JtlsB2Fxs5wuO1tz/ApRH5NoXEiTM7tWoVzfmU2DzWq
	 5aIZWLp/GIXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB44AC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559523373.25785.14957303242658196111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410746b66678b49eaae4ee10522fc0418e0fbbfba32508ebe9c806b7aa5535dd
Date: Sat, 01 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785595233

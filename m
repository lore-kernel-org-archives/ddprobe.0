Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C495B4D7944
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790605834; cv=none; b=Mwwl8Z9Qv0+cY4oZLIYtcbH3K1iRmEJz+dhLebFnMEOOZLj36hz9jlnVD+Rg9YOuvXNvaX4eXvPaBy0ymp2AoaB6cEkr6X+BP+73bHXHucS1Xe7IcZKeOhJd+jEGRTofg3CTDWPY6PjczGmPM9ZQO0/7wHSB6uB6Q41gF7UHkXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790605834; c=relaxed/simple;
	bh=XDbLtNjdsOGxdpiLsqtz5kbvzQ1lQZ8oj3S5p4NVwLo=;
	h=To:Subject:From:Message-Id:Date; b=cZQfv0GwlzZIisuoG3olaxf9fvrAi3Ht04dSU98c1MTq/gLM2ruAZO/Fd6g2c65fOyImIuR6EZcCz6CFDuua25GNPyYOuAVmouBuHIEskXfG/Eneq999TvpJfAzbvSdEtV2J8RpsQ/ZsoeXwa2OtXXazbG2l4I9DpZUyi9v/yKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeBHgJ0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeBHgJ0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2E3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790605833;
	bh=XDbLtNjdsOGxdpiLsqtz5kbvzQ1lQZ8oj3S5p4NVwLo=;
	h=To:Subject:From:Date:From;
	b=XeBHgJ0P+LtY9hQxn56hW7WIdkbdsdeR/xmvSfT6P0/oIES7vJZrrQKlTekjJsBQB
	 jzui5ExQsk3WU267SnozVPc/f59QAs9FMp5fOy0wU4pTtbu/r4bfAO0dmKlmiSFG5B
	 X9JOjKUBZO8mDIuy0x6I+8IWP7AXKSN9lH2kedzPC8vALiN+IHeHqTrcMOa0jZl2YU
	 AONQGo6qW/NIesKs1tnkJPl1eTv+oI5cQM7VoZy3Xi/ASPSLdeXGwVKztmdfSoaY6J
	 Y1b7l0Q16Hn9VkuNfSYBPQRQOfFx+sGSJcm2kZ6A7uuMJUgdIXdFB/XzNAhlnm+8rI
	 cYxzAo7kRbCmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F54CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060583368.26858.9948439804139854268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8d8f4a1d98aa46b9936f8dff1e600d032d917581169f8696770c620ceed602
Date: Mon, 28 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790605833

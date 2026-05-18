Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D804B3F7A8E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779107433; cv=none; b=hYlCgtPvH6w2UeG0D1UpC21tZEXt4D2PkuUQ+0whXLO83/oZQxV4Mo9upmF+wKhIE3tkUdSudIOl8RVzXbsfIUn4tgGAC8iC+ao7/xHoUzbvWvUG/ZVK5gGZFQpiptpZkhp/KKn8zXQScx8cXoIpNXmy9y53YAt2XOrQnM3CUG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779107433; c=relaxed/simple;
	bh=iPd2nd3vLgduJQBAEqtRniUO46YXwkS0XK0W+aCHw6k=;
	h=To:Subject:From:Message-Id:Date; b=exoKmn1E53EiBoNyLEcFtMv11DFxKm82L3ZBe9welfwYyZ4XIlVK4ZADkLoxrqOiXvdY9i6xlPATyEZ9fpWy9zZSQ7NDkKrD1BPBMAG+WRtqNBJI0mRtdmqUk2evIxNuN7C12Ut3TyXY/A8QKAJC1AyKqI9HhWdHGeAW5hGZzF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/d9KiK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/d9KiK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC01C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779107433;
	bh=iPd2nd3vLgduJQBAEqtRniUO46YXwkS0XK0W+aCHw6k=;
	h=To:Subject:From:Date:From;
	b=l/d9KiK0FkxZvpr6spwRwdtE+LLw3HBktT+BRrgpJ79AEUQehDQam//1JMyNg7g2H
	 nTyip6LLfAyfjdzIzGUu127EFS/uGrGqx9hBKkO+WG4LG9OyXHVE9xkcGoOyLPRwBK
	 j7qBtFNNDD6C0wIAoqWmlw6pP8jqiBPb65dmoC+wRoEAQFt2t1m589CqsO6Fy1uj0t
	 191OBjyRbsszzjqHUlc/8+rOc0AWjdyLkbmhdCNqhVVqa4XDJLipSdNm6OP7GsLxy9
	 97VpB0oVcKFJZIDzk7zR4SH+ej1y0eoJNjkZOhMkkRX1xYVP7SmbWGGuQE0yvCvDno
	 syWC77LH/sZow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C2CD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910743368.4116.6449006607760468270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99460567152ede29ef0a784c7e1b99ca84cfeeef4e2afa6a307fb2b4da9bff3
Date: Mon, 18 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779107433

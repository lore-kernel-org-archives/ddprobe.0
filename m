Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6396D23D283
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786342234; cv=none; b=KzgUFTYu4x5JWu/E0lGUBmwv3dXb+LjbLYGJJISPbe1qhxeMLwHYy9LKzy0h6siMxF3u1OnOlZcHYCdbmpjgipk7OhiuPZbDZmjSJkGBWYLdwu1Unl2hH641nq0lHduJ9ZxwZi/gdHy0cVfJVh4ZoMnvNT7GB1HCQ6Rc8YOKoKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786342234; c=relaxed/simple;
	bh=fRmjEr27Z+E9BqFMC/IOdZmPXuGUdldgJxnfJqFH85E=;
	h=To:Subject:From:Message-Id:Date; b=kAwC+wE/rAhQzqyQ2I6ItG89rfESpmSZg5lm1inqTGQzBAwqpRkz1yHkzKF448OlfbI4NOGFiin778VcR9Nou3lfoiKkylRhAuGvKEm3TonQYPnG5Zx9j7gg0irpi4cMvO8YQWKQQhlgjubmhcCJuK3SHTAl6UwCwdB2kbi7Hfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmIBnX2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmIBnX2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CCDC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786342233;
	bh=fRmjEr27Z+E9BqFMC/IOdZmPXuGUdldgJxnfJqFH85E=;
	h=To:Subject:From:Date:From;
	b=dmIBnX2j8KNy3K7+aInutgOEtP97dmLVdkU/zxjyc0TH4ntFJBtYnPulZ8Hqm83eo
	 /Bsgc0NhnW3cQsjV/hELqgUh+JC9urt9rK2qZhMBy6dr3pPD6TexLNBwXHqRDaY4eJ
	 KN9x4021SH2AYGh8DRFZNMeLT1dScPNW+K8mpfo4rqFgTXh+vhTDofKl1tVkN8qjh4
	 eEWsiaSoQjgC0IYPAfBLNmsixI0/Z2hd39ckseR+zfxXyUEKigiqHJHt7QSTtKjs0Z
	 GAj3WnJMEYMZzYL0YjDmWQXBDkaf/40Ee14eJ4JCcG7MnscWKclv6jJuXfEHJeRirR
	 XzEQr1DuCHzmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08ADC5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634223368.24178.7872578555032999044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ecb21b76f17d3fe4993ea98a0f364257211f851d097a2d81f2fd21c96976d24
Date: Mon, 10 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786342233

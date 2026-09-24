Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F19F3CF032
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790221234; cv=none; b=fsWkeZVX+qZ4vtE42OK5+4kQE8ckuDVP5IKWhs6hXVBOJQq2RReJz4WicPrQnBGtvYOpeJbznohoodc4bSCj6yQiG1zggLWoxJJIFcsauBiXK0UBic1Xpn1qaCs5bhIGlWCERyZL92UzEFozPv7A5zEqUevBFnYUDTAmqN0SgLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790221234; c=relaxed/simple;
	bh=P7OifeV6b82QaiJ8jhXB+IqbZJAfVoZ+W+ZN/l6HToc=;
	h=To:Subject:From:Message-Id:Date; b=Ax/DqgbEmqYcD1AWL4RmH0cKtb1EJc+GO1tMOdM00pBTYRULCv8eRSdAnp3ael15cT03YbPzJRB4G0rOVWYEMADZSsONZW0gIOqS5sK42lzhgksdGuGquYVS8vXqZeH05sHKIC2ezGlDJLTViLVFri5iyF4F/3BG6CweiZxMjC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fN6Q3uJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fN6Q3uJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790221233;
	bh=P7OifeV6b82QaiJ8jhXB+IqbZJAfVoZ+W+ZN/l6HToc=;
	h=To:Subject:From:Date:From;
	b=fN6Q3uJatdPxFvQmJSG394pciRE+/C7J6ni3DSuuzxWV3hhu7QIksQ0pOghOBru00
	 eTyxa16T3hn61MbtV3c9lTqEl0nEGPf9wIAz8NSA04LILh1JLcDkOcHd6J2T8Dkel3
	 RYuFlV3p3H6dQMCg7eh3JA7LsSAzHPCwMTgEdnIIe87EmWUKYB9AVs9zSYLOk66dgo
	 AMFYKz0NdVgpTjEEcTJ1qOTD1wIH4qct4xR8mz6+Xq/AdIskFoEw8ONhgGBiHhYORg
	 QdrA5rKrxbwYbw3XNTE1qEXYKeX+tUYs+BrHL7P05nlwdwRMyvDJjK9rZE+6g9UWfj
	 No0Q/qIqFyu7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE50BC9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022123370.28376.11019628883394090556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b586aec5773c2283e008ff87f8313ac32b175ac055eee13432dfc4dfd173c0f1
Date: Thu, 24 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790221233

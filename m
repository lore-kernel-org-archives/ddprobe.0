Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D521C2A1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713890423; cv=none; b=P1GiEiOpRAW4TOsFEG3aOTkQZm0e37D8Mt8YNl4H1D/noX+eEWaRdle8E6IubjNjg0hacp25qJpDFUlUjEg7sZ7PEFWdGhZMxmdrWFdp9wb+dZ9O9FPRfZGChueJCLvomndPfB6zABW1eU0wh6bS9Ocqoc77eU2Kx1RyFv1f9F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713890423; c=relaxed/simple;
	bh=tfVk6fD/AN8oBhFdVfwA+d4ZRxz4EW3tLyv4HVmGLzA=;
	h=To:Subject:From:Message-Id:Date; b=Y8VbJQlqgsdzYoXYzSsV+AyXCnIZAuZvxEvK0lEtfCzaC0fXzs5qTQIo8bsqgntkyBTnrsRdieIHhNuyeWGnM0RTFJxdcryMd/NJ+MmtGZGNph5cJuaJf1hbOovQxKn4yGXEM8b4e12woy3X33E0Ubce7EPmsK0RpvAXm3DjmEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TskKt6h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TskKt6h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3A45C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713890423;
	bh=tfVk6fD/AN8oBhFdVfwA+d4ZRxz4EW3tLyv4HVmGLzA=;
	h=To:Subject:From:Date:From;
	b=TskKt6h4KlYxkl/tpLAPJahA41fv2FHtPfL6OBtYd1dYKo6CgRzMfED4GRzrz2yjh
	 ljf4I8fsk9FRQkJ67XKPfcq1//8pOWq0S8H7OnoT/R5imnqG532NvbZgMzLeRTZ+lc
	 YuGeSKk3AUltlLjz+1h10gqQTHNBXNqToJwJ04LXEeVUQbvgE6B1KlhvX8xYENnIVJ
	 I1G3awSUh1pNorEucKbz0P0YaIjAr1tsYU7L1R/VuJfrZAH0ncsaRirfL90hea3VlO
	 uZFSqkTuRZhVLKr0/xVLUmSIDOalNPghENbRVmGltsyH0oytCRvGUcch19fMOMwhTI
	 6WXmSszUS/vGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD4CDC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389042289.13740.15132585360386086699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9a47deade0ad290e83c76020f36dc0661be84b1961b6bc61ba13c243eb5293
Date: Tue, 23 Apr 2024 16:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713890422

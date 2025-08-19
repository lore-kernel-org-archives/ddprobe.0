Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064AB1465A1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755565194; cv=none; b=dW+YmDCfAZIJsEHDHK3oIAfhpXsvi4VghSraHLKDb6fvsyuVO7W5v61HitsfWqrYd6zEWyVjgURJqKQgz28KHYbRdelz7fPOUIKkfaQfG1UNUmjrUnUsFp7UD7dmGi8yYMXDMaXDSu0ghQijYt0ve6omNy37q0CHtS1cohotILw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755565194; c=relaxed/simple;
	bh=Xk9bUjWzg1lbNQOPyGMJRR4geItzl0mnVSBf8tuELwk=;
	h=To:Subject:From:Message-Id:Date; b=CGZ2pw0wk6GdXBicJo0aaRVgmr5uubYpPIawao2SkxZucSoUghP58ampe0C+AjfXcR3aJvZS1s6e3D6LNhTFolZgJl6onJ90QCdLnHqW0+N13U/ePsW6okLR9YeERozHnhr3aVO9DYqjknyoNqJMBJliNbL6ZvydcNY0bX2zXqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPWZAFk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPWZAFk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2D4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755565193;
	bh=Xk9bUjWzg1lbNQOPyGMJRR4geItzl0mnVSBf8tuELwk=;
	h=To:Subject:From:Date:From;
	b=kPWZAFk7EF0M0n0B95gYlABFke//z2sioHyKf0WirhXrsl/vDsKfkxy2KZwWZ+tSY
	 yKRkQeK6hUuJ6G66OKycd59JdLfXUsJM7HPJQPOShesY1BQjppoUMU4Xcuevg0s/F0
	 odtWZ04lUFSBBVLvXh9LV+0Ri99l/Ff9Yt0xnx7ObePdixFgrZF79ppPA48jL7ua6q
	 ewZK99iO3cKBDyZwH2aXLJpU+6IDLSROn1tw/5KMHNN9q2r5ElHeNlLZkOsXOghO75
	 sze6leJlaFCw6GhB5i3Cwia7UeNk5ShMm0KNiggcmDWRsTscMd5ndQ3ki+nRkY9nwX
	 4V136DPkZ1PpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A3CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556519357.1174.9360183693557794644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efebf3d1724933c93973292f433604854c0f1a49bf21f28103f69cc93f1b2d20
Date: Tue, 19 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755565193

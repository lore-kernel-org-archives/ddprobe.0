Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1DD3FF1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724989554; cv=none; b=GSP6jlY27iD2UzLuhB2bzihEFBmQYzn7JrT/Y8aFLwnKCKy4FXnrHg2EJPLB+eQ9C6drEbEKegihMv+lpyFyaaaAxC5ySARvOdk14pYihDpU2P2/F3ZSsDOg9YbK+gljcKAnO6ajc1KFaP6lBCYFmnv/HyA6+fHJ7lRZhCW8CW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724989554; c=relaxed/simple;
	bh=UDjrnEQvYQxB+fbb2h9FBUzEjPvUG8sDgMkfhGipkg0=;
	h=To:Subject:From:Message-Id:Date; b=TYOZw0sn76jngLukOVlhTzpJnBLUpwKviHhfHcQ5g8aBMcdYniAE+K9jron3+larA1ugrWhsRQa9FHowiqlFPHEPnihM5ZjXrAbdSSdrvg+ieyIeoiaPCjPXWfon1TzSX1ighXVIxpYn3z+SlEEfJJR1Rd47hSrGy2ZY0RAA42w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGxgxar3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGxgxar3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D02C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724989553;
	bh=UDjrnEQvYQxB+fbb2h9FBUzEjPvUG8sDgMkfhGipkg0=;
	h=To:Subject:From:Date:From;
	b=DGxgxar3PxgJ6YpWZNR8Rsc5WWtj7baCi1jQ2NpZrBTQdj8BJKMG+dHEspP10uF3X
	 q7g+yXkBqu+qglFQp8H0BPXKFGwFzsepuSmZUYrvmyDcDqkej8lz6h+oqVijQiWsHQ
	 ByF+KnaJHQh+P2+yQnpLuj57tsBeLHR3Navi3F+3TeUXMSctMJ1X26eV5cW8fQE8ap
	 miVKGlfMJoaNi/oELDeISOQcmp/LJkcgaAo/arEqMaLPqtM7g6IAvOYzLZl6/iO/WG
	 EEHzO4w5D3/hmdD/vzy5GgxBh+I2eqwq2HtjlMrBRggvEcAti8/bGMcrAStNssoebw
	 fJ7XX7Z0uV9tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97011CA0ED2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498955361.27960.2064894363630989971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa4aa9a8378bef5be25cd3a19570f302930c4800862c16381b7c57557a5999f
Date: Fri, 30 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724989553

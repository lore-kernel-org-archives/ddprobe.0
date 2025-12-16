Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC53286D5C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765849374; cv=none; b=TGqjmUni8i1wBySmFHKTN96tGJvFSgg1R7TdLxKfTCrTHhzZ0RORgK9kfn1KjJJVINjJmKioo2CcEJs9AL7Nyn8Gigft+cfiVv8zdqVeszsZ6YWprHJg6q8j2SeKYYy63PufQmZvThnkTyfUIZE+9hp8fPu5swtnRKZbPZsCln0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765849374; c=relaxed/simple;
	bh=40dpLJmGXXMpeCraaI+sfbHksNkGyQlQkDnYeLI949M=;
	h=To:Subject:From:Message-Id:Date; b=Sw4AhpK6Gmx5elm1mLcYHphQCa6G+sQ+fKdVsv1haPfMgb9FkGsIDikFkQ82GhUE+2ds75pP2PH4BC1Bu1p+LmDAskjJGy13GP3bM6frxcu9zZCwltDESG0lQDGLpn8dLzjJfO4d2jNAXty5H4dAYBvY3zSKanVYHr6Rt5CKWI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/towzPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/towzPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C05C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765849373;
	bh=40dpLJmGXXMpeCraaI+sfbHksNkGyQlQkDnYeLI949M=;
	h=To:Subject:From:Date:From;
	b=D/towzPB6WIBkqPp1ITGeZlzdIvvgfy8xnvu68BG7HA4yuIXx8SqjxPjqt4ZDoVaC
	 LzZENmzgeuzYkwM/OxET3p5oaoVH2nKChRdud8dH3dqPD9uVViS/eWCXiuJF4kDmkt
	 oyr+BP0PI75yaAzpNBchycUxITp2xk5L6DFiQ7O0JO/xPSdKnQMYkBXXrbZ9gNuwQI
	 nNnuYEJKTM301XFzuMYMKFiMW56ZstWb0usg2y3cue+SxcDRjUDhWfwU6gWB2PK4fe
	 OToyXqGz1gzpo02FkgHYKdSnr4O3oS4/bDHtfZPkqmxUsrX3S7M7ddxIMxPqWHVL9v
	 l+/IHhQbwKimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCFD5B87E
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584937358.25075.9596394926828626299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78c4b7acfd08cc74b84d3b55066b5f1f259b9aa90b79de845b8226c9b28029c
Date: Tue, 16 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765849373

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01CC438470
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786536034; cv=none; b=R6RAost40Woz9xjqsZ0YXa7b8LSdRxLgvDzkGAk4mWnMHpRubJs3nqd6rw4lJ7PJfucjQqfazx9Rdikh70WVlchZzRthHOxgNSX22+UjNOktm9iEl5EKcgu7WZKHVOSP7M9sYnk+bqjWObCmkS0lMxurWDytLUX44XTEPXS55hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786536034; c=relaxed/simple;
	bh=VN0ko+3vldzD/YtRQLl9kmg3z2SEaCnotfQbO6IwSLM=;
	h=To:Subject:From:Message-Id:Date; b=ESvY4vZTTEQajrQcyMNKvrRUpSVFPq9PIFKAwl3OKvwDTDp8sHWuxNJ9ZcgivGLCB6avuvvCYdHulKzyDnGB2iS2JysQw7IL4mcZUZ09VcW0PT3CXNlMlx1PVP+nxdI9Sb8xFvRsKOOvo0ZOgXvOVs4o+upvPVc4tNnRZ1vZQ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0MNVC/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0MNVC/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786536033;
	bh=VN0ko+3vldzD/YtRQLl9kmg3z2SEaCnotfQbO6IwSLM=;
	h=To:Subject:From:Date:From;
	b=H0MNVC/6k88sKzSMrzsQGA4Ef0KZjWM8Ddq8HNVGCTNqskPzfjoZkc9fiG1dRLSyR
	 1VcSd767nXCoiSqj0/iQSmtoLcbCwLJQHMJD6TeW6q446r/NaF4Ae6q5ATo//UhIjc
	 T5W9Y4PbExyseGwKaKKkJmr5NHV6pY7nyMO4Kj9Gt4xp6AejwVnUSBarUC7y2AykQl
	 kyLJ9yUIG61xJJIVh83Bq3/zVozilaFL+15J4yVs2L1Zn9+NaHcXfQ7/wcdZj1mPQA
	 rsiWqKdPP3G96TqjzVkjWto5vxSunGATTnymV1QYNJOu8smTiVrQLCAEZs+/Vh2BXt
	 jjnHy913T6eHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAECC5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653603368.17103.12717291616268248969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1a9617259f611f8f68ef9aadd4651488b5d75d9354ccbb077cf90a121ae319
Date: Wed, 12 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786536033

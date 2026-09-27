Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F862F6920
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790520634; cv=none; b=lJgloG5lS2DbGAE9/fFdANUS3yOGd8HTxA0gXelArzFJSY2jbQy94YhC/WmYbyUEpq97YW8PhI4tB8FSPrPRIwWfc6m7063nQLOu7qIsqsiOkAuNj6Baj3FHmeciEtRLiQOm5nzf21UzJ2RBZL9KLcUBmL3bpIYSYmrXf5ieO1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790520634; c=relaxed/simple;
	bh=w5PYh7TGb9ukIjJVXldnl8eUjgjnk3awvA1TiAxri9o=;
	h=To:Subject:From:Message-Id:Date; b=DU8dxp456wH8RnY0n30AQoaeCZs+5+ZBmTiNK4hwo03ooxo24bJJBVntvvgGFpjO671MOT8h7J9Ew+YI2ZDj6DgXec91j0MlmoPen9uLExQ4eET1EJ8mF58d8/425DPyrJqfT0RBZOLVx8ktKXoByQneBW0fJwsVlS0IBAJpCl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ee+Uy56s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ee+Uy56s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA877C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790520633;
	bh=w5PYh7TGb9ukIjJVXldnl8eUjgjnk3awvA1TiAxri9o=;
	h=To:Subject:From:Date:From;
	b=ee+Uy56sxeOiHwHTJZ7nDZmt07/uwqnHZyjv8zEaSe3Ub4cGu3mVb4DyaUX77p9gI
	 qW2e2kdzR7AsZx6K7y1/57pMV1T2vlVBcQa4w0Kdi6DV9BEe5TglskgkqW5bfxDcYM
	 mNhvFNwMzrEXx2d8srHK6X7ywf1+3oW9hYdh0/UX4bl3/I4wqjs8iJibCiKcmF4SWV
	 kbPWQg67clDE1QWWLYIQJzxkBmeV5E7/jH9wBTUMA8ZJ2aab8IIeHs0PmeVSsTF4/D
	 cu9mzz/9QLeASP2n7ERJnYWLxm+BGbGJebjkiuYP16xczMtRab0/hhmOmKbSkd4jTl
	 ITuMDAQqSwsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D24C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052063371.28853.5609822091510644990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e44a01259ca2a2a92ad89b1e5f3d9e2c2c8ff3945737976d2cce320da15068
Date: Sun, 27 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790520633

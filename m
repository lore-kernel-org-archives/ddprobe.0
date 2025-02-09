Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700071DF962
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739128554; cv=none; b=XhOLqf0GgH3I6yAGvY4zT6bwHkTRvyBqgubGPPqA1Rzxmg4Pb5FDwh/ScHKIPmTBMhAt3VY4CD/0bNNGoBfkH2XhvxY0zk3Te7ENjQJqHxjyaTIOZs/j1AG5lw+jmAqHRdxbjeYrohgiZ1K24TYrJOQARXY7zxUtr8kNLBONOc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739128554; c=relaxed/simple;
	bh=0Pe5Z226erx90ePAdKAWHFHRtM3Usa6uYT0YNNvUUI0=;
	h=To:Subject:From:Message-Id:Date; b=WhgvTX8hiDC6XjWp3cwu5vNg2uSaWg0nS/HrtqvafnG/QJqNYz5eY2Y6KxQYvGEbAr4nYjHjmcXpBMcT56JrnbJT/imGAO76l348utnLlCX0o5d+Y2Iyc+0FbHmokFOULQqeU7YTPScyAevv8lE5CeQ7Ea94jC2UfIHq3drhO68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dU6wm9DN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dU6wm9DN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3746C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739128553;
	bh=0Pe5Z226erx90ePAdKAWHFHRtM3Usa6uYT0YNNvUUI0=;
	h=To:Subject:From:Date:From;
	b=dU6wm9DNgMV2tazN3CKxaaK7rJjEoKzqggKk+5pzEV2fb54YLQ+qZUVwtXbKAyGyS
	 W6oEwpFJLprEl9mExYQp0WzeGdn0dqDBLadLJ7zqrZYVH+fjWDXLh0uO1c2WOMjepx
	 NDCY5wPIDpA+wRRKs7CmHqBT9BNXmBmsYyl6ODaDfd739jxnmHBpTBIctVZH/Qk6ma
	 k4HI+qstXbzVyF0Tj38+94FYDodLnuwbtv6cmFe6itPSxgXgEFXBlq3rJIlmmz9VnB
	 RoSPu4jsTyaI4aozPuVbcZkW6gdqyGRxwYCiXGH8BdhtTDkLdZOAXtTE6OX14PHnWv
	 gm1bIYxUASwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36D0C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912855366.25781.4382251435297394548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717d9c7a467884a9e4b0d123f6342accc054149d4424c7653aa7dcd51c69edea
Date: Sun, 09 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739128553

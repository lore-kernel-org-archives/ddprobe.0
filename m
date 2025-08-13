Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC56C1F4191
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755120593; cv=none; b=JrMv0xvJDzpm0Y72R3anVZgnLAhtOrUWJnN9ZeMUNjQIndddwRaMUHRtcsf5KI+IUJ2FEnpRA0PcjhLkkVb0zpNnvDW4jgMJJqxWAh0RdxNdYrV+KlQJcHP0ci45qtoZkVboriYaMdAN/MHLspW2oSAEnTZvGUApv5uACgiPHws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755120593; c=relaxed/simple;
	bh=WuLcznkZHHji78yQNNNnj/AOP9zLPiCMphLpcqKV/L0=;
	h=To:Subject:From:Message-Id:Date; b=pHerWlsXftHKF+FoZ0bGULGJK4+RhhkYoL8LkiVE9jhpvel5vYFuhkdE9p1Z4xy3GxOLcoQm41e+/v58DBzDDSw5XwnD9XGR8fm1gFWbmHA0dVxqUjUsy8L0LUp9fYfNJ8c21l6vObkb8x3WRuMjDxF8GX/l1hRPWT4cD1MaBUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt+T+oZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt+T+oZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D07FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755120593;
	bh=WuLcznkZHHji78yQNNNnj/AOP9zLPiCMphLpcqKV/L0=;
	h=To:Subject:From:Date:From;
	b=tt+T+oZiUC4IzWt5+b/qJ01ajs5885wQNTE2pM160bUWmTs77QKSSyncRKPx1llaF
	 hFeSVHgk4IVRDi/b9118mJbscdD0T1VxTWemMYXHLRMl+moot9fSOWZAOso1D8ufwS
	 5r7GHwaO8culma89bjDG++7Pu2ROiVkKcHB+SUCYxMgPdd+MCIhWVkQDfe+KuxpvJV
	 b9BlS0mv3zs1scXZJlF7tIfElYtxzjKPneKTVz/R1DPHnOmdxzdcbTsVtWCK0YaCIP
	 Iv21UJGLN7gyzsENXNtn+Nn/xb8FUK28qvdYOvX9aoFOROGZ0VLibLzFXbIy74mtHA
	 34hHlJNhz+jTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F05ECA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512059357.21761.16736376978881599812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a3245908a1cd821cc2db0d675c3a2ba61287e9b0620f7601fb404d4580baf3
Date: Wed, 13 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755120593

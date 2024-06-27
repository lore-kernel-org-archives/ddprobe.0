Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509084C79
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719454403; cv=none; b=d2UlWHR0lWhNHMC1g14yiULJVjObYTt9kv5cjavKKfi9ksB4LYxHG29qNwzPtccv1V9wtkzbzECOpTpy+sZ/XDAGvLCr7Pg7Bvbmy6EDN4ISmPbVHNOSWK4tLKgUqsmESCgb70hyO8d4Mm4wVIF6bFM5vERT1rFm4Hq0yt5TiBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719454403; c=relaxed/simple;
	bh=BxnakFW5302jKrMhC/9sS6yFGGK5vPgrFeR0adOFz30=;
	h=To:Subject:From:Message-Id:Date; b=Y2dLApnfbra4FQHJNnY3RUXsFP/Gxk9HLl4n2R8ZUTLF6Vg0C4Xs+tY8Td+UW0m6WpsVE3F6la3umrxkCjb2wMLLzzwDnYwWkftRHhnilpQ8Lq/J3rHzPqhY3LT+Uw7CMthaqPqQOtA4fT7VgWRSPCuTddqP9YanZx/Rh3aIfN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th4qgpo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th4qgpo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5DCC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719454402;
	bh=BxnakFW5302jKrMhC/9sS6yFGGK5vPgrFeR0adOFz30=;
	h=To:Subject:From:Date:From;
	b=th4qgpo1fX8RluTH15SBM6fLaF+UKP72AlTrQAZMp512n34TzvM9wuKqW14Y13dNQ
	 cbC3+RkKtkSfUpoJsC6NnVy4D0fStLABLY2bgnajTcyXGqpjLH9o3Ae+1LBTJlGC21
	 1ay8vB8HFguRk9P0ijwZ01GUk6tQ+CQB4zK4Cti66ciIhUCHrDgVxyqmR24IwqgB0h
	 Y7sJsI+GKOSZc4Z+xVTuZd9JgYfFiLz56iWM48Eb8JPlRdNeMVkIYgbTh8O3NQg9pW
	 fTGttfOa1IXS30XFuPgTp7gLxlthVgr1XnqEHgKGb6tUXPLu60pFGAw2U3MD2vAygR
	 ueU8SD8sJvN0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C190BC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945440277.21396.17797517783893284340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c17fbd1c5e3bf81813e71aa175ca4e6c78fb31f5bf3c6bb1ef026b1d499519
Date: Thu, 27 Jun 2024 02:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719454402

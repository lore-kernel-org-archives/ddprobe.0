Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229DC1FC8
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758163794; cv=none; b=mXsxI21Pm2I+5maT7R1cSTGJYBoopjTbWanmMfbRUkgepXiBwgtDJT6KtaDPhNkvcoblq+ao3jCCRPWn8ym73t8umIgBpwaGqUJ7XkNen9ZnOpRXcebXJPqy/bnTgWH5sIZie+LMEfrpQCxp7t1ydrjbG6ckvndl1gE5BPZCelY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758163794; c=relaxed/simple;
	bh=3gStbrdD23C77XhwzJE/HnKgYO8sgCqFPIHwEOv/Up0=;
	h=To:Subject:From:Message-Id:Date; b=F8ljtZIKzt4Qyd+Fp5uuwNmSNAlfIkQD4DTRLq7AhZ5HtBFQASMB6dIBxFuuOC5qO/D2PMsCscBEs6gjjd3w3na/r6Nj1TgjQwV+Q3M3w6GoEONp4v7yV3vbbOdo66VVzioUxQWB8Jo8uUWg5x6WRENdadbHYL9TnSyAR0a0fzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DydJJygh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DydJJygh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F89C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758163793;
	bh=3gStbrdD23C77XhwzJE/HnKgYO8sgCqFPIHwEOv/Up0=;
	h=To:Subject:From:Date:From;
	b=DydJJyghpwMcRarLxOJ2DgQ6yWp4fdb1Vn0I3/FBvNXZ5kxOsHEyOHG9CmwvvrwlS
	 x6IRvfK8K2Ns7E583tDGMg5HZGnsZVSJYvinRlhAgPeHQMn29eqJgzxtHL8BA9ZSca
	 VSNjo7zX5DSwukxgfU2/SDlEI+Me4Dsoj7Gp3dc0Zw0lRW41pYAT9cyQaX00FHYL8w
	 08uaNc2qvtyaaT7PqGuRIo6Ef948AqVkYXSAGdL2tWWGBxjMzMdNltI12m7v0FvPI+
	 0lY7wZsU/waP7XU6lUYxhQYadkf3rd8qOj0O4722pfZjv5JXt1b7gllM6R0Qyu80Bg
	 xkD/bb5PIRvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90305CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816379358.9472.3133458741362634482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0efc8712cadefcf560c2464b7e50ff5e8c89771fb5b5892a20387702806c932
Date: Thu, 18 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758163793

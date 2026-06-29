Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3680A389460
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782712714; cv=none; b=mZg4s8bnZw8/LUo3OOGnQ+xbC5evalqnhDbVGAfx69HJ9Eb3uWlq16mZw0BDqk9sOQsuD6FC4YeJ71TTN72FwRr2XBDVlkPb47JvApTf99XWuoDB2V9pLO1ultpjRmGrvYLfVrCjCAHJ4zcM4TAf+bO9JVgtJbBUX1e8Cdrw3zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782712714; c=relaxed/simple;
	bh=G5XuVZu2SkMDvXfqeqKZJTFK3+0Sj0Ww8XYAc/z9pGo=;
	h=To:Subject:From:Message-Id:Date; b=N331NVmkgMxzvbz5cP82ehEdBZh9HFWT2eNI6C7RwF6AhLVIXftkA76uRPz0pGG4YkIsogmQNNmGPHPU+sbC4jUIq2D1j/bomc4//yVfVXislTqIQVhpi10cI/Jm5NVDj9NcvDxXOPD44/e9b/N0q6/TQYZT9dunYiCZ3o1T4/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZsQ2DtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZsQ2DtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0D9C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782712713;
	bh=G5XuVZu2SkMDvXfqeqKZJTFK3+0Sj0Ww8XYAc/z9pGo=;
	h=To:Subject:From:Date:From;
	b=gZsQ2DtZ8srRlQqyBZaDzYMVZ22RqoYD3hQmxJFyvPUtuw0fgMZQMQLRzzKFNPf31
	 TC8wjZVvGUCXcnNoTM8PWi1SFKhByrRvyztqat7DqCVxOfYxqOJloLZcMtTLmbhPyA
	 Tf9nk2KJljIdJTeHcJk4tFRsK3u/ObHyREG+ms7lKjJ2eSacKsmVyi2+SzWwUN9C/p
	 7jbqJGTgTJGuskyyLhemGGyzrIoe6eS0ze85dyJRiYwy4jyTKL5ZRbM/ANg10md8cy
	 nasLto//VmIiUSXdHlVUrNP3mK6+Ar9l7mZylfqA4obDM25VlM0RVnKTYvnt52rrg2
	 gF7AEnsW22JDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A2FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271271369.23963.10034307194570344935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91116875c236d33fbcdae843f66d750245c802f8d30cb7ee7f0af2955e6ff74
Date: Mon, 29 Jun 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782712713

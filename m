Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B44C4A01
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725206154; cv=none; b=oybujNkMd8xF14tdPGPmlk/WobNg+Rl2YCBoGGlBFxjvGLBs86QJxOk7wcMdf7SRiwbz3Zh651wiXEq/q+q/UPZPlo8+z3gsC27E1lbViI1GgtDcLv7/rgWNUUbwSbpVxQ+tDJ6un4m17MIh0oFV9MC1/RylIVp1TFSNRS4Lcp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725206154; c=relaxed/simple;
	bh=Pru85UmFS/d3puv2rCpPzkGXVFi8t9hi06cXsKeFJ4g=;
	h=To:Subject:From:Message-Id:Date; b=m2xRCyfqxelcZhMUy5CU2XppA8yKuDlxCHtJEP7swfNfgpUb99skfjMzRq4I5grx6HjDNoCIOrgBhEx4qKWwVeMdlDqp63b1WiFhdlVZKQimQVgye/bZJKPwQgr0KMVN4arKXnK1daSYORe0G+wxZd7giQZXFuUZ8oPlB+spxsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxt1k55x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxt1k55x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED63C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725206153;
	bh=Pru85UmFS/d3puv2rCpPzkGXVFi8t9hi06cXsKeFJ4g=;
	h=To:Subject:From:Date:From;
	b=Uxt1k55xeAqbNRR9MguE9wgzanWbok0Grd9GriLOwpEG/A8eUms332dWi+zcfLAhs
	 XUocpfqJDZx99mThvGMDQV+2y8jhBvi8yyOBnKMW5KdL7x1XPWuCVuI4NgHD1IFeDv
	 pwG+/BnVIi6jV9YQBfWKB0YXRWFVZzM4u/mgWjUrl30VO9ZBIfwWznar2j4A+TpXCY
	 +yMAqtqTDRB73Aszfvj7MVG1X/fbEO5b7TV8LK6RDwCbdfk0GC2y+s4u46XltxAOlW
	 UUlormfONwbnj5tYDW6a1SqfA9hYeDZYuapbZk+3d+F6vkpp4fkbts1RBQkZkd/6ZV
	 +ksY35253En2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553EC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172520615359.15186.7263350936369445525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03727fc2ddeb38ff084db1bd3597c60482844fa796c06de012d9f92f87dc015
Date: Sun, 01 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725206153

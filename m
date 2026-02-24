Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3EB36681D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771923294; cv=none; b=WdC/Fx4eeGb/i3IsGnhBlsiuVkz2vWhhG+QrtLOSxxAGyVzF6qpQgBu3bPA/zrF1XtGerqg5/J8x4IweUfC3cMRED2mIaN0hUHP+qa9CQTLuPWEU2lx/55OscFAx4nIZ67dd0xiK7lfkWfdhebOdWVJGcYa9ctywkMd6PD7XGLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771923294; c=relaxed/simple;
	bh=LJWnetpU/4dFtlk3CuZfcovjeZbz78sMccCfPEvleGA=;
	h=To:Subject:From:Message-Id:Date; b=SrpDE/VN1crmfDqwrK7nvWTax55W0dk6rC7c33cR82BV+gZxxT3Z7Vl2Qn2Gl6WcPVSJLC3BtrLKSONrZJkFd6SGxAqJcteRr1PNV5Gfj848THzGkrxtkti6g4e2lLdwOE6EDXC0caYJbbl6tZ9wOtW3FxqrVUbclwzkbwY1mX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3nR64Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3nR64Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC710C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771923293;
	bh=LJWnetpU/4dFtlk3CuZfcovjeZbz78sMccCfPEvleGA=;
	h=To:Subject:From:Date:From;
	b=p3nR64Tp2/u5967Yc0Wcj2dd3AkVyZbRFQ+8UqWUN0xhTy2sf5riY+1trINV/71o+
	 YmvbIoRmPcQioPVrkbclCRaMPYFE8LU5JqZj0T7hI4ohpblJJdkbb9XNJ90NGZ4/zb
	 TLD7iHnEby3dItQNS0UsIgHUwjlKa0cvRY5HDUh6p2nnEBDN3yFVzFtvdF0dmwp2WL
	 NSyPs3IKUnH06q3B5XVOKK1JR9cZrVBjD+61yDl+4J5y/z4GjEoY0Uz82qwV9R/BlU
	 tuWXNEcm2Tg/LfEtr5EwiYZR18bEzre90MyFSzBGQWsYkdKzryEGLJdFg/pPUDi3qS
	 L/AWUR6Ut215Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBD8EFB81A
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192329363.25866.6617611106317319849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a4e7a27a4b71e50033f0fa3d7b10b70bd43c7d5a8b990644e5acb858144394
Date: Tue, 24 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771923293

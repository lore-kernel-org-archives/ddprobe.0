Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E855039890A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789365635; cv=none; b=ZM6smggZSPWHtiARy7+ORfX54PelnAMBTRZ4a26SqIZqxVl01mb07+VbQCs7XyIODov3N4BaXnlep/A0AfOqBELsalJWTC0Wjr7YD3zM4rdMj1PZUJfjIIItOOBywQn6ULKY5j24zbyVc/w/GlBEDnbSheuaWobbyO9AkNFcULU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789365635; c=relaxed/simple;
	bh=xFeShUSM2DDML51W92D79Jovy9v2DcUVpluLYBKTl+Y=;
	h=To:Subject:From:Message-Id:Date; b=hUEf+7i4NMWsdBqMJzE+mbNwD3d6b+40XYPecAVQT2wy1g2+PWEn6Qg1N5f1ysKfI5fmBKJYkevU1VXj1T8585v+wu77GoAS658bVJlSGXFgmPggWi7bnaf4FtPS9ObqZCv4ewDOZDi3ziZop3+LdXhLQO9IrdHxdMnSicSTxEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLQ+pFyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLQ+pFyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD55AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789365633;
	bh=xFeShUSM2DDML51W92D79Jovy9v2DcUVpluLYBKTl+Y=;
	h=To:Subject:From:Date:From;
	b=sLQ+pFyT2yjfGLYxfKy8VdLplrM5aIksuZ94NmUOc+b/IXrK0ex0YTDYALWrS9eVF
	 DZ9UTetxH9usscSJ5iZ8DXmhTFZ0pQuHRJIxN73OJExo60YkM5FiD58vldkwKWYheg
	 mVj6152s2a0F2oZnPlBs329wwaR3w9LFRmy9s3dHkIxnfas5WjrQLD7KJLm8bVVwJI
	 D2tAfDaH+hYfK8/+5LEGhCsP3q4T9uOt7yzsShuOe0wcHLmvOPUfF0WWaQWTUz5DFc
	 A6YvYti7F2QyLHvIrshLRgaYBZS7Rb9p0hv9k586gD/7ftCIPXQhja95WyDiRD7Vs8
	 b3Q+8a08UCEaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9210C88E67
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936563374.31431.15704298428511688686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7737ba19f6c15510fff4b43796acb3b7929b77a9efea598b322c6d65641701b
Date: Mon, 14 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789365633

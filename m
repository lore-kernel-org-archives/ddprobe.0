Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF063387375
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784273314; cv=none; b=C7MMaduHhSnC4XMPGJz5df2o2sGbtumbaqo4B7E8G9BJSQWTas8wocTu0hmLreWm16myzkU44szeEEUVNBzNg5Idu7uDf/6hXrOF5Sc4RJtw3b4F0AQiznnSNhs2vJ+WWzV6bMD/5l8pLzmM0SXrDqt6uuO3Bjxy2Er1+myyv1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784273314; c=relaxed/simple;
	bh=5aYwOGiUDi+KBLScWtBZsAGg7Rjk1XNGjOs+lVWtXHc=;
	h=To:Subject:From:Message-Id:Date; b=AIcTuC6Av6Ckr8IzAde3Hd7XTVpgBBo32bIrUxRyQz/AV5AdGes5pUIZPrmHsLPhFjhE//at/0VcMwSCaCVgcXh+FAdJsmDUq17g39LjIPdqUvoDY2CQPk/QHSuVGvH6CveTTQiOOr2KJgeIfN8vRJLokBxyNWuKv6Y6h3RCzd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBZMdnnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBZMdnnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7403C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784273313;
	bh=5aYwOGiUDi+KBLScWtBZsAGg7Rjk1XNGjOs+lVWtXHc=;
	h=To:Subject:From:Date:From;
	b=CBZMdnnkRzjS7BCMwd6F9r8AmGirGLWJSrf7aWbJ9LQrzshYXgdjfRu3FGhsSAI18
	 0DCxWFd8fn3D2UXLpNp+76wTPFr41FS/SesZVp1RDciCxUcvLXnOLwJ+D6mr17Yk5b
	 yxhir8/PBTV0Ovlrj2EfNUkt2AeKg269LSQjqtB5auoCET0uC+x9CKbiS8l9ADi3SW
	 QVnQtJeOU6nU6P5103gQdqeB5RqM+4YqDj0bt+EQTSoltPHu+TnLXqHguPFID3ZTwB
	 2t01o+VTFghxEnoNseqPrGvT7lSHhZSIYleEy2e+GjFmQo8mWc9FNUZtFrJPDDst+t
	 maNC2GN1VGPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A12C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427331373.27968.10713454875988391121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7bc4a3751f77dd7b774f8a1323d4ae637b176863e622ffc2149df385c6c6d9e
Date: Fri, 17 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784273313

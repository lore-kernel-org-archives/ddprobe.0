Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AA01A9F97
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786298434; cv=none; b=iXu2uv2HsbrnYOetPs/hxGunHBmYc48WiEQJY4PJ87OiQi6kcnr1y8nso0XYMzQhHySOZbMGuzYTp63vcfNF0LIbuWkNc/qjgZk2k5ObxwokaE65B4XhgrXk4zNTyAzWWmvHQE2IjnZZ4kx+/1jUmuCfzIIxDCvSDKPbWgOqnPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786298434; c=relaxed/simple;
	bh=6KNVzAVGT62XxJb9cp1WVsvWnEMTnGwU+BE75WGDQAg=;
	h=To:Subject:From:Message-Id:Date; b=b1H7YS//810Z+SAfQPnaYBQ+DfQqnWZFvD3ZHwC/SpLzYq0ppJs0SeFp7Thzk6n+/UMRH+ZnZapxlBuGXwDxGRoHaKyr5IrVzagBgTlSTXeX9hPedx4umdipvmXoPf/uYS2roME49cWUT0gbXXVY959nAZLNLCIC8oqW/XS3i1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsGBuIYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsGBuIYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F84C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786298433;
	bh=6KNVzAVGT62XxJb9cp1WVsvWnEMTnGwU+BE75WGDQAg=;
	h=To:Subject:From:Date:From;
	b=bsGBuIYbsB8Ra/wb26DOIr/8gDjN5cBoR57yDlTT7jCCR1NlGANLmQcyTnncIrgFg
	 kmDWOffdx2dRaMtPhzvmiAWjO4m7GXK/5yg+PqqsB49DDNRE4WS2Kyko/s4l+eY248
	 Df6tkt0NaRl0Y28JEqcImPwMu3IKWXA7K6i/cZjdaNAORMFvm3sKTmprVHHpE6r78n
	 JptgfFSpi0pBtXwXNwXvzXrpEMBZLJKF5c/PuPxcExJXW/TM1jjxcNIYDtqNLIr0Eg
	 aI+2GPWMgI2S4ZM8Jbu7xTlcYWbrgMLe66EmCTk7iZcwVo8HsQ3GaK0+dMDzZ7O4gN
	 tRUuiPmYkC5aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB92C5AD7B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629843372.11841.8376045327421043547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3f5560ce36d4c40388a399fa7967c3410cc1fb392a9e4e9ef12e3cb87bb99a
Date: Sun, 09 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786298433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64949243369
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739090754; cv=none; b=hD4djZ3jNgfNiBHGqjBekr98PmUJrPnl2rYIBSL06iD072wVwEhLDC6QbL5MjARoPp26wzM7WZux5WFj4l55MC/cGubTEaHnHNgiO6ietsZkUwX2Y7+u2omsQRZOykB8TL8vmYM2euQWlu236mlm2NupAxxEzE5xfmJyyORnnlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739090754; c=relaxed/simple;
	bh=ybBpuc1Xfo0BScvlQ5wel5DOCQO+yBCTFsFCTLwDoxI=;
	h=To:Subject:From:Message-Id:Date; b=bhoo367u7L5K2Fvvhel1vg2QnCQRUxOjuJIOue5Gzd1VXI+DRC9zZyxul9hX934EiqcUsmhbLCOkE3LJOMX94I/suMy12lXTK1ZGKIIzoNiGSudnAyxtpH1jNRJQF0wljVa+Vntdss9wdjq6SHL48gO5C12sBp9Cd2M0gEMmpFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMMNk7X8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMMNk7X8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AC1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739090753;
	bh=ybBpuc1Xfo0BScvlQ5wel5DOCQO+yBCTFsFCTLwDoxI=;
	h=To:Subject:From:Date:From;
	b=sMMNk7X8bmmk4WzEuejy9Gc+cpU6X6Ep3CzyBUgUcxqzpXvoNCz2Ss3vyWbftluJU
	 FrLOYUjiq8NLv7lmKLjpJ8Ku+R7v6Ie7E28tD4eJyPQzotd246fapxEKqX3u4YxiEm
	 x/tGGoCVdU82mEFAE+euQao8Lde4VfoL4a1mzhRO8SX+YvhC2EzLAoZ/ciAg/mC49C
	 Ms7f/lWHKDg+P78/xsqtzkwr66BpDkplapSGvZvPbCeQByzVocm8XXQsB+T+1Tdu7c
	 FtEuFcbhjNLyDXxUVom7YcAHKfy/qm/skpIsO1YzFK3fHp42ctudrh3dqv69z4PeWP
	 Rhb7BOYU55dHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA37C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909075367.19334.541929106464951207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7176a267c66d491efb6494b2ba056b19fd39804150668c2c7b3d0c01952e0ac3
Date: Sun, 09 Feb 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739090753

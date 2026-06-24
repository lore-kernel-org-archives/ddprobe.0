Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF1F306752
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782272194; cv=none; b=uibEcbh5agz8cbCp1es6iAXgASl+CShbQ4ORQnJLDrg6laIjnj5wo/4veJAG33fKvfbDHvvMM+KqrARX+sOmiGg4rade4jE/tnk4c+v/p6ixZj4RPtIJKVQWVKUx7jZi0lZ8gW/XXX+YmgUBbPmD+5szsYrcVZe/+XMi4Bd2pFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782272194; c=relaxed/simple;
	bh=ms7gvDSEeQcogneMnL3kfZ0QywBbjBgNmHbNHX9tVz8=;
	h=To:Subject:From:Message-Id:Date; b=VDANfvLK/I4KVSrAWbrYeSFZyFlzDq6UeCLORMKm6gPBbKigQSwarLhi0H/OznhjO+ennJmtHe2Tej93lGeDpcKeVEQ1ual/aSnUzpCeb5h8Jy9ujf559XyQDhLtOQwq4TjoTCswYYAOz12YLPuNiBnjexBWytWZb/M3bAiRG9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKr49syc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKr49syc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC451C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782272193;
	bh=ms7gvDSEeQcogneMnL3kfZ0QywBbjBgNmHbNHX9tVz8=;
	h=To:Subject:From:Date:From;
	b=RKr49syc4I/leRvymFymQfdGGGS/Arho+ukG2Simljcrz3pL9Dqj8uVQwxgeF7dEu
	 LVEhB10WxlxFYzK8nN3xRDG/EjNSYY1jaU3svXCkiuPlUaXglmZCWv3RfnqN95Lg3c
	 X8p8qTUVQEDivHNeCHaU47Z3B3RKLmIIiepybaAstp7mSH66WSFbh6PiDgav+2bf/+
	 19LKaha5lhkol1nlydpJjzMT550SgfxchujBFZ0yAlO7JrsyXOJTUl9JJXERLuovUv
	 y3c073FFHFulNgywhr09ASBsNXkxag/5SIINlU0XOBmSBIC4X9yd4wVsUDqd39EI+O
	 UiQrrpK583XQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0333CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227219371.25878.14741971418259146754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a1021ff63346f9418237ec832ddee1abfefde86efd874e4230daf4ca9cd30a
Date: Wed, 24 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782272193

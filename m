Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E793C199A
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787403034; cv=none; b=kIFckHw9Yc95dhvLxPvgl3MXlhcKLxsvwKnG53xqH3ZLb33mGaMI5JMH7vmItjPezooo+H/ZBGKTuHWLKKpl7KCmW71/2P2KDwizWgmRljKg1gnk0s5yiG8rBHk4jMU84UdFimgej2xC5CKuKV8b5d3nrwCDP9BKeUjy74dRQlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787403034; c=relaxed/simple;
	bh=l/wNSoFN+to+b99plMF/zmIf3CVc9c82DbWYgSeXT3I=;
	h=To:Subject:From:Message-Id:Date; b=u2jzAP2unoovXzspGo0sBNqI2RcUozDQrZGumhAWUGvc4H0czoMmkbg/gBrVurRWH/pbBJgSLW6MZdN+nrMFd0WZXNCmJ2NO0xgEoooNh0NFuI5xowr4fwKJhpklqhzSCAf61nhsOAVhquP37vWYGoSDbM1AZ2qWy0t0wgAyJhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdL+Rl/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdL+Rl/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1E9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787403033;
	bh=l/wNSoFN+to+b99plMF/zmIf3CVc9c82DbWYgSeXT3I=;
	h=To:Subject:From:Date:From;
	b=VdL+Rl/JvZx/0FQPqqQ7XNW3BBRHXYJIYjGIejIz9dLJcSapR1LCAPdt/sKJSo+DC
	 Wvz+9KW9paWOvNrZ8rbKpES30jeMtzNWgW57+vK0YgcCKf2p1AfM0z8uxF0kJObOq+
	 FzVD9PBMk/Fy1n82qMlkvZ+/xkYYS4YXP+0A3zzdZW6i6qHaho6eJzbcnKy0AgESKh
	 +DxMG/48NGRlIF1csjuRKJlZRghMEwCpCbIv64rqattw/EomP1Ae9BqN1Q1jBoV5tM
	 SI/8UejBnAwuMpdKylMrg5NniBwLnaFCCOiTXzUMwCpdjDPbvfd1TGZDg3LXL5KajT
	 utot0wF2bTFkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08B9C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740303368.6348.2170369253990021219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97c0a599361a617abc3fc7b8a5ab36f7d95fadd3f0afdfc09539d33669cdffe
Date: Sat, 22 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787403033

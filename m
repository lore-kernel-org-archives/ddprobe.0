Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EEB30DEB1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756721994; cv=none; b=a50wMph45kmUgXT8+BzombUTJcHbkfkubzbG+5+nLxFtOzXkqTnAbtr3XOCdJSf3fOLRWOKKvV74Kuu+0rIMJ24l0l2gCVHPK1E/7vvZSCJNUxTFwwIJpZ9A5+EoT+KexWYBXe/yZtC+ucGAYj0Zd9JqHvMDchSPt0bWny1xlN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756721994; c=relaxed/simple;
	bh=CbHFbM0rbxBTuEi0Gk2JDKFr5Y1kP0qV8D/zza+F5p8=;
	h=To:Subject:From:Message-Id:Date; b=eKkSgqTj1UDgrCt/7gQ2unZ67pKSGvt+Qi59j74nZjNk1j3SzkARuct8pU85L31C8OoUSB/9hV8nT7j47THThgD79GPlr2DX9x97V8dDcjI4WpLEsXb6NqMfmpJCkUYCDWo3UZbcxK/n+NNlLXXhYqBPgBDkYGYxqhTvwC5gj1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4Jjt+wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4Jjt+wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D510C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756721993;
	bh=CbHFbM0rbxBTuEi0Gk2JDKFr5Y1kP0qV8D/zza+F5p8=;
	h=To:Subject:From:Date:From;
	b=u4Jjt+wrdjtMWUPMKcp8wG469f5jfKhqB6fARA8oLHbnaKOnnWGKW+ZEoD18cx40U
	 E2aCvtanDqnzq43t9R3n/InihF7CSe5g2qHH8DRCcM0oOl7BbkWg5xMLRFgFQNQgci
	 ejTuxi1+Qww8fkXuaM28wfVEez+odRaXi2UMnLpKvgmEIWFbmsKQGGJSgCsr7+RXuz
	 m9BDXsWlqM7lcSXD787bG58OqDeB4cLAdBczu1h3ssKrzTfSuIyyX+riAgYlsra1uK
	 mM5ZVpumSlpHJ2v0m95JyBd0FgNxW0IUdWp3xRrgTpbO3dayWeItlqoOHZgLWA25jO
	 0YL58ORfe+qoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E98FCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672199357.8243.9489280024605841040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31488c419f09e6450119ef37b2fff1f9f03763d398c2bc03e536a40609e48161
Date: Mon, 01 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756721993

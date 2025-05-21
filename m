Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442811519BA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747837194; cv=none; b=libzeM3S7wuWlF6uF2ZdHJZ9pQzLQuKwUQmpNmxbSFXI/PgQqKDP3th4kP1dNB/Y9wsxDADlr2H7Um41xtsNZiRhX+vc8POCOFq5F9fVblhh+z7K3gvln1ED4XUzUccqCn64lpOuqE+52vqalDuUu781mqKKCJBe8ksSLxWVhWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747837194; c=relaxed/simple;
	bh=q6WzVImkDitypZsc3Q6S61V5f/StXsWNK1YjJV1esmY=;
	h=To:Subject:From:Message-Id:Date; b=G3HN1QBmQXuAor+E3+ZZRtgIE7RUFQOUVB8AiXStX7zURVpIrCL28VgcXCGBqA31rbpT8UOYZGZIIqNHpY6A476XIWV7dqLkzJhN9923McXOhlW9xraW1Jv/B2hsBxlzVKu0DdiqX78T0c4h9JDOHhEowC0y7JYeNRbXMme0S2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SW2uBGFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SW2uBGFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C72C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747837193;
	bh=q6WzVImkDitypZsc3Q6S61V5f/StXsWNK1YjJV1esmY=;
	h=To:Subject:From:Date:From;
	b=SW2uBGFdkxYi1nMHkXrqZO1QRe+E/DolkNhDjNEYagOjr3FbNap8Nj4QVucpAJxyT
	 PjVAk4guZn1EChg8tIY/nHkKKpQAewpy9VqRzWNh03XomjBa924COr9+MO4iZ4RtSO
	 dhNtOBWJJTwPrijABrDGXhjq1xkv2i7o+cstRxw+50nJueNOTogYn/4C3L9mgDn+Sv
	 OWSt/XtEb+1hWWLQ9GR8AJHTFyVqjMzuIo+KAgOhHJ/ao1gmiuzHD8tTe/tGNPwCbK
	 IGp9QMFngUGe3WQSzYbVqIZPlmJKh/0STYuUBRAP/X4DPwc8Rsw24gufg9H27B1mLX
	 c0vEtzzbTMPrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F916C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783719358.21520.16136015227757520856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4310572d6c8356a5934ba595ac60e8d18555ad48ae156636945531bf9690faf
Date: Wed, 21 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747837193

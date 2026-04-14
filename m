Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A7F1DA23
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776142054; cv=none; b=OCSJ27nabNtOMlIQ2xFgcGLOKe3U3O7y40kDOKjryBqK+fPJVuFOh3FFSJ3Dqo3CR1bDTGYXovXRvVYafq1X5Qh4hq/1Gw7jr8LHpBx2eVuGNWQv75nPWDIc3gg28NsqhmmA7lzW0qXcafQBtEjB4ldi92D9+vcyHvzV+3GCg9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776142054; c=relaxed/simple;
	bh=V9OP9+ZMoVOrfMope5AB9b/Vumo4gtgGt2JlmNaLyno=;
	h=To:Subject:From:Message-Id:Date; b=urdH5BQktrWJzS/1cltJsMC3kt4l1dUL64zvAy8cfZMoeuvQApWJa2zvLeLBuhyfIfDJz64+3MLuASPiaPk4SD360AsIlFHxvxVrMyvVEka0x5hXxdsMPRMsrbFjDgLseUg+ElvOFqSvg8ZUHwpkgdZzk6xObo/jtTpTfds76c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3kB1Tgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3kB1Tgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB37C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776142053;
	bh=V9OP9+ZMoVOrfMope5AB9b/Vumo4gtgGt2JlmNaLyno=;
	h=To:Subject:From:Date:From;
	b=I3kB1TgzLOEDFFMU5xpZjUiOHrBAYPt+x1/sfYjjKsyTNauDGi1nAsPIoZlwBrWma
	 9OJnbGGRuyQwMTug+ds4UsgZm2hJ5bWC43adq/YGsYmNYK943aQXSWORecslo2Y0sj
	 D5Gjld/AgkOeG7jMOYlhKKYrzqrK3IAtSyXj7ykJ3sCxS2r8bTvt1IlC679n0fFSER
	 /YhxQlvoEr+0C1X6D8yHnK+pQ22JCu1KNttWq7ifEhGD3ex7slv6fS5oh2jmv7dPr3
	 2E/gUozbFP46m12LTEiEM8fAfvEzSwrqzld0iyCAAXbHw78xFzwFM66g0NQwYZFTqp
	 RhAqoqVbWTKOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A8EF34C61
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614205368.16453.10284337951308998934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d281fdef4a6cfdc072d0d2a5b5b0de31db87e83e9c13b20459029d00c28b5f8
Date: Tue, 14 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776142053

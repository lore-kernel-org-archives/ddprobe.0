Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5431F3921D5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787922034; cv=none; b=bSmVf2PN3Jt/+GwtNyGTI2WAUhpEH8iLH6mPH5KpO1nQLK54ojvLRxb2luyJDclRyY4Kdpy7a8UWuSGXi8x4LON0OlXlh5Ex2AABjXMCDOW2k0VLE6aak5vWr3lIljiCli91+X5F6TwMLio+hD4kV3tVQJD0sfyJ7/wfhlapz4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787922034; c=relaxed/simple;
	bh=9KK0de7lVstr+f5Wf6iux3unV0dkQBlK5jX3f74PgLc=;
	h=To:Subject:From:Message-Id:Date; b=E3Ga5khH/AtpfjlrahLqU8CF5fYxF7dHevzZkNfXF5hW7tUlOLHSDxLRuE7bU0nmECuGnx0twg6YoisUcV7+Qnh/4JwIL0jMKiYrLIm8I7ga0arxqXGziRpO9H1TtV18rCDB9a2M0+lTLzl0VAOj0ooArzYfa192TzK2d8EXPQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCn+Qjs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCn+Qjs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BF6C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787922033;
	bh=9KK0de7lVstr+f5Wf6iux3unV0dkQBlK5jX3f74PgLc=;
	h=To:Subject:From:Date:From;
	b=LCn+Qjs04nEZueLPLQtHTMCfgpfQ1N5vutYN+PblT+w0oRqP5ITlsR9HFFmctlbv1
	 d5xrvz0b7P1YKT1xFmz0Wa5p7LSnOc0xl5HqJHL5evVvKdnP7YKkYSxTajfANwP3vT
	 pZC5rnFKMSczhs3K7oMEDlYYB2bsJkDkbce0QniDEk5St1yzdpzJ0ZNJeOQi0ALCHM
	 I1Mk+njoqc+zww70OQbiDunwKbbhRNkbkrcG1ZytLmzn+vuXdkAi//BqH5eWiEV5bc
	 JExMnMfNL19IDXdTL86MaIgdYtDVz0/Nitjh908DfzYtGe5z9iFUS4Agk2yq7mGnz0
	 XU2X3LuB+Q35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B225DC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792203370.10327.7493527177221134975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e8c2ab08ce55e32249afb27fce9e595864da4634b1f5477e7b5ae21cc75f31
Date: Fri, 28 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787922033

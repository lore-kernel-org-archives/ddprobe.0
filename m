Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1131B808
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774572294; cv=none; b=uGtqVdIz0RJbapGuHNVI5WJKv+OEd2iT6zZcDCwtqpia4Md+aaB4HpigPZUEvJVYhqY7Uuc/yNyYrDn04UHrCufeMaNzAi7B6jsS1E7k5rdKMwA/0UwRA4yTpjdQMbVDWpOlYdtbSD8jl+lHgwhk5lxj4bI5+LY8Cul3TmC2480=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774572294; c=relaxed/simple;
	bh=xK4k86kqbV3L8do7cpv+uzHD6iRheVg99vMJVFoPPNg=;
	h=To:Subject:From:Message-Id:Date; b=q4rTRejdD+qmIzixgH0FJANdLgADJu0Wd1yTuHe2VisMezOrm8RYQKIDRswRj+NY41Fr8TgBBP8bCY04KjX5F1DYK1IZDEFv4r4n5B3gqWITUGtkyVw/cZD4tiM6EOdUYfPtvwAoFQ1sxL3DfO2KF2UR+/I4HARob4zjVf9hsLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEXGMZcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEXGMZcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97CDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774572293;
	bh=xK4k86kqbV3L8do7cpv+uzHD6iRheVg99vMJVFoPPNg=;
	h=To:Subject:From:Date:From;
	b=TEXGMZcr2E9pe+L9CTK+2mA/2/PtRChbrI2N7m+tKKPXb8ul57lebOBvf7ErMljri
	 nId6g6mKWmrLXJ2e9M/cV4Z/DtYVluYlcAIrK9sMAkLdlUJM2mE5ecSxerEytQLU3A
	 bwj207NMbOzBQywELYa0QgRhE/4QBR1ydAJ+NeGqF0qCGP7bPc/nTMopuAluqAsvMk
	 hNNsyyM/p4vffDQhXOlr4CWLKaOWRrXmRN524Qwcnz3m4XnOyaMFWEAyHmHuB7jq2L
	 zbtPlIigizpJwQ7K7OpX8GWDeu/3g4uFwbvrvCNX6eNW3cFRowK6WL8HKUuXflwozG
	 tOM9ojr1W7bUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F710AB836
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457229359.27059.17232603295069381743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd75afa55a1702167b45d919e3c98b76fd92570d0f49bf85ba57efe2cb539110
Date: Fri, 27 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774572293

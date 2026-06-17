Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4029C46B5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781663794; cv=none; b=oFwQjyvUYIddL40viNPaH95s0BIw0kTYYNkj9XIlBjtmGVOtf1XP3KuoC/cv5yhAsrEYHFbWdTg7igzm1BINLgFZJBWYV3otznEw9Z1dUokk2ghWKa2cWIKLe8yC//8t/dHCHW0LSer0GMNdd1rJwhVe+pNTA8pmqPFC0UWKxJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781663794; c=relaxed/simple;
	bh=wxU/xPshB1smtjb6W1Tlw046Y3IFTbJsvRcFUHxruXg=;
	h=To:Subject:From:Message-Id:Date; b=QiUzUXzPS/jFf/qIOk4/zJMqch+NxGikvsLzvTqdhtUPvd0/YXTP6addsI2geeNe/4GV6PnL2wQWzFCxgCJc5kYdEO0RCr4YIX14MiN0uBJ39vT0bglHbLt0uW56tYyJzbR+LemLri4x5s7fwJnz4KJk8Phx4Ve+IU6q0X6FAjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzzzVotd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzzzVotd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5714C4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781663793;
	bh=wxU/xPshB1smtjb6W1Tlw046Y3IFTbJsvRcFUHxruXg=;
	h=To:Subject:From:Date:From;
	b=lzzzVotdJ4PzeFcy+t2lnPvzKUlxLI/DR+gRkDYSoB8LUbfpAo3KEAivSUPIm+gAC
	 TQYAzVy5u7LxlAeGizb5R6vqVwjzuviam0VAGBm9CZXXlp2j0qIRNfvfQH0NzFoSfX
	 PcFhxDe4bMPjV8l9FO2hEV61FrBKrHOcpGahmvxuyp8o5RRZkThw5R06503ONEbYp4
	 Kxc9v5FdjLwPAXhtvbn0271PaqFzjod/GChU17EpUGlekOdSMRortko2W/utUKUzRM
	 +ZcU5+insQa8lE2r0M8+QpHyPLik+S5PpIfclAsOLaI6mIaZe1O7lIhjBizQuTLZLa
	 exLZ4HLCSy6uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2FCD98E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166379369.11771.6366385356580482455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1144d37d6992f783116aae8438af95e59f01253e41a6c9a7f4598155475b73
Date: Wed, 17 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781663793

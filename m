Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9183C5523
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779793954; cv=none; b=YcWIOFLEIqJ46SSsWJYrCFlL0xpvLL13s6kyh6fSW4hMhzuXlGgmVwahkvoP/6BLGy2S9RCfTiQ3npHpNZ6LnO+Ded3VReXbOMKH1R4gik4XUyF75G17HqXCAWn01B+oCyaYEPi72kuYM9VhARz4nUoyN/a4BYWOi1pYGRkFSoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779793954; c=relaxed/simple;
	bh=QDcyF3yvMTgNWWfuxBrpKmLYz/LkKIPVb+CSYThopXI=;
	h=To:Subject:From:Message-Id:Date; b=ThtqsvZXGrh1eTj4hbXmxXzGKZhlOiphkbxPivDEwR5tGVvqz6YjqeJiiUiLAMQgQ6Y70PYoQ3o22a2rl04nIrNgSzN0eJ+fl9iEY1wGSCr6JaDYAvVQsFztcF71Ollu2cGOUN2w0q6U8ys42IrFlqOWQ0EOuof4akcdmu155Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PL4Ji30L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PL4Ji30L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5501C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779793953;
	bh=QDcyF3yvMTgNWWfuxBrpKmLYz/LkKIPVb+CSYThopXI=;
	h=To:Subject:From:Date:From;
	b=PL4Ji30LfW3Zb3xVLYOv5s+gmml5Ph8yPBZjoUHp90mnJdA4+TT+uYm9uquzZ47JS
	 ky27WzNnMefRR7YPfg8tKqT0m6IEcfOYJhqKk5aEq9QTiefEe55yjEKTl8VQWbkr9s
	 wF0l0+h0zJ8IbQd6et/df5EMgfxMv/Wt/MS4/eSJgwMeIc0KKsnkMpdFTdmTSf/O5t
	 WjjLLl2veGshMGGcXqu+0KclI7hres4szBYH0IMADqDZBzy3hsIfNnDPwwdMEOlLqi
	 G4kqp724W84lU3M4RlWhI1x3djU+Z2/0Fd+Al1E2l305/LFCQ5zE3RcMRVwOBLp8KJ
	 LEOpSU2nj/+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9753CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979395368.6953.10985088224684590273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025fa39e2d48da79a67c923d0af1776561d3bbb27fd6d23ba0b576e9883d5a36
Date: Tue, 26 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779793953

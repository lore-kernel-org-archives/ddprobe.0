Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8142EA468
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784002114; cv=none; b=p/Q6I16NJdr+BJTkZRXJFalD0jVcDBzO8Dc7sgBiT+6d5rzwF/dbkSMW/UdY91tahr4YU8w6SiEmsPbqfg0LaXS3xZO/qJPA5v+TjaXmWzbEGlLx5aYchc/qY/zcIK0e3uj6CSEbdGkdowjm2ZPu81XsX+kAepZRTaFL74d2jGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784002114; c=relaxed/simple;
	bh=8htwVe+EQQeY8puTpJMDWPvfJL3bPKLVc+2TaBU/seM=;
	h=To:Subject:From:Message-Id:Date; b=Os3VApbSObu77RD9xCd7qms9G6bENvy7fvTtFjhiYpx6dLzk1gAyg3SyFhP1TtootSNreNJKuHboGXyq1ub+dKXPg4lajEB1PzsE3EY6xA8NyzVlpdGB/Qk/IrsbeB6dB6JOTuKcKJuwtdW9ykRVttmJUbLdryc29DgH/ZBPhiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAVro+Jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAVro+Jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CCDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784002113;
	bh=8htwVe+EQQeY8puTpJMDWPvfJL3bPKLVc+2TaBU/seM=;
	h=To:Subject:From:Date:From;
	b=kAVro+Jf2zE3/PrrtJ3sxRrF1xM8QtA7DjaSv1fOb71FWJ0agG1HO5tG/aXQ6kunQ
	 MCT7Tjx8uae+9NR0HlmElzybtD/Loxlc85YLx9rm/HIOJeseL1iluSophSo9H26Pwb
	 Jg7zyUIGcnDGCAMIc1MeMYmSQ15JoN7+GBgdbVu78h4Y7rigqrD5r2rJnBW19qzXok
	 qFUSi+g70n1WISzJRuzbVV3PtLY8sG9jtiWy3GpVvpDSU8pfxlAUtZ+B2DIrSLf+1r
	 nlJwSLrCSK9YhLztVuQYo9S1MWoKUzApcaS0FtWrpZoWzoADLazrtXBjQYFbJMAcYy
	 WAxO68AZqHfyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB1EC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400211368.6313.17361256015917924874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d14d76725be21235bd06205d2eb63d1fae3ea03eeaecb9ef0eaf47ee578b5e7
Date: Tue, 14 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784002113

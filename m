Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160AC3ACF0C
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777281454; cv=none; b=uchpTUORutFFV+mTnrKRZH20D8IMwoXKDHegbrd3gVNhDB4+gHVejlr7U2PNqFmGx82Bha3FvlMQHG5w4t36UlnCq4ISzEYdnApCgJdwmkSS0xR98bRdzC1AsPF3L4Gn93gk0Sur011amXk7WPZemukx3YLlsWINNZhB1vvuhJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777281454; c=relaxed/simple;
	bh=ULlq3Op0lsOurjRJlWfVWOph3vap7k5UITmmLuMBtMw=;
	h=To:Subject:From:Message-Id:Date; b=oMbfwDeb7upwoypEuPqMyWrJ0yqZ/PvNhtyzoOxZbmnpPkdyH2ls2ZK+wS61MofGAk/RlCvY7hrxKyomCTxZ5LC+XhCXC4M0XdlDrtv6VJduCDbJ8uuPmED/DjjeejWySR7d6acZWJEcVokLlVGGRHnTvTYo8sdgSnXTBDg4YiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUpweBXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUpweBXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6E5C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777281453;
	bh=ULlq3Op0lsOurjRJlWfVWOph3vap7k5UITmmLuMBtMw=;
	h=To:Subject:From:Date:From;
	b=UUpweBXzrPw6fH7Q0DDF0+Sq2yD1u0/p8lPbYjEebZhwei7BwgY+Mup90Lso92l5c
	 1KkGzPokvpMkLcGqz1nwutV5grQLtCKSEfBB8qaJBkU4GSwYf+WwD1UJM5ianjaOEY
	 sf3Sazm5aOXSdb3pGxiai74UaSIaQC3D45LMjvkjv9ybNHM2zF2MaNZq1EopADVQaa
	 K/GFvKtZhx3FC2T9f1rz371p0qyPUA5oRwxYQt97UMh6iatezNMmRdvGux3njpZwXM
	 2xozTLeWxxXQikGwUjsF9V/VIF38lGgeHaiHIpQHzKAixUZ4Fp+3oDB0SgH2aEweqP
	 092wGc/YZ2RUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1DEFF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728145368.7856.3567099048283921611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192b2db3ef743d196d53563248a83034312fd3c9592b077f6fceb56f8d922ba3
Date: Mon, 27 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777281453

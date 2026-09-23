Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BE73D9548
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790198434; cv=none; b=LS1sZliA+BZQtrd2JchSJmwmGYF+bR87oaOKF87cjCmMNtm8CV6sYw3KHNhJmCd9QaxFH5KukkDTezow0wnwD50UgbeFhovtQmft2T7D3hrfebrz4j5GrSywekoNhhKVkZksy9dE7w9f5hF9P9c0Io9E3yDk6gHrsskyGnx/UjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790198434; c=relaxed/simple;
	bh=oD0CalxBxg4MiqdNZ3esS2rezmfweXar7FL1GE+wN0E=;
	h=To:Subject:From:Message-Id:Date; b=eaJjH5wxeN0Y4HqULcoHPyqTKVu1IDoTIp7YtwX1rvkFZuOyTn9zaUEmFnJHrJIsVf0ET19JeFmcIeO0apnbrxqwElI417VydKjsu9T5LOnOAS08Dn6ZtJ2WNLfA0KRdKgqKv/gr6w1se9lx1rSFkXIVH8ofGTzDoGDdBWs0+eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMUo2xng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMUo2xng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E171DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790198433;
	bh=oD0CalxBxg4MiqdNZ3esS2rezmfweXar7FL1GE+wN0E=;
	h=To:Subject:From:Date:From;
	b=IMUo2xngDfWoF+GRm4u8ARYHhkiCENz0D5rFTDEQ7SifeKoUfRXs+M0yMH2tEYZw0
	 qsAuGCZS95f+tbWHDv9Q+EBUCWnHev8z4shLA2mt+z7/Z8013OPJCJQ1PGZi5AiQM3
	 wwQYV9/f8xm0pdZqOh23ISpLAgUBzCGrXRngf2K3EsqGdssHEFCg1HgFJs+Ea4Jm0M
	 rKdqzigMnKBSA+keoUWJ3YbIZWraN6/GRw1KQsiWppUn09tRgDApT1gX7ZgA/AspRC
	 OlcSM+bMFiZ3YEanpHSS1ePXOgEMBoag6zHVTrMv6mnOq5ApfbMx+Qh0HvsUxklwyx
	 keRGRoZJ6uNOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90F6C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019843374.8832.12082826828487297207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cfd0643003bbe78330b8e7e71edb4696442c2bc492710cb2ac5a9a1cb10c9d
Date: Wed, 23 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790198433

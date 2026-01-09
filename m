Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21552E5B09
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767986034; cv=none; b=h9uZ1FraaEwU/rBM+46szq9IBTQX/GAvdwHEFOjI6tjivnQ9jTnPk60Yh1r6ra8GegQvfWwEOQMpWc3slwJSKRfbhqRvWmZgUFLTsLK1ECmJG0fJsXH9UAg6gOiNKuMCR4ds4UPsqhZFDmEdWCsOAleqP9irQWDaXYM9Z968Nso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767986034; c=relaxed/simple;
	bh=ZcV02xwWsOrdkOezyWLh+RtJ8M3IGAtQne16xsVAJjo=;
	h=To:Subject:From:Message-Id:Date; b=mcG0vqEWBNBJQ+ODkYn4pt9EoVrqhitInfJxQ1UNqUCT7dAaHOoPxlySLlVZ7fRjxyPWzZqDr9Rn94EClUumupkzFmV+eQ1oaUGSWaogm5wFWZqR7RAXJ934l4G+NXndEkLO8Ixcjl2V+Z21DTTZMrJMhz7DTQ31Zh8vfGJpmgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaYpAOiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaYpAOiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BCBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767986033;
	bh=ZcV02xwWsOrdkOezyWLh+RtJ8M3IGAtQne16xsVAJjo=;
	h=To:Subject:From:Date:From;
	b=UaYpAOiq4NJQMoC+gDE5atOvvkCJmh/VN8Eu7OXEnC4IjfPHHMoJeFg5l3wlKMDWr
	 qO0sLHPYfIbRN+uKXf1B53XBMfomzY7Te7pZMt6nq7r9Ox4LWiTqzFfkYRdyRIFpgI
	 bJyb6DEz4ju/OUErs10ObNW3xtbrSvxAzgXX9tIw+BcQ2VcEy61llqZDCkF7Z4eGUT
	 VRyLGllmzZQTAT/UCa+lcDTwXPTrrY2XJSvoVfHuJ9QaAEe8NzRO4MsD9woCozi5AF
	 tFN5BzkvwYW6Z+aotaPC8J+oWTWFt16lIaTCcU3WmD2x20YhM9s7cTD2ZTBb7aWdkv
	 irAFaCWM3fkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91452D26D94
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798603358.25337.5372293203277259833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a78a4df2c9155926adf1851252d3ea4e06caa2b57a80b78b69c729d090ea0a
Date: Fri, 09 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767986033

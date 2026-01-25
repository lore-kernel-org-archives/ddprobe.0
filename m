Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F53323182D
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769356434; cv=none; b=t45u21btiCVYuaEFLw/KCFnSIL+iRzfNhXKKjXnQpKSvyXPpMUd7uxx38H3BdAlPr5TEXi15T/8YfM72x1ZZ35qjhSG9+GJ/QRAmjFOaT4uSv4objJIJrW+UJwr0kFRQvzNoMDA4d1U6ikONyvaWVwdX1XyQDteA4ecrb4odPbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769356434; c=relaxed/simple;
	bh=e1SpGPGug1xfYYzOnZe+x9vqn+EzDtMz9k7TAuyKHuY=;
	h=To:Subject:From:Message-Id:Date; b=lVS4mPPS++S00W/DPh0RsvnL3QHb64a1kBbre2WdnIH0JbaaLpnA/W+Su6FtwHsr03hDh7gUlLdTBsnt0DHPHn/QjCTlhQ/AhKJxnBtRc6m1OQk+yHOR/o8Hn/erk6Io/1fdgQSElwhOjh4yAtAeXylBZzBoUjuUU79CEbakr48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGLFrIwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGLFrIwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A792AC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769356433;
	bh=e1SpGPGug1xfYYzOnZe+x9vqn+EzDtMz9k7TAuyKHuY=;
	h=To:Subject:From:Date:From;
	b=tGLFrIwNXkTnrvzIwZWvSscWCZApcZAcmlAyFMrlIdKWfX8UI+PfIryH7qf5JZTNj
	 jBWXuwwhIvFG4HhtdMNK0DtXuRUyAZIbQcltWU9MC9Mr9J/QiyMySVhyaP3IIXdo1E
	 ffP9OoUlXToF3tTYbhl6J4952gZfunouVo2LQoPshcDFw48AHjnHBybGSlwhGDR+cu
	 nhFeao5jQY4mj+zdoZkInKnFI1x9ufZf1b+MgnDBXzG3EF7nNF81OJbmY+0FtMwSOW
	 w1tsJvMjjbOuG3fXgD5yq1IH74aNbeWJjzI1OEWrXrtGjPr9thoU71E4ByghonIQ9Y
	 drD701wum/5pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958CDE63CA2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935643358.28587.5101797641621103249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57692f3316f5663232db6511e3a022bd377ec657348d597a5a50ed6fbc5da319
Date: Sun, 25 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769356433

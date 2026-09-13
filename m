Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443743BFE5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789325434; cv=none; b=GUSVjINdJCK/0FoMc0G3AJpHn9m0D5Z5iJw/irg+nxHJ1WGQqcyjVyjpn/j2Epl6VbyOMGgXmTdlz4JCoLwojTjx81aicylMZ9bYj7/xPNufOUxOz5HZtOlbHALXOgmQxFloXWuZEJFdFVpZn5sfkel/s73nGOcGx+rOrMwC6JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789325434; c=relaxed/simple;
	bh=RYSCEsb2Qgq+J0CtELFZQNtmu186WMnAhR2RN1d4K+Q=;
	h=To:Subject:From:Message-Id:Date; b=MtRtTnTGP8OlfqQFkT7mfLUvhpT7ZS2VSep2xn+skCg820ZNIGHvWCLcIxixGSMUU1JBSR+FitSRJjJX4trh0dDBNWsGCHcney6icnF9ep/P1WcRsWk2GmvmbXbN/b7uP7Ap4RjRBpZZceCzVjpWyzt7WfILvS3MWw7S2MbCVew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1eem5va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1eem5va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF278C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789325433;
	bh=RYSCEsb2Qgq+J0CtELFZQNtmu186WMnAhR2RN1d4K+Q=;
	h=To:Subject:From:Date:From;
	b=H1eem5va1eyeVhQ5RLVQV+idsTwEV22AvylCBh9yZA6n693gBo/T+BMZx1KEO5f3X
	 iT+SLeF8G5/OhQYgUnAA3EGMo0tyggjWbjqIhIQ/pNs2TRzxzqMS5a9WTmcwrbr3ZU
	 5uZfzqYuOUfoa9Ad+Z8M+HZEzjqCrdtT+WkiMxhOVfJpfezxAsOj1+xBFfUZTsTuEZ
	 46xs87Kh2CHtp0Slp7hZsYpZh9O/Y9O0z1rZRHcf1Kb/Xo9t4koqk11WvCvHc5JuCZ
	 jqMXq35noESlF3o/fE92BlzJTLNhtZeSTlJgkoFFTJHIyQ8w6hYMa5aOj+zqum/AZP
	 nSrKvSxWES+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA326C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932543368.7660.15975222863424224125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0621143d5ad906ecfd4d7e4f08dae1eb9964b40378e7984d6645ce531b404853
Date: Sun, 13 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789325433

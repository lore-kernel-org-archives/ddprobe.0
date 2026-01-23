Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CF226AAAB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769206434; cv=none; b=W9FbhbtQCnbvSoRLzfIAbpsq/5TtNOyfFNSQSJupQg4Zeo7mx8ksT8ZKd8GaFzlpwHIdUnkJQFrjWdotpEO5CnHZkn3jI+/C+nazE3DCg79IfO14Gg9QbgGYQVRP3uEVmM+lF4rIivItJcERyXzp5KbDD4FYIIjj2i2P9yBqsL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769206434; c=relaxed/simple;
	bh=D+kUuYI4mGhU+yOq2H24HkztjwkvUy8YmOO7g26q8kc=;
	h=To:Subject:From:Message-Id:Date; b=cEJgdxk+bz/5J0LjHsFL1K4+kivY40/JOVSBR5N6I5lemaMemuVB10F934O2yHECedf8Irs8k1KxkVXupnFTKwvJMB1KqoHxXxshEQG0c3/DgMd/gE7E3do7NkRF/BsiLfQcTcFs1BLEvakGQ0Uf3+pAAZQjxIwDyZYkf++kPeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZer42Ve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZer42Ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7BEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769206433;
	bh=D+kUuYI4mGhU+yOq2H24HkztjwkvUy8YmOO7g26q8kc=;
	h=To:Subject:From:Date:From;
	b=YZer42Ve6Z+ogGM+UXtV/Lsoh2ibhlrTfJulbdku2PZ+ts+EQxHgGMzx681tvo7xj
	 J2ktUj5/YfrC72nzi3AhTRzj6V71XrW2a3YG141DOAHraDc0BAy1J7gz10p9/xwvds
	 +bDPl9vlOp9u1htvBL4bypbpujGpZqcaRNIocDERoCh6Au/n2U3usrh1BZEH7M9SlB
	 3+Ky+N25vU7Su120ar4oZX9hFZ8UOL4BAnxmgUw9hsMgOnNredqD7jq2K5j3yNXcJX
	 JOmTSB5xQgybZ19PZh31N0GW03TpxliNFtH9dmKxezRFzIPHdmu4425qQUYHUajZzq
	 OoY+IoF5lXfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B3D778BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920643359.2016.295837410543531325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ab61339af951c1dae0afb5032f338e6bc9dca34c97e3e219c4e53ffcd608f1
Date: Fri, 23 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769206433

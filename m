Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABB82750FD
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745966994; cv=none; b=qSzrGVzrkIxeLplhgQKFmzFDFQO54dqyNugjEtYgZnfV+BluWdUD0TgUCcq6qbb24RMsLrQ/kpyvULCZjgIXBNOg+0i0OhS+KX9FPzkfMH/77QcUlmryiCw9RTtyxsn9JnGkB4RjEOIQMYQPO5+6DC9/TppxWNGE+nykYSks0Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745966994; c=relaxed/simple;
	bh=ggvbzI4HqpivFXP1w62LQjBJ3Nw90RvrZbKzn50Zx+s=;
	h=To:Subject:From:Message-Id:Date; b=NlMVQG99Gw7j61L8tuMTb2uxNqTRjxVBD9z3xVVk0bCXHk04cTNyYccBSN+v7fOYP5OaapW6VrgjKTcIR6IUJYxRtufYp0hiXGmW+oJpCPnytvE0+Xgw76P5ycwC952+GJ6D1md27U5OIQ0yN1LQr25VccETYdNAWiX9PRCbYds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FemxTXQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FemxTXQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745966993;
	bh=ggvbzI4HqpivFXP1w62LQjBJ3Nw90RvrZbKzn50Zx+s=;
	h=To:Subject:From:Date:From;
	b=FemxTXQMDGWVkIO0zxE3fBcTwP18twbIB8XdcprdUus8ZPQR/28JXqVH43g+1hk70
	 Z3XXzOK68CG2aYaAIH2YvHH4cub4diHPAHq9Dtqkw4QSxTdoKtwtmebpN/cL/5yIcL
	 +/oHMLWjSXSpcQhTh4yjgUXEdhPZDSrT7dF+6XYBCWJixAS2Tv80MBZtoVonJfi3XQ
	 R0gAKC3FPdHjoShC97ZclafHckG0CzR2MgOn/PFdR8UqlbMbPDYjhh38YThy6qpmeS
	 dXZdWw9MGUxEJZ12R70aGQiWAwkujpIK8sOhFcXdsslJ9IChpCDmGBq6y7fPkKK5qe
	 2LbRK+mYwgWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94813C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596699357.4109.5095761931131676671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463268b8c329a26cbe74aa3cd069a708eab4a5869bd1c200e633b8efee5d9bc7
Date: Tue, 29 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745966993

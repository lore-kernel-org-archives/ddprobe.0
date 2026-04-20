Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F40C3CF038
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776715654; cv=none; b=t5g9SAkB/oPgo77FzE+gtpjoImIqcUJVPw8EcLKT68oUQwdiwMhYGr6Suj/7uRjY9HPAAdD3sQB7U7XX522TTCUV2jUzJPAsGYpq6uEebSkv4Ewul2uSCASDVaN28pGHlDyoZab8oJTYsggeKCNFhgMBL7gZYgEYdMApnaethq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776715654; c=relaxed/simple;
	bh=2ACEgj2Um5P0uRmqZ8viOQzk6c1SUI2KUG4pEllFsoU=;
	h=To:Subject:From:Message-Id:Date; b=iLNzaQg8F2Kp8mJcGyykmtr1hOZ+V7cN1DHmbbOB/SquBIURxRSRG1lMcV5FBsNf2DclMNOypJB5qOOBGjSX8q4PRZBERMwio2wL8ZigzL7E9ptEzzbQc4CNVuNpfx0ZDkNpHwCRTu9amQ09sCDej0+QgF7kisP/6xB1Kf3rSA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ctb9ERN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ctb9ERN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9714C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776715653;
	bh=2ACEgj2Um5P0uRmqZ8viOQzk6c1SUI2KUG4pEllFsoU=;
	h=To:Subject:From:Date:From;
	b=Ctb9ERN0KVoSL1Kw4n5yBdzbxaq7YKrUb6nNr54DkUc2LeHRQhvfHoKyDtLJm07R7
	 KXUcVhpJtMuqGmVFWoM62LvZoDIXh1Oh10UFPpIa7EumW8bIBITtXXre06drdQ1olB
	 WZd3FerKZE3c2o1mkaUnmjL7Xpc0R4WvBCMCNatRNBbgcOnBpPiuZ8/fxJ2FZkGBVG
	 B8W0aG86IZLP99mBaEOuJE7JF8Lqay14C6M8cW72ZRqQ117o/Jm8/QXMbdShX2aFoj
	 CoiG9OmFDTnnwUVqqIQBa67HrACgknqNzfl9ZCm8UgqLtszGwBPcF21um5LjwfurKc
	 MY+b3JKXEz3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A958BF5A8B6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671565368.30467.7599126800803827139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0d7a233bca8dd7a3c9e054879364811f36782ba8ad6dc0570dc08d5108626e
Date: Mon, 20 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776715653

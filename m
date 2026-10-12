Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849634DF4B5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791837034; cv=none; b=gT3+z4jh/3N3JolMn8NHDDAZfFihdlbrEDgiuEDJ0MrLuELMg8SEBo1M6xvC47+3o6v0baFzEUjm7B79KfLfQkhIMASRz+vv6IXYjC9u/1oouXwCbfS6FcXMupTSbWZ4wW51exLd5Tw7T7Ou8TGtMCuwKsDsh2MJPi1aRwnhHKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791837034; c=relaxed/simple;
	bh=wSDMeGzqcFZO3RCk/ZO7I51T5GgAThcj7JKISzEto0c=;
	h=To:Subject:From:Message-Id:Date; b=bjLS9e1nIQAXrzb2mX15xQv0I89TbLfLVp0S2ufNrz1FXVzroB1ejQmPtXHUOw8rYOSoJBT3JD1ddXR3ZNnqw6ZiuLH2tXkLaApl2z45OpBig59sScqUJLaslB/pP1ywUg/ocaVqqHRJ5qyS6t8TYNgohHo1Y4WwFaUGjLE1F+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK8yS9qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK8yS9qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CF4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791837033;
	bh=wSDMeGzqcFZO3RCk/ZO7I51T5GgAThcj7JKISzEto0c=;
	h=To:Subject:From:Date:From;
	b=rK8yS9qhyCXE5RZbkIXKfv9Xak74fhtlBs7h/G4Aea5Ze2pwXc/jNFjyBWN2sW+q5
	 Dva9tcpPthZ3/OsvQNJ2yRgEL4qLzftnMoaxmBTGDbqUZnRE4kztrxvtTOtBvyjJ4y
	 12YBArG77KcPmOh+oNFQu8u83hQvwrg07GegayWu1Qs9zbnXC6lNK5tV7fdfJlpdDT
	 n+8XDHET8ojL/c7QpxpB5TEDWGuJbRr0fEltXEfaISi7u/XsV+sIAHTjvR/+DDEttP
	 FtJFd7yXSqrrEsmYhYqEc3+beu7nfvc6Rvwp3KsG+Mj2BYYUPeZjQKLULDeryYpZ0x
	 2oMBVYIK7TGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFD8CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183703369.18896.2596854909517588411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b363f0ecee5f0ff6c123d83db5e02cd7dc02ad557ea954d82a5c709798c417
Date: Mon, 12 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791837033

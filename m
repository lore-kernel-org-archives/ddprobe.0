Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9E31EB5DB
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746166194; cv=none; b=Z1EoH4D72ZrkxZlSNLxpheOz2GSChPeKqxM3NxzbID0cQiTOvQadiW2oXtfMM+KsyvaHySPwesv6nEcKiT9cP4N9dzLABKBkLuWzf0uobpAnygCakQMUzQdUGTXzgSl8P0b+UQXTk4PigmiI9z0ZrCTb9m+1qL92mTOJ7dcJ1HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746166194; c=relaxed/simple;
	bh=653MlTuU+CEnHqZIqyezMH9lc/kKaPuq6ML23yyVL1o=;
	h=To:Subject:From:Message-Id:Date; b=nKmTYbQE8ZRVQC7zcSaYtnt31ee4cDkLBFpNBNErccdv0b3nIaGAjSMecmTjGX4WIZbwDNYr0g3QIObPIOtqMLBtUtZf6KDnNZaklG0rjT6+O3KtrH4dkVKwfVJi3dHCjdoPCwte4FE+4ZPh5u62H2rcubLF8MfVPXvn9Zk8Z3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqwFkGT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqwFkGT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746166193;
	bh=653MlTuU+CEnHqZIqyezMH9lc/kKaPuq6ML23yyVL1o=;
	h=To:Subject:From:Date:From;
	b=rqwFkGT0x53yFycua0Dzx/Lh3oBseOoYG/tv+R7yFHC2iL7IfUbFM6d+fG5DP/y2+
	 0uVLAOclZg8oZflwHjHQBASqsmdFutCgLmsvmdQZ7uR0B+U0GRZSqClTlN6Ivw80sF
	 ZqeSjnv3wnNfr9XiISrqXA52LlAWF9/QMWQeMYu8LOOZEv70Z+SeQ33N8r8I30Wf3O
	 0SWH96AkX3OigXvT9s8jMGtRrJccMldCu584Z47fA7asxTKTEsLx4lEW7BTVnGgTz+
	 Bl++tAfF0DoqJ4nDD8xs3wNxUt9OXWmyzbAaK1YE58tn0bZ5l0jU88bjcuYzxPxwTD
	 ybxXh0HkX6NRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93518C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616619357.10252.11992145294501063109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275c651a7919658c9886639d5cb75eeff7ede64a34a56ead5875a16f3a40c739
Date: Fri, 02 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746166193

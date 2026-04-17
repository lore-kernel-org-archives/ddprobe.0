Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BDD3C5DDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776447454; cv=none; b=F6nrWWTY4bQtzUmLHigy1EqLAajSxepncL6acxVHmZDxSqIVZ5ylOzzVCPwnLGWCRsMtTD7CO7XRTBBPqxAvqndMJKsNt8A4/wbbhA6iJK5LbEEYlDS70ONVHbXJDOWZT+SMlCzR5mr038s0Q5XyMKD6KnuVFRetNf6exCYVKjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776447454; c=relaxed/simple;
	bh=vzrO9h/iyM9+fnC6Tdq8D2XOw4VVhpbJlt09Sw+swco=;
	h=To:Subject:From:Message-Id:Date; b=jufQiGU2L8TjvVuzO4j8WFXDgW8Ev9SZsdNEnDYdo8jNWymG0GWDdgJUxxowaEmpFG8lKczVhyEqH9ZNz4lePZ7owdytywyLF1Wy3jkiMQIDmTbdie8ij5ljEPxOqkNe8tQD80FYdqIYYPL4UVcL0zpQ6YnATDd+QfxqxcXmiDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayam28d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayam28d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDEEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776447453;
	bh=vzrO9h/iyM9+fnC6Tdq8D2XOw4VVhpbJlt09Sw+swco=;
	h=To:Subject:From:Date:From;
	b=ayam28d9W4vM7NUbmpiHU9vDaggx591l+yhfOX8E1GWCGdWmy+hu+wcckWdJNsyGs
	 nrldwl0T4RT3ieN7Qj1T6quo2QeMYSZWz1CUMFQJDCsj5jm+8nIOoikr+hLWIkJcD8
	 BetV6vqkP13VVsHxPSQS5LTLqenhM/qiEUywTviynQyNzuJIJayWp/Lm+ZNKadSmWL
	 kFRrz2Qob9NQ4g+e5B4wVwfMD6NYh/NpmdeNCAxxjQYLTnCR5v09nq2Txy/ehKPUE1
	 sUdGnYfprFv9IdrtcGT4nR1N4H7M4+QdAMqFQ3neJR83LQ1MkWngtK9X4xpCX0mkeD
	 I6BBf5DY3Zfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB971F436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644745369.857.13941310168590035838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc53871cc68b96cc4877df7c8574904f93d4b67506eb5e43a79acddefa3a0a7
Date: Fri, 17 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776447453

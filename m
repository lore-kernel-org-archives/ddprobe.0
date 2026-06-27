Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B878F26
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782604114; cv=none; b=E3+PGrX0xxaySfWiufawhb4aewL8WQ9XyoOUPY/a9r2fSonjeRO+51whZ0OGYmQJTonc94+UchLkEaOmXkZ30Nera48sv35BrXFw2ffZi7Ai30hVTEDG9i5jcJIBDtgz8bC0xGdyXYcuoxdEHkpt0QOvhUK4AjweQ1n4SbNJFgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782604114; c=relaxed/simple;
	bh=wT9XX6aghoetX8ITtd6Wvz8pA3exxHZyu+BoRF/Z6l8=;
	h=To:Subject:From:Message-Id:Date; b=uPUzUYt4AP/+jMDt3fNUCgO+S5inAyd8xDygyAioZ5p8yScUlWfohsZt2Xb/QyQYt/TkRKuxPsj9ds/pm1wcheV9hkl37iHanRh37ZrnHweH+2lqJ5xk9LPTNWpzLFks66VMYTgROwEvdqmLVj/bsUplw4igvgBEtZj5/3KXjhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpR+XtWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpR+XtWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF002C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782604113;
	bh=wT9XX6aghoetX8ITtd6Wvz8pA3exxHZyu+BoRF/Z6l8=;
	h=To:Subject:From:Date:From;
	b=MpR+XtWfoP0MhlHiDgzM+dr8t9oO3VfzKQKHYcNZQ2zJBvwDke4Os8sNwMK5AC2Ip
	 OMaHe9Lp+SDvwqUhcltTK6EpC7v5K/yv89mQoA3eKNRKm6q6LWCGFievqEGioARAx9
	 wkFbKIlb6S0i5zOhzaKHmLz82MwJzrP4iL7Ird2uCNnCmpdxEoRF65J4cQ5mkgr8vj
	 QuuxE+gy5rpk8PEa2c2ttiTo1s39n1A3ls104CpjUHyI2gTZrPiC/hK/jhCJ7Pnf3P
	 tVMjji+uMiUgwyaNkxbH6YJcUysH5gSQB+Dbl9PfCgrn/4AFblxdVTqt8jQlRgIhGw
	 z3OgsPjPtPFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32A1C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260411369.8618.3663663957860440630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cd692dcfb27865c9a0793531d180f1127d41ee5cf58f153baba5071cac0399
Date: Sat, 27 Jun 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782604113

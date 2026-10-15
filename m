Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1102264A9
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792044034; cv=none; b=KWKo6VyKfXb7WoZuMxADSwjAzHo7HFkxmj6+bxCc5HdwpwrLowjj63Zc8C67pozLe1+ApPrRw16n1hVeJnS1oXOIxq1OONQkucCxiRzxAJF6Xfavjb02qdjsnd+D/gy9KciKfZJbAyZ7955mbx0o7H76JUkuoOPZbdpMCEG78UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792044034; c=relaxed/simple;
	bh=kyOzUaEUhe9Aq1b84ukwk59m/g62Js+AcGEH4FJW9V0=;
	h=To:Subject:From:Message-Id:Date; b=GeyJ0Qutxv6SkdFLDS1QukIzQkk9yyBjmtyIy4mk/T3aEA6su5POIMDhOcZfVs8wpIbnp35YNtxROJqdJ2WmgSLUJbEOtA7RC5Qa3ysJTi4sr2K6iqvzPYOyETVv+Smw8rRFruc/QpF7Yro8/l57O93rzt/PBGbe8EWQ7SAzw/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLvC1Rxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLvC1Rxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64D3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792044033;
	bh=kyOzUaEUhe9Aq1b84ukwk59m/g62Js+AcGEH4FJW9V0=;
	h=To:Subject:From:Date:From;
	b=vLvC1Rxy/Q7zH/yhePiRccr77YE8o8jfXXfXBuc9Kwk6QlT1rLXCWe1A19O6iPQV5
	 Rgk7B0EqQqGnmiSdDpWWctIhp0zTjuAX35hwr8ts/1pqhCTHbiwcEh73iWp912XQkz
	 PGj149XtbKS6902VMO9Qk4RIMbpcbjvfIQim1pENRa3lACZx+LrkpEw7Y2yeU29kU2
	 bkYPlHtD9mI52lcqbFvF+C35B1IPF754jzn694nvALgvGbwAy66D/f0tOcNU9Xdak3
	 EODuPGBWrWOWhS3ZkSgi1qSePB7Xu3iw9fEztYO/iOQsTC52nUpuSyTodrojQVfjKH
	 6DUXgh8JoKuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1153CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204403370.16767.3923806138493655492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a7c0b4755686a1cc6e13e0d32fd1673f27472390d9b25d664021084b522ec5
Date: Thu, 15 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792044033

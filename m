Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E646625
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759012794; cv=none; b=hr0nyb+s1fKcdYWUiW1mjElR8NeUaZH2k+lahu4Gpt+jybfRCblNVfYurIW1JTp6w43Wt1MRfMQqWnHpUZFOq0lF/jMxpkY4bwDymRBMYcWv912Il+r7z2zHP85sFzJjtQ5045bOPe+Z9yThnGs0Vj2f/wnlGCROC7IvacJB2l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759012794; c=relaxed/simple;
	bh=PjKuIElSuGcOf58zDkyuCLv7lEVIedZFMP3zybibmYA=;
	h=To:Subject:From:Message-Id:Date; b=GNlEpcYWqvkqgye9USeNkrrlkC+t/OS27y+Qxer9dbSzMT7dYG0TnlXlTDC5iNjiigNFlRrXhkWlIAqhCz/fdU93yLFzusFIDaFbF5W+XjkqNKACu4nHd59LFdEaDRlTOK6OfdYVrqQgOSQJu8yLHMv90FKuhDjzS1VzkVAxgT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx2l9SF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx2l9SF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F843C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759012793;
	bh=PjKuIElSuGcOf58zDkyuCLv7lEVIedZFMP3zybibmYA=;
	h=To:Subject:From:Date:From;
	b=Kx2l9SF96dPRFjyTkSTL0AWN50unmZ6UXdm3CL9CuS06jTJZo8WpUCBI1ERHFlfY2
	 vRWaa7TlvVdJGypUurdAqBg99+0MM0yuJUxSJ8JJf3iSui9JhNt7Mbox26BUQpsp87
	 xXXPb/uAdSrlzfqEXdRZRjYOgca5fGolfnKEWmkwLSabf/9LEI2CSF5Z7HL+b2ZSNS
	 2eFblq2BBFTcnGIHFMiZSpyiZTGMITdkLxQGQlQIBLv8TEIV14k5wI5s9Sng3GxsT3
	 uLtSzwNvPIzRCTdKIEHkMt6Q1eCnn6w7Gum3HqTuxJzAyjjhOYlQDb6Y9MWaMsCzd3
	 vILpmCguZDHyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA77CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901279358.14373.3579917842582064216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40789fabcbce681ae4c65344fbf34232c2653eb1444221dd215699eb377bd026
Date: Sat, 27 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759012793

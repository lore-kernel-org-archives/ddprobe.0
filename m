Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CC81537C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736316954; cv=none; b=nY6WbcdagmHpge3wYl6JOIqSvRis1otJnXOXSmsfC7NDQpjfeXCm1V/bqqgqTAI23k8AWuiU/gEWo6qdGaBKnS/rkaX0eji+Jruso90m/yYhyFUFvA9pSnEeO1EWK25FP5bWY5dytvpx6t0YA1wLzjfrDyLgUFFnV3xonwXOu0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736316954; c=relaxed/simple;
	bh=4Vb9AWbiYu61T+gbZ0CGwswpRnTBzUWXJSfsZrgktXQ=;
	h=To:Subject:From:Message-Id:Date; b=fjRrII7dLOY437zjssYbN7LoUlmKDw82MAjcTO2j9xiGxW1eaqjAiajfGEdmlWCUu6V1wroTcZCtJByJx2Qti5RBkdV59CeaUrrgnxtsjvHlZYO9Dfp2r+bW/8N6Dj+7faWOd8HpEO+Kl50WFQEJzfK0XUcC4LSUZionw1GgrA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxcJdroc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxcJdroc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8782C4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736316953;
	bh=4Vb9AWbiYu61T+gbZ0CGwswpRnTBzUWXJSfsZrgktXQ=;
	h=To:Subject:From:Date:From;
	b=MxcJdroc2q6oMP+LHJuqRGVY0rUNlhkqywGoZnF8OImIssJqb79SvPBvMYtXP76vn
	 yK0yXu5FEZOHP2NB1nas6n067NCIiQelbRdV65IvvBzYKxl5Gn/K6SmvLNXYu6uBao
	 3Bilql2EfQqbeKR6fjFiA3nLN77jH1Di0lI3tp7oXDsTPUfDsWamFVXAWeE8kLXz6r
	 SbhQGrxnI1MB+JRj7UJsgrYpMsxQZjIECU+a4Fy3RHhoMY4Pc7L60J9bq5dVp0nm4J
	 Sl24SIts/7+4s+o0L+2o4jGK6PkDjaD+YQNfHFk2Qw0bFaL/WH8LZ31klgGy5slSo+
	 aKqeIey6uqmWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00F3E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631695361.8092.9523370965204721639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bea3e6e7e2ebbc5662086103b4769de362b30bec2a4752f7d992ddaba8d72b
Date: Wed, 08 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736316953

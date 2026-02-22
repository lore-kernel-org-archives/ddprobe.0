Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B63AD4B
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771731894; cv=none; b=NxaWFlwOU5TphOkGMWgTt3WwI3N+kuNlT+hO/KYUP/RFGMVGDrAwpW34gKMcgJf7A6AbT0m74vbydC4PKSzr3FdVbkHNLQEiR1D0ImPo0zyhO2Cps313Z6j79qAAJ45sfs0OUIdxIDB3jFCqCnyXl8WRI727TT3OOXn/qcbCn5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771731894; c=relaxed/simple;
	bh=u0h10B5piWQ+WStu8wM+LEaAzVGHf9Ta1s2oS4cHqa0=;
	h=To:Subject:From:Message-Id:Date; b=tQmHC1/mms9n/NltjXQsN2lqNoWkrBMfsEfGk+g9WmISA06KzkYslWMbkqY/7HfpHvdd4m9g/9dfrceCGjCagKCf6wvmZGtxvX/Kny1WNHDDc+GxW8XPSPEncgrG2I/IFALWMSgoXoklv9AqA0ZjbREaIAIp/W27q3CihaRiT1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoBsQ/uK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoBsQ/uK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40D9C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771731893;
	bh=u0h10B5piWQ+WStu8wM+LEaAzVGHf9Ta1s2oS4cHqa0=;
	h=To:Subject:From:Date:From;
	b=QoBsQ/uKF1aFBhWcpknhsdzQ5kKB7IkKkbR9OdJjwFadQmp6JC1vtcxXQaojiFJ1+
	 KG15n5CIdzOEDr0tT/8eun151+utajSEDEgr1ihCsCsJE3jvBekDbAg9JXKJ3I8xob
	 ffcWsnTk2o/v4EjDkbF1jgdf2epVYTIMAkQ3fX7Tp9a1LuMK1zimRdc+bCyrn2UiFY
	 Im+uZRzk9CdbEQBtDAsHHaXWFuZnK2Ke9G2TohKDaQ5IiCC4Nt40ftvhonPJptIXpC
	 TRekMA1el+lp/MF9c2Fp4Fy9FGxjPYzY7OQ3Ati8pIfvlCNN1rH9q0zUd/9j5Oi3sl
	 se4PA0Jwhn7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C81BC5DF73
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173189361.26708.4700489306779794460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41f66f59098cab5e15c7219955856d42f19004bd8bf6df4857fc9ee069a5d67
Date: Sun, 22 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771731893

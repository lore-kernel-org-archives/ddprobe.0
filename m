Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2A4D517
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728723353; cv=none; b=uZgb9GGZ6sGlXo9PJGw757uaO+S+wnrIX1xbVWZmH8j5/+GwXrh9Hvfzeto0WgsZK0AWLHRrt1+gH04WAJg27tUlRYDh6GPjyldI6mEHen6QfnqEWFxclXFvSK8yCJhbyLLlXPCkLf2nStI9kaCcO/etJtP1J/SXaMPC92evSXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728723353; c=relaxed/simple;
	bh=QSxpjgx4pUrXt5ph8WQj/LWLOWgrrupxWRAOLXY1t0E=;
	h=To:Subject:From:Message-Id:Date; b=mFdypxaSaC1wX6TZHk1Gj8IwW3PPiAd92G1NEOmSgoNoCaB3xA+FUDuRcJ3vPfc/zJw0l9oXfvq9C2j3SyAYMKdX+cGX/0/zue0eWUWf40C0msN7eNq+Jj3iRZNMEPog0FQ/aF1HHGVYZ01wwhJEcvHQ26PxQFYcvIa5ydwbgW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc9mHVIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc9mHVIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC2C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728723353;
	bh=QSxpjgx4pUrXt5ph8WQj/LWLOWgrrupxWRAOLXY1t0E=;
	h=To:Subject:From:Date:From;
	b=Kc9mHVIXUC12YwlsnI7S8GbI+wYKJDt/l32n4tYKqyS2NAk1hz4VWDhKtOu4URQ5m
	 haLFO0g33HUGz/2kwkwO94Re9SuvKffl+5os9tTD0U8ThAl/N+p4HEXFj24VPnDef+
	 Jj7Zyajtsw8j3RQB/a9MalBALRLORBg19ar/Nz1J4QXCKieq1O2EYTVBiZaUBGsuPS
	 6Y5FoZwGNuQ9JoC3qJpB5tlDFpMXTzXnUED0as5+dG1rkKSFb67g534jLI9nhzf8tX
	 dUck2bm+LwConsgG53a2Nmbp3l/42/cPXQqSTRcEATdMQPFQbluThC5hOm7UdF9f0X
	 PZlKHEPhtsXGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A77ED1A451
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872335360.29878.10142331007015052230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc7f02e14c45e478ce402102485633b35de51f1e5dd56e5cc404e55d343dc02
Date: Sat, 12 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728723353

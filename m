Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2586D24466D
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753651794; cv=none; b=p37kxiQ1hAirc4qwGN9YmgzarE6bcoo/uRkiX3g6QB5GyIeLZFOIu7vMnCD9RyR12Uw37ky65Ei/z+Udppj3Z0mqH1HJqAagSF3CCeY1a+KzcT+QjsiKERpWC1oWz9owUR+WugaERQD66+auB1/UMZZ2K+oZtsGpUo2oDhRMWOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753651794; c=relaxed/simple;
	bh=Oj/peDrD7oiz05c3oaA2MctWvGhJrsKuQetBm3s000M=;
	h=To:Subject:From:Message-Id:Date; b=Yuc4tb5WMxWvl7hO/I+vB8yH79xmcxSHm7anINhbWLKlFjLdKJF5SaJ8neK7nifQT4ezPHVralrZjjpwH4e/PB3RwQLTgBVnNV/Pm2iaavgYFinnbPBLUQauefN2j4yRxxzmY9iSX4Pg+4BHl4aUO+A74O0iyXTr/DmCcv0rDms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDuKRjU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDuKRjU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8742C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753651793;
	bh=Oj/peDrD7oiz05c3oaA2MctWvGhJrsKuQetBm3s000M=;
	h=To:Subject:From:Date:From;
	b=bDuKRjU9t5IMCh5VoInenLQ6oN4A4e+4Rm350xfAxxHT4xmT/xQVziXzs3jKV3o81
	 hbUmPaNxvNmoafk13uOFRghCnswRYD9h6xh3jSKrH6NAp2o8CVzFEqfI4ltwBPYy1O
	 QEIayaeUMI6reHOVtKszRxofemt56j9I9QbUl2JqWWEMs14QYzZVg1M84etpUac6yI
	 S6TZsSyUCL3/gwhn0Z2vtg7TbNjhcvsXrD+o049dL3DY1fB9hOH1vcAIhMlkUqMA6Q
	 Ft3UjeFD9Eu1eTzlww/x5o96GsxurSSFPIXTF7PvpxJmZIc157TFfhd5Jnx/K1PwqI
	 AWXHcTc36mGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E46C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365179358.22335.4230388537408342172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f027ede034d594f1985005bd65764345968d01e3660dfad0dbfdeac5d97631
Date: Sun, 27 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753651793

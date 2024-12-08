Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25262149C4D
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733671554; cv=none; b=nd+8ZJ7iFbdY6QQfIYE3galmjQjj5M8+NvHK7c4xOaHfHA/lrxc524YPFCkrCn1IOHq6WYjLc5L3nB6E9Pub45T1aRPXrFlA+w6MclvKboIc0kEhjDs5CSHcKlFBEZ6WqQyi2Hfn8HYRM3SbXANagm98NF3AzM+urf3wzs9qQF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733671554; c=relaxed/simple;
	bh=6j13eSN1x5ZDhzUSL02d98xqNJ63472iFq+ZtbHuUAQ=;
	h=To:Subject:From:Message-Id:Date; b=c60k7ZoWB97yBvbQKF27KKxYbUsko1eAQBJabi8PefZcwGcFUzSvmMbd4RJtMaMnLmGvP0YL7igIxcbkv3Cv1xEhkW1cUAS2F7SbpiItE1T7ZS5ER8mQEcGwKXZOWSRPXXi+v/gpTxXMorhJWdCt/JPuTUiqwkZ5RsrMx1n1V5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLQl1XGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLQl1XGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FDC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733671553;
	bh=6j13eSN1x5ZDhzUSL02d98xqNJ63472iFq+ZtbHuUAQ=;
	h=To:Subject:From:Date:From;
	b=jLQl1XGhVTp6PflGLBCrFKDihhM+auU2KLWF0U4j2j7MBKuvnIlUbhnUG/lTKozXS
	 agSZvAQQOLsQ7OlCPJS3XMv3U54R03pQZCy5f/PGYKvkYcgBJvs/wzvRF8dvcvU8fF
	 Xl2smdapMQI5VPlQwnqUBGHfvz0RSJCXJdlB3+xVv2zETbr3Eog9DY5a4ufkKQX3Z1
	 mQpmDn6a5ejgS9TEayCAVYAya5nIjUNEhzUeKN8WMScvrWZUry2tL/zK53aokqTj6x
	 McEw65kHmsOiAHYhc4wcE9ZPk9Cv40IIEGXYYhdZPgWY/Wh9Yoj1yqa84ZUi8/kIHG
	 YJKx6bvXOGhSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FACE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367155361.31649.1522449759598640006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6ec03f1737bd7b7c30d53ab4bcd641a5c0f7a3e5ac2cdcddb73c3d997f2827
Date: Sun, 08 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733671553

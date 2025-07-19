Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374ED1E0DD8
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752952795; cv=none; b=uW9fZ9ssD0gu8wYnwox6yrunJmClGOgNZ295lUryXdNqm+ZQylk3Jm1CWA+6cCzbaxVf49FZK/davUerH+Ehd2brNtz8LSGZ9cbN5XAbXLBOlcbpEdNz0dyEX9SwcVePOiDjUvxZtM3EvUjinCi+7skqA4rDlyP5qmFsqDDyOew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752952795; c=relaxed/simple;
	bh=y/Uus3LhGtn6lsymhMNh1aJ21lVZ9MOTlHf0itKx2Vs=;
	h=To:Subject:From:Message-Id:Date; b=qIct3Xv3oSOGbK/6DsVLXnV6KnS9OXicpidInbb/LX85Y6D7AHGGmU9+3r3ZRnIjONNx6W5nKZ4VQKTybnNgIZcHQex791VF0ypLD+7OxCkarE6YFxaLMbwhtUrD/sub7EqMQSwrXX7tn7sEr64TopKGYvi3ilGZ5O7aIn+5Cw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q13duLpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q13duLpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752952793;
	bh=y/Uus3LhGtn6lsymhMNh1aJ21lVZ9MOTlHf0itKx2Vs=;
	h=To:Subject:From:Date:From;
	b=q13duLpwUSezlq3dEpaC7qUWuDFeuLHc6hmIYgV4eaQv4b3qt9yz7iiWkhqYu+7yv
	 lcmj/lzYsdiPOuzF9mQEiEh0Ks7NBonjMc3Z6LYSoOEGKQiayH5jII2enJlp+mfktH
	 G970h+00/gdiCrJOGJdE7oKflwulLAtvxLhjdSg7X427PROYH3nPxtheroQH3vCDsB
	 K0KybzCTgjkEGBSXyWVfBPLaVaaMoP+90i0neik/zHMTDMKYIUxNWhwRzqIfO206i0
	 4CiJF2W2GN35xMD05z5/dn9YkXQ+76hQ+0LFTZ523PoZTtMPF2qa57+7fXewhjTiVs
	 g2IP4hx9bOzOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213AC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295279357.30555.10372647585438707169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d281d6eaa14878bb0217cc56144e6872c5122af5c904d0889d179e8a746bbb47
Date: Sat, 19 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752952793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01163175A9F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774748094; cv=none; b=d6ngdgPhilydiFcWYwffHKo6EsyGoeP1DD6kSWA6gioxoDrXwe2rVvwlr6shDE1/NowNcd+zGNkJpn3Yb2jgwRvyuDHl5Ydy2N63qBYUt/Wzki4HzQqpP1QSvwRZ4+GS5Fr67KyrpCOtma+9B7nbn9RWSLFxLC6l8BdG/nrZmoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774748094; c=relaxed/simple;
	bh=x5UtcyTKzx0GfIpzWKaR2Fg1N0lL9QCvT+z0WSXlPZk=;
	h=To:Subject:From:Message-Id:Date; b=QSuP+sAtOwPhMWu0qkzc5dOAq8Givm+MW4I5e4AHigu0cBR1NYabl5J+6/5ZfU1Xr7nqaB6CHLSuhmZOH07Fgvc6xJvLQfHYqkG8rtWpezqSzyTBgGvUxrJYj+iU82Amxj3b/obWinrEJmbeBM5g+vDKuk5uwqPUcBm9pLgMeaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T81Vc6sX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T81Vc6sX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A723CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774748093;
	bh=x5UtcyTKzx0GfIpzWKaR2Fg1N0lL9QCvT+z0WSXlPZk=;
	h=To:Subject:From:Date:From;
	b=T81Vc6sXbZTPS+1FKOwpMBfrJHbwHQu/Fcd9r4tQmylNJ8HZlP5f7uy24vOgqUVwP
	 RMvIYD99n/12F3Rhz55Uh8x/T5g9rwjCy5/W1sBTbBJiZvKwpRsfw9FcfGKNBQE8aj
	 Mmy2Uzs8gXRIjGZSTGyIkcqow6vp4irfmr7ihaGke5y0EIBonCtlZeyM+MD4EhgsYp
	 +keXk0xrEL4E1NB94OzwuqLxTOSAZsO0JpUC3E2sb7hbtKCiuL/yHJtdJLvNiDhIAQ
	 kSTZ6byMJDrKIHU5XjaX780qWPYhZW4dBwJuQTMCPVRe28oNdXT2w/37KZIwUQUzCN
	 MfnrpHXWOontw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9482210D1491
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474809358.5762.1915866872752896823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201c4b53e55a0e73bdd1edafd941f48a021a223d7ed9c4cde0370f313e8ffed0
Date: Sun, 29 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774748093

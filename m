Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422D42FE05C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780205074; cv=none; b=VjqBJZas0lKDL8umq2su0bXUFTtxPzhvKkeuaqQYVwZ80e/3Pupu0puu+TUISGVaNyVYFo2Ci8788u+lAZRdf+IghaboUJ461Sjrr316nCgqMbQYIaX4vRVy/E10fCpcfQ60PSCWM39TmxCNAbNWGI0OhetLD7XtphF24eGTB1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780205074; c=relaxed/simple;
	bh=FNddyUyzVDiUKRlvUUKi/wqXKmYpG0THB6BNRzjAxyE=;
	h=To:Subject:From:Message-Id:Date; b=hgaiw2XQXzJ1KvkHhn1SPryMDRvKkiqlYH0/ZEnhpOOpXA5jMgKEap7hgevrZbFbuYwztlQhIcRb7iUpuVaeFX8DR+mdSPs5dDJmJVGf4buvRjHqGTnFib+ab8XJT0c3FNIP6k0KNBtOej8Bm4TVKdMk4YnkolRgVeFBtKT8M1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7xLOuCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7xLOuCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA25AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780205073;
	bh=FNddyUyzVDiUKRlvUUKi/wqXKmYpG0THB6BNRzjAxyE=;
	h=To:Subject:From:Date:From;
	b=G7xLOuCbln34UArcyVlOs82KoPxxvoG+0L7ZTLgGdlaLgyyS8DNrZoI92qC4N/NlU
	 Z5x8qfRR/4zy9yo2szHtH19zCXrJmrRen+lrWQjiJBZU7zlr02i2RiSGNg+5VlCq4M
	 Q5XpG4IrwoB5P0If1dAqpc4D2zvtxYVs+RExuQ0FCJkhTWJRA8oZshUa1wQiglrnua
	 hR7Jw7HKiI9RU+n+LmZHTF2YphLPC0ff6iTwOBr2s4+v3Tz6Kus3vDr6SPiSU+YcoR
	 /i5yi1UF1KCgj1O9yoqRfdQePLHsqrIhF9x9yUlx1NAMWO7cmOxYZWYdFMrtrWJpAv
	 u7yJ1cujoNXKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB566CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020507368.29546.10535031510800366793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11108a10a12a0592cc3d8633226f88d478e436b1fd2c3b0d0135400782c0ff3
Date: Sun, 31 May 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780205073

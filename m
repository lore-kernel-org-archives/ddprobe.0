Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC6823BCF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758118796; cv=none; b=pJetAQtfzWQbSUog953wvIOoASzHVxINapjra593PbWZkzbJMaId72HhUq2WhAtHy7PbatYvEVs0gvUFr7X1m3m4MCkvV7q6qtKvfOJFZRO/uQX9AWcoT5DP7A+uakJAsD3S6Y2vW/EOqFI+CjOAeZpIR/QLhVygN/rFHNlkI4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758118796; c=relaxed/simple;
	bh=+yvj2D9k7o5bUN+OqGFE5PIDh7Jbni5VA1t90J244Es=;
	h=To:Subject:From:Message-Id:Date; b=cPzumIbeX9N1w6DnqZ7ruDsAAZGv369yXjz94jjcprWUDCXKG2lqCcY8Eb8iB4KtoAhkvm20+lov4ScaAzc+6cBIyYc4qDb90+XaDKiprNnZetoAwtLqdYuT38Hty8eilwXIsNuN5H4DUa/AxR9ytjX7x0ooWWZJLwAAW1lTDJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+8jDWr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+8jDWr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DFEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758118793;
	bh=+yvj2D9k7o5bUN+OqGFE5PIDh7Jbni5VA1t90J244Es=;
	h=To:Subject:From:Date:From;
	b=P+8jDWr+AKqVtDAVKo8575kmFKs83MY7naeU44nPHyEMIs8MjkKxt2JfibB8zQbJk
	 ERwHhTLttvaewnJqc04Y7Re2DYKmuLXW0XM1KVaLex0BePIMvr9eEgcbznKDbNLxO8
	 uaZj6ueUKf48D1o92eEibMv1wDyenl1Dfp75BYGW89hNhxSEwhV/mgkX7NSgV9Hpeg
	 zvv7j2lb7Pw1ef9V9siKrlWCxL/OkpYPhZWgApc3xCvmAz1OkkQc/CD/XTlOc4JnLZ
	 MCtlGXbsZyxsCBCUj7yEHtDnt7x9o7Z7P0DnbBtc++h1Z+MTal72nlmt9vowvA0gvM
	 vAFDrwNirsDLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D0CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811879357.27098.4009012644810760565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e920ba4960c6e374c9350f34428c707cfe2a460113beb849a9867a953782866
Date: Wed, 17 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758118793

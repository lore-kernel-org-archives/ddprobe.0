Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDA4160
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712276296; cv=none; b=lIgs7jwvuKIuGRm6nkUDIINgl3WgIqoebHLPT525OVujgZUSUdsNG4y2WcVolreuduhLaEo4Fy3eq97lUxTdRaySL2wYVvI8w12kfkXIXCWXYKq3c1tH9gwRh3JkENQOIZYUJaSk94idgNtiZqNGgx5p6xtmtfwJYODzOIlOGLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712276296; c=relaxed/simple;
	bh=QWPTdtS1t53aqHTCCUM3Smg1nKJWQ7FSH0XlwDG05Ig=;
	h=To:Subject:From:Message-Id:Date; b=Obf8pjCS2ZKpTlATwustVkckv4L9TKjC31zoCCynPiF/bKzDTPYUvsuxHNXUXMxK2X3pw5tI+FdhUpxGQ8yB4OCx+oPs4y9UZGhazqkdaiGImbXrdVKnMOYuVIFXXBK0kuIJnJzjGoqXSIv+fhh45kjNC+VsjECgcRPqxDPxkds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmLx7vGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmLx7vGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAF8C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712276296;
	bh=QWPTdtS1t53aqHTCCUM3Smg1nKJWQ7FSH0XlwDG05Ig=;
	h=To:Subject:From:Date:From;
	b=VmLx7vGFr8cDeefRtcQjLb9ESJKZaZwZRn5khFo4eW7xVC025y3IDUX+lgqef2hco
	 x0fsCDgAxhyaM6iDx/v2CFS+zgbHjJnwAa5te63f3CQXxPVbu2xE4c+FZ0yzzT3OM3
	 +W0COTn6s/QE2v/O7g+uZEntJHur7ZMXPkwZga5l43vSVxfEGkQbks0Cn7J7ZCbFFK
	 DN/vGp8X7PL8MZhE3BEkKd1d0Az6LcBWejqFrQ3HZU4eYBuJIrLXVExaNPa928ZSti
	 9VjckwTAiDAsWLGgVJTiCsg8CO/kvFq3qQJQv1CNqLUhB0X0V+KMdW90/0rV0XXsvy
	 K2u39bznmZM7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E819CD1284
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171227629637.2721.6860855297899828893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b047c77a9d4ad30747a888e0a138518c2739ec162183c74d1f27722f237bde
Date: Fri, 05 Apr 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712276296

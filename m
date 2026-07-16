Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737E12580F3
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784179114; cv=none; b=J5cdXzIYjzc3GPm4nDtt/hGWWA3DIOvu5Acr152zrpIChic49eRS8FWZdSMShQA4vXE58L2kMe9XI4LjH1DSqMUTeJMGSpUdRR+pVQZnofhZYsrVIHXgqm3deNBwK1j7KueAKpS5KQSoNHek3LuDWoJCIuYFUTDX0ggovV/FVos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784179114; c=relaxed/simple;
	bh=awvsgaNqs6Hus9Lp1/AyJVlquNEWpyBf46VVaClDCGA=;
	h=To:Subject:From:Message-Id:Date; b=LaDm4b/EP2Cfcj0keQPLWE8c46F+WqtyCGzG0fcKl31E5fYRZtG/bVudczElkWAiscu/PvSeGQU+K/ZUeJ4Zb0NA2u7BX2mKEAXMamjNijdWsS1XzeJRC/qsDE6Je9HIZBSBfj3Ro0qmQJ8ZpbX1gn9dx0EQbaEfTaDNRSJCmgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smzOM+Pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smzOM+Pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAE0C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784179113;
	bh=awvsgaNqs6Hus9Lp1/AyJVlquNEWpyBf46VVaClDCGA=;
	h=To:Subject:From:Date:From;
	b=smzOM+PqFPpjDnN1vBBdIwjERBA1f15P4853ZIogknIlGKexe5ci7Z+RGfaJsmqSa
	 qPMLEttELvFczrQzDZcXovBm7FVwKHKBTCzlExKqOv5J1jeOLYuoHQiS7sRl2QR0uw
	 UtUrroRarQMvuUjNsz7gU7Zwy9MVIZoTutDO9Zfz8MD36Hi13p4ILitB75+VGZhKI8
	 +tYckAcHMPNBgUPwavDl/SnuD12nIenrbE3tr2esYkUdlDY51Pk6mwP2sLehVScy7P
	 SxISm2gOh8wxcLMPol/pTVIJpCZi44gFwS5/Uhs41mcAiO4L666jp3EOpqYQi0X1I5
	 MVfISb+jXa3rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2915C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417911369.1169.507010994825911871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc6545fa92ac5a2ecb11dd99a656df359433d467849ef34cbcb736c848343ad
Date: Thu, 16 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784179113

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB3C42A83
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743943195; cv=none; b=FThpegpds26z+Z7z4ZWfQNWMOB5nz/2IqcfRFWbUGxIL+g6g4nBWueg37uPQiA+Qw8ZpZtelJIcV/b1x9oGIadplkjkAeWeuN8o45NoF4B8FJVx9mxkul9D7jsTpqnp5vWUPJFx8hFugEDrSn4kjrRSwFMmg3F1MB41VSuQXKVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743943195; c=relaxed/simple;
	bh=wJitRIFH0PqdySZRCaRe/RvTQIbBHbdYFnaQwyKWtYA=;
	h=To:Subject:From:Message-Id:Date; b=G37GwHuBgIHom13M0ohnKJT9HMshC1pMdviJ/4/ujCskZxG3ihMDQ0sN1cIz0N1V4I58vVohM325EHJA7QCTNuwOrWumQK9QpmlRKlQXJCNbeED4kgHpg54FzoGKjUVAPA063wClIfVvu1KY5vJWotHgamvx52hIqBCrTuQQEq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/BIKwLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/BIKwLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743943193;
	bh=wJitRIFH0PqdySZRCaRe/RvTQIbBHbdYFnaQwyKWtYA=;
	h=To:Subject:From:Date:From;
	b=R/BIKwLDLBPbW0HELd+4fgnbMoB7QoaMGFD/5koJONQQ/AUlY7nfAGEdRecTYuCdm
	 Kup8PCwDBTOI6vsKIjVYUDJXl+7IdduOwWs4xHJ6yA5Bv7ivAkzMEphTCiq9/wJsbD
	 5s6YVJj48PGUwCfaxzZQfPmDaNM3L3V0ruL9WFKJdGoz4m3u7q3nui9HaKbPBDiie9
	 RN2ZMldQcuadEwIsIuVyLq1JlNodRikG9FFEitz3X0fUVaR6ZYGEeaXELhjqGwZ+gO
	 UTXd1pHbUYAPL9a0L3ImMdKxbJkYBdpbgEFDNboFp0E1EqlhfrTBbOOtWne4wt7J+M
	 SFtd2BX2zuN/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF9C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394319358.7625.11802845107242971283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161ee8e1ed68d63dd7a69971a11bc5e872260c4c34af187b4b25d6bc675f872f
Date: Sun, 06 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743943193

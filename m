Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BCC31578F
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765748574; cv=none; b=iLuBfIgyJ1bTxplT+b6PcnuK+aagPK0ANYAiH+nmeeSoTDCkAp1apLz4/jwd0sJh+vgzFhieOCCdmzxuVAb6kr4SsUpuaTa0Otpi40nWF8ipVnvCkqtj42NqtVg8rBZ/F11c8pFqLI2ZomyQKpTRa+wbignUl0SBxa5Q91KfxBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765748574; c=relaxed/simple;
	bh=Fr9/WBIxBAHqJB/wNYDUN9jOlbGqqYVLQtmgdPckzxs=;
	h=To:Subject:From:Message-Id:Date; b=HNpPy2wAKVfdlMq/3KfKhGDwa/LoIis41/S5vVj/HRSoVYKAdEQhPxsG7sJmC31RlgUnH6WUvsaQ37hNnZpQ0YcxdhnqP/SQIFBNosHA/WIA21SIom+4SWA2mijn5Iw57nAiH/rhBN/w8YXcbJlk1cBosGMtHTNbNtsMz+HSJBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNrLA/bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNrLA/bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A0C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765748573;
	bh=Fr9/WBIxBAHqJB/wNYDUN9jOlbGqqYVLQtmgdPckzxs=;
	h=To:Subject:From:Date:From;
	b=MNrLA/bgaSqRajHZ8icaWtQ3zGfxNUzvFZTQSIonFMnehkkWd3QurwkoFRgkYTiDe
	 It/gqNJVhS6SaZhd7B1rpplIKMkcpwOfFzkyUdXPMkwjElXUsalP7hJQsaoqYk6ffQ
	 GJASH1eP8ReUcyQgmqr+/F6INcT8CRznSx4/FN+gUiA/Jaydi/aJOyg81pAQZG2zeH
	 TRFKdrbXQUyS8EIZTDm1cIIn89Lh2PtX3b47sLYiOLxlycDl8O8VvadCRc/JPB5v3h
	 clB9DxP1L0DJmY6U24/sb+x110d4OggVKvrL4CUWO0puoAvS7HuYAOnUMIvJvLsmSz
	 /LrLeNU0Usu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F5D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574857359.28413.6848173991239134884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac479bf411eda850acb6a0d66b9e026126645bed65b13f2b4a24cac18be77fd0
Date: Sun, 14 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765748573

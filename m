Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1754594A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758519594; cv=none; b=D9AEzFMJDCixK0mqvZ5pH+i9SYKqDxRaLIaPzfifyoh15oR4OqMLnOHaHhlwP0cK1p7lwuahKqoGyekC1vKZyVO8UdB6kayuFREXSTkmkYge5MxTMTVrlXLDw9SsxgABEN77LLS8M4QM6KfX2j0Vf8icvZtUrUAYBSKZw7DQY8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758519594; c=relaxed/simple;
	bh=uBAwsFLWKzRCWDJ9zBle0ItXSPbqoatKj7UHSHvNLtQ=;
	h=To:Subject:From:Message-Id:Date; b=DXqIgAxPu9Tba5ewyyi4JEUZS+HK2UtzoMnngNrGdPSfBRNw0uILq33W6NL/P7vcGH/Bw57YX26olKCr/alW7UGtKcnIUZPxn7E+8NSd7Hs5MCtvB2PWFRAqZc/6Eo2EPTuQEGRIu6g7fMy7dZfADPcurPfpe7znyALOjZ4L0eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB+0cMn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB+0cMn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758519593;
	bh=uBAwsFLWKzRCWDJ9zBle0ItXSPbqoatKj7UHSHvNLtQ=;
	h=To:Subject:From:Date:From;
	b=lB+0cMn3ORAW+36FObAI1eH0H8dY1UT1we5FTs7vFxYS9i491YOV7tJA9wLzTlQkj
	 fDR1+AlnkfkOFlZbzZ+K9Gy04IWfc+nIzKPOwOC/B12ZBh712HknBogexe+r+0n2SE
	 M4qU467+hwdRyRPc8REHySYq5BWSGPuzLYhJMOaoKFOndzwdIr9ZMmQIkb3xoEieqc
	 igSBKyjebIcNAD7EmCkEnbvmBlRciNJCIzamlC+RyABCsbDWMYQR97mk9yPXa2xpQu
	 riYQdUJEdMpdLLWpcIS7jnUwYisRsW4/PezKTlha/Pxo7bdP2woPWU79+C9jOMsvCe
	 JhhauiNZ4UN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13CCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851959357.13493.14733221002524080021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707d700d60c50bb2f7f1b0ee8a4b41db3c919bff31008f6f2f5d48080d6f02ae
Date: Mon, 22 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758519593

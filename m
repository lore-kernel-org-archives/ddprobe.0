Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A743595D
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771638894; cv=none; b=o+/C9zm3AU+gcgx4FxqLBXEtfNjz7LkwikKlzXvJ24MOF6I69zquXNlMitP0uPAH4KtDj+w9EHcDKbJ2Hc4Qm3DX62XP/DoufEpj+F6zZ/FCwVWuH/3pycCdtiyNTPll0Ux6G63lWcujxUOEzrOdg7axCYPR2vlQAJrTBWyz+dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771638894; c=relaxed/simple;
	bh=mT+HoRG7V6AnE5Z99jli8HtBtZEmRbyD3N6KyvVkoq8=;
	h=To:Subject:From:Message-Id:Date; b=Zdx0JBV074+nwclxdgqeebcwIkBwSw1QGOw5viIS5vN1DhjWaNwJ/s91zPiYjAUZy/F+rMOicszjJJq+tXg+1qeXQAk8p2QpoaQ/oz7qx0a49reYpzZwiCufulXL8AYAuPNNTa4YwlS39s8H5OZbyz2hR0PKAqXLSaAwUOzDjlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7ZVoeMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7ZVoeMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1C6C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771638893;
	bh=mT+HoRG7V6AnE5Z99jli8HtBtZEmRbyD3N6KyvVkoq8=;
	h=To:Subject:From:Date:From;
	b=L7ZVoeMPlbEK2xM6hV1FGQYZjKCBP0BEJmpDD9hwFmVQSigVkvS+gQZl1fvbo59e8
	 oA29/YqLIKd3QBEFW4IEqfqvRjrdq1t3Vb0ly7rv/W2/uSTj7e1g+H5yRFkbPCowA5
	 ZMjMiQuKRhtN6hc+2E0cDS9hH58hIkjBAbMnLgNGv3fwil/Lf747Gk1QY8zqBiw8BV
	 PNTr4yxWaBqU/5/0aoLdt28XO9qaBZX/197/8jZGCZhdVh4tSjkvRfiMT2VY16tf4W
	 Rnp2PScyBvsnpVx667FeCa4zpZ4dOLL5mbY9oPxfIDP0fv0iY9ocs20cQfS0pEWUao
	 aHnC7pPhMU7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E51C5DF6C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163889358.5156.7766949261703723886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d399fa2e71fe91d5c649f9b269a9e45f2a005b92741577868ccb2a995c8cc4
Date: Sat, 21 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771638893

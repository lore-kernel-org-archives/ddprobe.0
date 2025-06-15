Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AD83595A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749970194; cv=none; b=IX1azVp+Og2IC00ifTkHEgf/7SrgabGB2jhRSOR/E/u01XUd4n0q6mONlgKOIxfVcJXJaO6ePmj2R+Go+DF9e6+zXRfuDw3K2d6HawXFKVtyAdzwlcW7OhVwkuJ6ovDje4+/1lROwq3tsJCCQSJZW2XAoaFI+kWxwU1mszO4UCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749970194; c=relaxed/simple;
	bh=6qJFXU1Iere8wHKgDqprtOo3262rh25lzpadiDnBiA4=;
	h=To:Subject:From:Message-Id:Date; b=EUn8YXNs0s17YkZQelH6aVnlthL4gO2t+2vo7WB4ekp8e2FUIzqFHv/EiJc3D7y7zQLti6BxDeGC3gLOPo9LtjmDL0lbTP78vzIzQ2SDFKWJ9Gr7c88zsoP8AIjoN4f4eB0kqnqf/SEyjH5CoD2/hPQbM6KUQxPHAZ5WwIKQzoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMUmEv7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMUmEv7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE373C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749970193;
	bh=6qJFXU1Iere8wHKgDqprtOo3262rh25lzpadiDnBiA4=;
	h=To:Subject:From:Date:From;
	b=XMUmEv7qo7tZY2T4gR4cfpDsFfS4TlB1ssMzX7dbYmIIxOPBR1jc4xt7Gc3oTyWJt
	 ae4AotuM1Q3g2dEMq/mE81b3DyggUDP1YlTOKyue+e4Wob9Wr2QoRBt+b1JO0GTJQN
	 j3kWmrC5oerCVQocMLKyJplXm49svY+XYezP0/Fo5FxrH6m37w/FSR9UP4fi7i3EWo
	 ICgOnR5SzeK9trmp8RJ3VBUO2809xOs3SjL6hY3jWAk35xBf6vGsj77QdZYazfxAqK
	 9dwbkjtFaXMvTEecDffYVvPHBpzrRLF8OQnbRqs4/ArBtSP8xD3PM7HwhQUS0a2+O3
	 pg8fwy5tWxjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C38C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997019359.25377.8131832515581207153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806af55a9af37424b45f8bd65a7e62fb37115bf3cd53d70b0ebb23162b70ea0e
Date: Sun, 15 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749970193

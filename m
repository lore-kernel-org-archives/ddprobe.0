Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0D5367B97
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788667234; cv=none; b=sOidQvJTRYZTx03vRRB2atyN3mAnmo2v3aUzOa+I5Xals6JRq9ahyjD/CVaKtCoelpSUDydVXiI9g/P1mw6FGCWwTX/dtgOMfZT1PonJaGySKGhEl+/hNIiFRAtIHKGRbUHiEPS6FfmF7Cnn0cUB5uK7F3hRPXO/jIR2SyH3vZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788667234; c=relaxed/simple;
	bh=FoRzroovtMsSTCki4qIczec13TCQEUDF/b45Udwd6bc=;
	h=To:Subject:From:Message-Id:Date; b=RlmZy0v4tUbdzaBXTaQhwBaH1T7ehDtT1faHkK4waDCY4X3kljePBPy4ZAblfhYMdBU+IXpmc+8OWCHpfu/ppRolA3pr6cJ5UvcO8nP02RYe5cupWxCc6aCNQY102u1EYSjD8nOoU4V7uEBsKpII1n0yEM4H4ede9ggugsOH4D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKF0gyRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKF0gyRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8A2C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788667233;
	bh=FoRzroovtMsSTCki4qIczec13TCQEUDF/b45Udwd6bc=;
	h=To:Subject:From:Date:From;
	b=WKF0gyRIehOoznV6QG37/keOtavpyLmOq/t5lpSYdEDGWI3PjTT+2rS1TiQF3JUVE
	 qyQ7JFaYN2rCZBw+92yGpRRdyI+AyOmW9JW5jWaguBiq1CdZDQmJ1YWEH5eRTkpNn9
	 bLRWHjckEAwtcxudAHgGqvwe+elDH0IWdpIA/7BA7VW3vhQrdiIcLrb8+Z0Ao/s62y
	 ka4or/28k39bt3dySxmEXuq4cm64WL/Yz0TW3AtABuRwtPYzXDKgVVj379TaXuyEgT
	 kxawXb9NptXS7a7r8xpWqhxfxU5P/dtS5ByoG7N8+ipBzmVAzRvQ2bnhFZfKHz1wtx
	 GZzMK4pKnIqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB29CC79F8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866723369.13263.1182593189626393808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4249795849ac82d1e17125ed2714a3639003c43b79ae3138a17d1811d4178ff
Date: Sun, 06 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788667233

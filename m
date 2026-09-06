Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469D323D297
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788657634; cv=none; b=A0bwmqJJevL/j7MlMxBhy2uhTyD/JWiIYpAyGsiusbMNQX2rC5JODdM2hcFpOq3nsMUa7uwYGarid6yktE+OMWfCoo6crbTgGpPDvvRCZJoavVoWt+l0pWkOTkrAh2qLnx9dDOgx9Bi/zQR0wlO3BNvWNtQpSjfUiqD1VHJ3ksw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788657634; c=relaxed/simple;
	bh=/h/kGlGQi3gefqn8FNBwaN+FOmZBWyQGO/QhJN9K1ik=;
	h=To:Subject:From:Message-Id:Date; b=RLsnKURyh7hGTa0RZs88mDxqb2ubf50+AQtnX/rWNx4PG5M4QzxKz3O2++FeEvr3X5FYabM26ItVoaY0VaDBfTrl9wt1FlP45FhP+wlf7eRQ6Jwk09lktiaPUPG+PLxptm/WMMfXO5T/cgk96/8EsXGs79ZXTda0Dau0AoDRVhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfDR8F0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfDR8F0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE84C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788657633;
	bh=/h/kGlGQi3gefqn8FNBwaN+FOmZBWyQGO/QhJN9K1ik=;
	h=To:Subject:From:Date:From;
	b=gfDR8F0CDUZuQGBFK59dr30rw4MZUqjOhcRXRjBtwhKMj31A5AbOckTWdHebbmzzQ
	 amwiJgI8w/GKUgj6/cmBGdsbokTQPGMpK5b7cxtlMlKKBu0dep+PVNdtw7NL2PFiFD
	 L6G6t3d2dHYeY2icDawkD7zCClH8fMFD7feXTxuX98Oohpvw2N4MEQtU4LLubXk7cO
	 Aw6sB+UomuFAu5BHUEjJ95ES6+TxTLA+1g/20MKJYVSi0q289ICKyuUUj0yug11neR
	 DmxIFIHne2/nOxiEoAoU1TI3j0Gl3L2MQ9yNG9yz3aePEmWwfMdEqw6w5181gE29hf
	 DsTCDMTZU4DEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5ECC79F82
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865763369.24415.15240275665005027619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd65ca8569b1058a2751091f3b994a769ff790b9afaa83b7382d44f30c4d4d45
Date: Sun, 06 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788657633

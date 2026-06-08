Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3789836D50D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780919674; cv=none; b=W4pV4X57AG/o1Zjt2O6w5IehAWT7Hn003YrSbft35aFiTQuHCuH+aF1y2tcSvuNshlekST92qN2uDjh7enEI2ilch6GgPvhuK9zpeSF9WrTmMYhXK72HxgA/xYh4Etpb1vB83fDqDy8H6DPGQV7SC46yl2u+z9OQGHFnppEuVc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780919674; c=relaxed/simple;
	bh=aaMftA6hYgbw9Tio0gEv5N5y7Xp7jWORwjLcQ3M1zxg=;
	h=To:Subject:From:Message-Id:Date; b=jvQ1dXANUm3YKNieUR+us/0Ui6txd5NklyV05pjuXmCGxVz0PyCINAzDO37BoXXkAxX+LHh8qkvhwlOPGeTKJznWUqGaFmDXe5/xwDn9p6tAkNOSzUw6+eKxP+4966VUPYZ2VzjgFweruL6udQcMU63/4fgpkd5gV0gqcD6z3q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2cce65l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2cce65l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4880C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780919673;
	bh=aaMftA6hYgbw9Tio0gEv5N5y7Xp7jWORwjLcQ3M1zxg=;
	h=To:Subject:From:Date:From;
	b=U2cce65l3omNK0T+hOvTyddbh78sfg7wwcYcR5EIWAxrEXBlmoruGbuzUCgZBGtGc
	 zucUXVVUNz0L40ef92i50usWxKOIMe5yOBeCQ9vW7XMvD8eVqlIaxePfGAB7kgYP+2
	 tNsujibXNeg+7HArsIwIrUI9J4FcRvX9W59K3D7tdNNYUDJtJlKMcHFfG/HgmPNPcr
	 STV3vutajU87axMSqEqYRFrwZ16w7IKkhylQk2cCb1PVtl+JDVj2gqoNnxuubguz2S
	 OhKtEvuz+udAduHbDUf8DdkOZi7ZOeC6LiUHiVWJwO1T9JFBW+EWpvwe2wXp62sGYp
	 V3M+rQNU2kmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A8CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091967368.29909.14373243494271021296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652a131530438173e08b3de07c92d130146b70811a2bacafff01366157ada748
Date: Mon, 08 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780919673

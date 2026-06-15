Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFD135F60A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781513794; cv=none; b=KfOS+j+FvSR0vL6nq1MbThNvp0+WIE3BYPPWToKeXWbf6gh3dlV/LIbLeyzSFrPuTa6jWkXVNOiqOGr0waAuYMlftSsD4I9j3eDBArn/zu00WbXnkPygnPyX/kCfuUMKkb5kxaDMFU79Aqw1Qr2dc9qaD17UzpOIRT75BItWydo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781513794; c=relaxed/simple;
	bh=v0EDC1D+jKLioPOckAbi4PPygZU7DCXvVuWQ6V74/lw=;
	h=To:Subject:From:Message-Id:Date; b=YcLfG0uPPpBjfqfMtfSypnl+a73j48ckSBJtGAlCl8uEGKkWkbFH1stCSg/h6EOXfJoNg9msm2Hd+ceuDYJlINho07lXneWwbQ/nHPirk2TmoukNxkB/wDoc79UkSaTEgy0WIDc1NRg663NDdsZdk6dRw+qfbp0i74AypVuidQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9tjyaCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9tjyaCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40D3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781513793;
	bh=v0EDC1D+jKLioPOckAbi4PPygZU7DCXvVuWQ6V74/lw=;
	h=To:Subject:From:Date:From;
	b=D9tjyaCutoDyD/b4W+UQa17Lbnbked7vx8IoUB7mx6j2E4MhxTJrKSKDLQNQA33wR
	 syCt/r8+Lfq5CFOgHPvFmjQdUuRilG6oDbmcnyaNT7iWFL5ZTl5BR3BpvodYjcg3Ei
	 KtCbtcVXtwP5k72oroF128mdEI4zSRIgFJs0EzcOJd8Gooby6Pck3xFpDCyfIrkDtk
	 1sZDuGXDmxp+f/KTimwxYq9rYxUIFsWIfSxe2z4tlfJea0mL+JPO3IuZGdtjwtbniZ
	 poKKQpkD32mjfjcIQdZ63PoW2BVe+oDmqcaSDrjq0KNFaknosj/G/DkSFOKaO5a974
	 BxBAuid9j4nuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1707CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151379377.4559.16340516761116718329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06597b2089ac07e67da558390e73ffefb347ffe05755833def8ffc388396d122
Date: Mon, 15 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781513793

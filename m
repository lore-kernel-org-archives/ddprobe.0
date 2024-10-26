Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2841B146013
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729976154; cv=none; b=EULTtL+3sH2VKtK4ntPox9Us7mAztPGzd2AFvE01dKSnTRgv/tjpbgWrJl/M++RluThRON9zAPNFROd5vZ3WyLEcxy1ppjyzXZ5p4U1sHsy3sJIkkBdWyjLpqj8z9L+Rxg39/wu9PcZyw6vilJH7FpJko2NPwHgY6yaTIr4MA1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729976154; c=relaxed/simple;
	bh=eJC6U/fM/2SllI2tBEKBSnmxbd6q+Feljvat0nlTi+8=;
	h=To:Subject:From:Message-Id:Date; b=g8me9CKwhNx0hJOoklYIyeUrE6pjJQtzHjqN/6C0ceADmm+TlttJJMJl/QM4Plyo1S9TxZ+j1inUtU101T9x2mHB+Mw3QZSmI2iVipl7hkWL/oCNlzui+Np4lVVKIOCd7dmoiSCCUB2EQgBWTfigCe0g97lXbuReX8soEii9QOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ma0Glk/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ma0Glk/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729976153;
	bh=eJC6U/fM/2SllI2tBEKBSnmxbd6q+Feljvat0nlTi+8=;
	h=To:Subject:From:Date:From;
	b=Ma0Glk/AJ81+DQH0Ssiv6VFF29bGl4FQ+l2iEAwC2lSrHnJwxbG9fpVGKA1vyZrmb
	 u3DEmb7KmYNYv9Wb+iXQdo7bfvLIfl8sER40vyLZcgtOTgI8S41lbfbpf5+z4Tg9OQ
	 XDXFpeQD0Tu1mHoQ3/G50bh+4M/VVRrCRk5R7qjauIPfpESkXsSU4T46lU3mL1iy8o
	 B/wBhW4OtP4neqbWBPLv2nIlIqJ1gpp8tOteQuHmot1SDoQww+6d+4eCVvi0WgC663
	 gl2pDK25rJOvoOO+jW4Ol6qrnAyAJ9T3ARglSAwkuaiUofoeICuuBX2YdSnNDgisIo
	 cO4OL1ingu+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425DD0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997615359.22828.9662384868942696283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e285967458ad827066c801e4aa17c471e01a8b60315ad40941c56682fc2a8988
Date: Sat, 26 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729976153

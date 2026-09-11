Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC0C46C82A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789117835; cv=none; b=oOp+tBec4tc7Tdml/6Bz+teJ5x8PThnTwOJYJNvxfRVuNQyMpMUOrpQXJrQdOzBl1c97dW5zsqwj7YkKg5M65BmTCiRT20GX6IKpmqIjx4teZ09KGhw54V+/G4+YaVf7iHImnEIwL1To2Z1PtNuSwQi+zOCrlAKqmvulHEhC5yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789117835; c=relaxed/simple;
	bh=bkXhsMh3OOGML/8/aWJ6HpJ82IOQfTDqGsYkeBvrSZ0=;
	h=To:Subject:From:Message-Id:Date; b=DNJXBYNxyRcnim5iqbFpazrAWogDTxNfk0bsPeyLcmesiLWCqRijd5piDNsvmMuUXmIqog2qCfrhzhCHDTrsSdzUd45g31XkR1rDBwkT8H4313W0fZb23fH3xDhjtCfHLL8SMXo8sZk5sT3LtVIeLIgTk3VxcfcwM9V1QvbeTUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfKQ6j74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfKQ6j74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A99C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789117833;
	bh=bkXhsMh3OOGML/8/aWJ6HpJ82IOQfTDqGsYkeBvrSZ0=;
	h=To:Subject:From:Date:From;
	b=rfKQ6j747DfTsbDv4fnQF7zpJcjOBAH8An39NYggO7uZppwiUdArtjeARTaU9IIEe
	 Wi/2Fsdjem6pp03Ifllb2Pt/HjM3DjfY0mhSobyZKOCmajNxnCPcyWXPOdGKPGCmZq
	 KzaU2d4y9UECjp8qQT22SIsmLUBfUDOPOnvBvmr/iE0Wv1rI8sl9DqUJoMsFcATBpB
	 ANp0nZdfZSF2eK9s2hRTXLxveuM5Is4+9+8jk7S//rYrjNX6S19o4iyMqutyUi8LWW
	 99NDSvhy2A+NVtmG9ERCD+yDuKLWU3k+NKjehT0qWe0vEU494zMFd6Sc8S1f7fyu1F
	 xUW9t+xMc5+PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A6C88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911783370.4324.8926042857284928079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e5f91da77c5c586fa52b001ee5d908ab879a8aa245aa5f028388aecafeb5e9
Date: Fri, 11 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789117833

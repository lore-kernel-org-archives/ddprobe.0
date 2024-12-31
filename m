Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF64195
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735605954; cv=none; b=SHQYjVGB2vo3GPawZ+IwmcyOgRTVvl7rvw+j8CTHyp3Q8EaiKssSZ41QnTHn9Y9sIb5wcbd6vX7DVh5c5aRnhMm4+Pld6HDA3oxPiXimuqiTQkJmMnznDPAki7RKBgUfVVM3FThV9MWegDvkHOAWKn3wcHGyIHxek0W2LeKKeRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735605954; c=relaxed/simple;
	bh=mn4dVpY6Pbyd9iG3g6R3/ZGP4plghmhJnIPeBBdNiSw=;
	h=To:Subject:From:Message-Id:Date; b=qDwgKv83NiP9xuHt83hO8rewKQCHQaYGQLvndch1bBknDKLS86yk+m3DTDr31R9L0gvg0U2ulE+MhsavHIDSGpiGDzQ4BB9RvIB28qI3NiIM4u0hQzIDFFlr/OPI5XVkNNLWJ6Bbtt9AUPAOelMD2ZDi9EYDcpPjaGwONAkqF2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD86Ql7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD86Ql7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63B8C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735605953;
	bh=mn4dVpY6Pbyd9iG3g6R3/ZGP4plghmhJnIPeBBdNiSw=;
	h=To:Subject:From:Date:From;
	b=FD86Ql7gaNyWlrB4Vir4Z+YIajC810DR+6PwsBO39esdQbgk2jA2MiBbbKB4i+lmC
	 kp6g2B+ScVAMmekCDnzq/9ha7PYw06n76+d4MYIn0s/DulaVFKVHa7OjUhnsyq9niA
	 SJ45vOQfI/wYCYa/BDQMUkZkEEAmWGNdhnJZYKOzZgsxuZHEX9z0sY075nbLeXGWZi
	 MzDqyudO5gLG9CUOJbSXWdoocQ4b1IaIYhhFVer0ASn6EB4aRaclzit0hM50v3I+ye
	 1JfeZWQUgAM+9lRhkL2o4PzwXcOBchF1GflOSUxatR2yzmAA1hJo3Hh7ITQO2mNE2g
	 GPDrs3lJZ/6mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3B7E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173560595363.9097.7774392352049419796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92fd56bde8b40a74b93fb027910ba9c4521dee4bd4e9c435d1b9a24e8313c70
Date: Tue, 31 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735605953

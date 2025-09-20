Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E53021256C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758346796; cv=none; b=qecYPjaOCHBiZjJRj1QJzt8t4fsBmduNBpQThI/8X05AnL3XbldohH/gXGGmB87MT7NV6s6dHr/978XX6HbKRTbZGQNcl7GNO2yqZFpIgdCc7PMyhyhtgICv4cen2v3474Tb+qmjgusgKA39lce/WFRNT++cepoOTIRDCT0BjzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758346796; c=relaxed/simple;
	bh=1BWT065qRwpWulVf45SZoM2F5ooanLiWw08Prd7dggc=;
	h=To:Subject:From:Message-Id:Date; b=oEXw/hzSc5wuIJWVbXWP+2PW8EpSVFn4XSDe/8XpKHtkUPr2SMYk0vJoW1REDTutPcjTl4RENS14lAeywmQa38tgnC4pDPWyjCxHLBnp9rZO1v1Mg6amup+9I9o3/w52Fa+zCfgJPeTVfKAFT+V/4T/GNb2yI95zkinGuYawm1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2KLSvSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2KLSvSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A663AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758346793;
	bh=1BWT065qRwpWulVf45SZoM2F5ooanLiWw08Prd7dggc=;
	h=To:Subject:From:Date:From;
	b=I2KLSvSM2R3qcXwl8t/BhE8eb5wXaG+G8NmVDoQ3PbYFj2WWLS9tAZWzFmguVSS3u
	 +k0mmiig0ZV4VZVLW2I3FBjmw5hz8LyJEWr0nxtd8uXNFHJV41/nZghBX3g73Xl/FI
	 Xg03VCJNeQ4CI7zZ25NnvnsUUcHoNEwxcrzWWgmAVkPAkpyGkYe1fJF8o1w3sWK8Ct
	 y2ovSsKSsBTPQ7Y7SUwJ+r2ZuxCdiNgTC4Uh74Bgir/zNI4qYczdh/6rGcRopSe4tf
	 L20Tv5UAmv+lJYSW3I4BjScREz2j3z9i96jd7rNQngrxOe6Xcyq/YevsvBmQ6M9v5B
	 sTiRtchGMhsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C38CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834679358.6175.15776991190154101706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de83c7fb4118b2ad28a4fe9ea7b39a40297f9730c9be1d0b54e53fc7471fe1d8
Date: Sat, 20 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758346793

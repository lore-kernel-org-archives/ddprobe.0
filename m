Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB933AB26B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775057134; cv=none; b=OtREzg0Hcv+XmGAh5nRgeOHs2uK4AiW1hJyO5RAYKh2kXUwh+4hDcZ0QCcIrlUIqV2TTf04JRFWLFvGRdFYufMkPJ0WX2ASKOPXf1hpUleYed6W/ZULHVWhfcXB/sDhCSiqSfnCzFUC3J6498RyL3kmeFIYtogsus3Wyhv/VPtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775057134; c=relaxed/simple;
	bh=MLmK0rzBef1+ySGbqewTBqxzecVRrtvTRkMh0UR3QRk=;
	h=To:Subject:From:Message-Id:Date; b=BPhVlYJYfeTI2ZZO9OI4KAcxdgRjqDmQOrBLXcJQcutVG2ZCmCH8v9R3KMVfUZIw5k9ECZivFTOnDunynAUQw9UdU1ARtAvymrqaDWFug5w4o3JockWECGqnLybnpzACqoLdOxQFLenp6r9RLEqy6sUDwezqK+3hnRXCgwdNaPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khCx4GHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khCx4GHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1760C19421
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775057133;
	bh=MLmK0rzBef1+ySGbqewTBqxzecVRrtvTRkMh0UR3QRk=;
	h=To:Subject:From:Date:From;
	b=khCx4GHXGCDH4h4ionKtVlyxDTin73pzuh3SmEOjFcTl2hIywhRWR2x8smciZG/xX
	 sctS4cFkBdSd8bhb1FuzQeF6qD9G0voKXMUKnSOCaHKypKO1GuigI42/lhl6DV001k
	 Sp8/tC6ChOVlze0eATFLp2/1QVUCtMbSxLVHcuuRwkR+WdO8uaJaWPAvh6JGtVPOvf
	 vMGY8svgX2xSSxSWFD8SsxJzaRlv5uEvFz3L0mPA8OG2OOVvkHzpIcdKyRxt7vsLAA
	 q2HwrqktHRcv6Jr0b1aPWY69olUmfUVWnacqq9F8W+9X2LxuML1hx1s/397AXw9q4j
	 tU9REt2oKitLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB04010F6FBF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505713369.12245.8479341413951884119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25849125980e13aeaffa8380269ddf267e43cfb493796cff6596a76e6c68a85
Date: Wed, 01 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775057133

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756E29B795
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780948474; cv=none; b=csCt8qUD7MVA8CNNCdmi1aeHwwBn9ENlDATdW6ADL+hBVa28BUFLxMqtoEX7uaT5TZXtvpKhd9+nU4UoYEgQCO5+4Yo22JF/x5OVXckNxuYVFH4IMqGyXcf7lE2KI4zEPoWupo7+vxX44i9iAA2GtVyY2MCSiQYSwu9yD1C8t8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780948474; c=relaxed/simple;
	bh=A5D25EDmPOIFF6SBZTb0Bv9Fn08jCFlJrq7M0ky7zC4=;
	h=To:Subject:From:Message-Id:Date; b=W7KeJWoKaKlxUVNQytnlAEmmmd0cYLhNouS3llyhjLQAOFCm3D/kCkFewDj95h1Gzv2xTY5pQzw6WfnnX4+87D+P6pcBeOkkc/PBjiZXPvDffblpHFCcvhkNL30YoPCOmvZMc+iLpkfLBLU5JnJhQm7odt7Sy4C5c66wDDQ0wws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2IeGuRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2IeGuRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D6AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780948473;
	bh=A5D25EDmPOIFF6SBZTb0Bv9Fn08jCFlJrq7M0ky7zC4=;
	h=To:Subject:From:Date:From;
	b=p2IeGuRllwyItLYp5Hwv+caQW12MFvy7KsR90fl0LTQRm7sbDxkPepMuZO4a3QLD5
	 Q2SyAJyu7sDMhC1b8RSAChERjaTCVaJXnRlN466jAZAeh17FpTN3l1Js/fXcnlZqWs
	 GIDXZiixmUkxfbvkYV1grSIkMGc1Wf5hC3cykcvMdf7errIJ616CRKGP+F0f6qwUjL
	 ppNpMB4BUZQEZzS2CQHW+pRBtt1iwJfWwwiqhMR0H/5Q85lQ4i8kqCYTdDTf17gXek
	 HObAf4oJ99qgOReESjWO5jlaveupyPwdwNFLU8lXRQDu4bLybdytk3D5WGbJyZylJB
	 tL88+GXWBy+8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0567CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094847371.14176.10977499446792293272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d3ca38d0c0632a78f72d05d2435c789c90d18e99fc85e6f6fbf5957f7304ce
Date: Mon, 08 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780948473

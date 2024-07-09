Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491A912C478
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720511783; cv=none; b=tpXpXfEjSHR2RdfH31Wb7oxMD/HO36S6pLjo0h0bGt6ydTRaXcvlajI8kNbk8XcolGTeCq+f3VRM5NEl+PCTUIzEde1YILhBXP8JI8p8T5VtzsiwkHpH/Q0SUtStuwaLlxsTDMzNAofVDmmf7eGS3Fm4EpKiYQDDB8OKfuM3AwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720511783; c=relaxed/simple;
	bh=1Y4qRcVf1hF1DZ/sT6zc2zwv/B6jabrZlhnC/Ohsxd4=;
	h=To:Subject:From:Message-Id:Date; b=Z37CT7U4aayemTeW41TVY/OfZ32ueS/erVh6kL31g33Z0kZDMo7kkQtDz3GfQd9slhwye/3pzj+7en7E4rI/RQLeCCmasrkqY1skiP1IScJBPB4qUHOIEI1XDyO3pxRX3z5HQy3XYR9FVla8eNVvnnhcdyu1x+iCbJk5GKrKdrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJ2vt30h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJ2vt30h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC22AC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720511782;
	bh=1Y4qRcVf1hF1DZ/sT6zc2zwv/B6jabrZlhnC/Ohsxd4=;
	h=To:Subject:From:Date:From;
	b=tJ2vt30hc/aqEJOIxMj9gypzDKWWu+AOOAweTAWLWDPYiyh1uk/kgBaNkls+PLNgd
	 IkFwtFRvIDnn3x22syfrOLZQQWJykZszudBq/hfEb7zXJAUBtINWoR8fRgLfSmySZ7
	 IRj+YRW2Dj0gfZ15OgWr9A5nK4l28SuIT+cXTagoe+As0RZ1sTNP6uc0uiZ62NuKve
	 irRiR4OI3GwzyVp1J3aY2z/qZWT0IJcgmzN0dDWm8kReUh7CYoV2nTr6w1E45GqU9f
	 pyeNugHveuYrNPyQqQT4LtdqH49NjIWaBM53zWpX8Xk3QAsjEIj1JnG4l3nXKTRNL7
	 gUqoFuJ4O5K9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9F6C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051178275.24667.1163082248001528823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1517408db7f58b0a1eadea0a3f9a1be35ac007bfcf501d694b7c7f9b4fbd79f4
Date: Tue, 09 Jul 2024 07:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720511782

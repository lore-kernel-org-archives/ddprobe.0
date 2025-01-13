Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D4822CF12
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736768154; cv=none; b=thRDSjS97cN0YaaC7RzY3qW5w+/P52CW0sIsnl+qdHnFcSZB9SDR4lhfB34y/0159kL1xd8fEV0dYO/mWr+mIuKcVgQg7Qwn8SZgon9OabESZGvXqx2Jb2ypKbX+Vp5vboa+l2i5Sv2xhDjAvKRlplYVzpSgTj3Kyec1TW4w3CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736768154; c=relaxed/simple;
	bh=5pE2pCmxQtnEyS7z/gaS4mYael88SYoikbHAaBa+ncs=;
	h=To:Subject:From:Message-Id:Date; b=BzB5C9FjZIIr01gkrsLE8opL+qmfbFhR3oVH5ST86udv3I7QhyTSjq7qwZt9Kmm1EilM0Ye7c0ym1jKVuJy3qQcBGf104Oc6Kwc03Gn/uRq5J+38bW3gsP4+/t6S2nvvVdb/hatsswW9y3dvr76UwyQXYHMvftHfhx1wVQg9A2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv8FLqDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv8FLqDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBCFC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736768153;
	bh=5pE2pCmxQtnEyS7z/gaS4mYael88SYoikbHAaBa+ncs=;
	h=To:Subject:From:Date:From;
	b=Vv8FLqDUQgwrVocAaLqtpoQaxyqWYxVt9GtoqAuJC+CQjBysGiKqYEjaKpd4xeUrU
	 E8oPcCSQzNTHt8+IrQCDEDGNv0wX8jDVo1tuY1k42mP5BmdxGsg0zWjuRgXUxlb2Zo
	 OJ2rc/rgSykdyOevVuiCmm1WrxAruiwrU9/aTCbi87V5HiWhqRWQGICFkqo2vBpKYk
	 OrVcJQeJ++jR/Yoc3HWF69tJV5JM9IT+WN/L86f2Hpc5PZAzb29ZK2JBnM5+5r5RDa
	 Jcv2t6PoyISuTb9g2YywY6XG2HsuoWlcOFpY86dcG6F0sXPOudCsvNf0YoCuCXFOtp
	 GbaC5JLTqk4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C0E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676815360.23805.13911313765297677555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdda7df8773742817970b152c61e86f3f7f5f43cca285bd4c2c1a9f72864523b
Date: Mon, 13 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736768153

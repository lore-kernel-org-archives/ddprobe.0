Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4850C335BA
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780232674; cv=none; b=haiiTU4B34khPoa4R2wkH0t+LwLE7bX4Q3DqyiyTLYnu8600ZlgWZ3bHK4DYKb+4r5vabqyEAKIL7zDbLfsKYmT/Oz2Frb8NinWecrEcl58IaknEO1ueF6OcmwnBAmwKD/CTMY1efHZ8po7svUvTZ3HvBLOWUmZASUTZIP/C/y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780232674; c=relaxed/simple;
	bh=4PhXe/pWYxFlBFhsNEktmg4qf8+XiieUlPC31wH8zlU=;
	h=To:Subject:From:Message-Id:Date; b=DE6++piCfHICeebDoyId/ADTFKZS2tVRx9H3lDPfoBsL7bRhEW9hrkGrXXKMiNvrVbROr+KmHJ7T6q44I6Y9zy69uyiuwFm6x76x4VdbBZHjpf306khs8HwB8k/xxQQwl2D4YNT6ouKNC/0qvwwqgAoD1KmDZpAirus7Vq5fRQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0GLNjcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0GLNjcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDD8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780232673;
	bh=4PhXe/pWYxFlBFhsNEktmg4qf8+XiieUlPC31wH8zlU=;
	h=To:Subject:From:Date:From;
	b=f0GLNjcUbjwW0CYR6SIH7CNeilyLcqPslypPM3WQIvD8ak/81K6l2ssI0tfgXMJ4d
	 AfIV1x1gBENE/tGnQqePXgtLmf/Gc1nl8Ox2+4bh7q3Mp7EIlbFF50nCLTvqu/+yoC
	 5pNGF1pnxpMFOIEI6WC7u1BbK/Li4cCaWQmGYebuqbdbQ3X/B+3S+zs7WGdQfOBSgf
	 jxth3cjTC6GEDfDd6qkqAGhsDWB6bFM7imcOEXAyrmNcB4NMj/FTe15R36/MTOt2t1
	 jMsCJsFSPpJaPDdihqsige4sEwLxLBq7+TdKw1PaU8/vsDH+QiY5WCQ1YKz4r+WdLg
	 bv06ZgCyRsrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B434DCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023267370.19901.11268608870650456895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d789e9ad4da0c835441eeee7c17c29ef4f2f40e680513c790bd99e409ecefe
Date: Sun, 31 May 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780232673

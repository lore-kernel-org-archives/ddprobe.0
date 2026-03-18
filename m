Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF5B3596F8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773860694; cv=none; b=hmgpMnea3d7481sMJjEddYlWBRqCWvCTvBQMtEDrDpeWAFht+14hZrSlwH7gJi2YNsRsJDXW/vyxNUMDFSwW1AOfVqgMRM2oePQue/rqXcllRVh9Af1oCN9H6O4WRtx+kJysXem7j2B/1kz1hC41k47T9ZnGcp8S0Xhj9/Kb2eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773860694; c=relaxed/simple;
	bh=Sey8AZqqOWPcDEjM8AmLKoG8kp47Jyjm0mHwwvhTXts=;
	h=To:Subject:From:Message-Id:Date; b=BYHfUK81VSYuouQJwq/g3ErD6J5Sku9h6h+nUjUWGrjMsTSHcC7YPIDDae08ZgdeAmboxn9CDZGXCJucgn91j0dW5C3XJwxx95u1HVAWg0nvNjOiAnPHcPuyWy6Nxn7iTYPCLKvXvBHSNAyKrJF/Mm5FS1jMsP2NeJlWDNqsMSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHW/9MOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHW/9MOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F30C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773860693;
	bh=Sey8AZqqOWPcDEjM8AmLKoG8kp47Jyjm0mHwwvhTXts=;
	h=To:Subject:From:Date:From;
	b=qHW/9MOQ+UwobDuB1gYvmy/5AEO5rgvDNl1omleCk3IjkhFU6UQWCldca1HnbklzS
	 /RhGZZ2W4qibaJPgFAuEFURkU/3H6geVLVd498UwXu4YmqKABVe/4qv4SgkOXDmrko
	 aCrGCh7xulehJ5X54P34RatX2YNqSnWoupuiPIPuCRYIyGfvCNXNFJtwWzPXZGTabH
	 B/iBXY6G60RTdHvtt4Ny769dfPM4RScfDv7ecn1ats1HHNquizZ54rhIZj3NAUgJXF
	 qn0VUgaeZworVVJhmwXAT8ilv1S1eNyHQKKTQs8KUNuTZ9lXbt9YnNQyoCsfxJWgUj
	 dD4dKlAiek0QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7281077604
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386069357.22077.9355967344822750211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a30f4eb51d8382cf865e8adbc7f77cadde57bb542671ccc47cce39de417c01c
Date: Wed, 18 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773860693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0248F54652
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769565234; cv=none; b=Mlu/KuMU3rCDcCHNzLQZ8Kap51nAHao9pJF89tWsVgCUTTjIsCZ0D9G9X40w5b37RINpWqeeLtITjEf3xdoreHdY/9jFQB052wK92UEWmgUKLP03OTLYS70txSrlxhGYo9sdrV2jSpDQXV4FgHKrMRnzHVjLVDcB4zQFGH8pt10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769565234; c=relaxed/simple;
	bh=9y13+o9bwP+WjNexj0blxZlVU8bnq+yfG+kz8bggHls=;
	h=To:Subject:From:Message-Id:Date; b=REBy8e/HsiUuPYHU6uGRvppFldVyd/T3J5n/YUymKMnr05Ap4Cc/HEvoN3E7SoDd6xznWQFtGKNJ0Hzu065ztGzNycHS+mGgAgCld+KWcuykx8WUVGY3Bb6qlB/QTixBc16CaLoQLUFr78nbsZ1GR3zcsQ66eUMGmz2QT/4BibQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYvfDwJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYvfDwJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A792FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769565233;
	bh=9y13+o9bwP+WjNexj0blxZlVU8bnq+yfG+kz8bggHls=;
	h=To:Subject:From:Date:From;
	b=LYvfDwJa68QInSfd7PBqnieRlJFo2wOLAuNDs5Hmq8w0WIQwLeA5ZHcDZH98ELoUD
	 t1gtmTT0WqCjokS3lxHBvv2oZmCsiMSZDd6qXA3JFH4wVGrNxpfo9YgTi94UXSrn0F
	 S0Gitw4a2Rery2EHeTnOr2FkpnoVdZWJmTjCueHX/18cKvrhmVZCO2WzOqGzN0hjSn
	 I37+WuaL5XB8DmzUtYdDrP4wPsDQg8OHhFHyUQRofKzhYndZVQyq246wpuHyqkbSZh
	 nA1L3VJM94eFd8qGLcQvFuKSVGJJkZLB+xAan5+arXRbcm5kiKnbey/gz0KK9tZhTw
	 mVZ9NG8ehTN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98552D35664
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956523358.11882.4714179091168636957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdfc84e823c2cef1c81978c4ddef6437fd0f9050d2645f4baf0258789fa7e7a
Date: Wed, 28 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769565233

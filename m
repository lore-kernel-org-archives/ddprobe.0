Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2244B21D00A
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759787994; cv=none; b=AcKHH7rreWaXu5/4zI608N8yOweOsKfavr6wXNM0B8sZTy5Bl8d+zObCJ0uiU1UA4llegbLBmrovM56FZaH7IVqdWQquO8b0onYA3PUOY7HiZ6lTg9/WwQGXq+LsV1/Hm2+wW/9xxvK8KplAWtbCozYkoyBBqVdE4v6wChPv6OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759787994; c=relaxed/simple;
	bh=mNFzes+v+s7u8eUq3swEettgZ5Sk1Eh7AECy8jg17KY=;
	h=To:Subject:From:Message-Id:Date; b=h80tjOnepe51xb49T06hugQZFeLcMDX3HZcTU4oao9jY50UqjPNSTLozBoD37ldI27PxwNBvjJObRkIAfCLUy2SDs4BbLrBTJaHlXHfIeOJNmPfCluIyfG0x0PUU3IoYS4wKnEOm9Oj8+lV6foysNwOGfz9WIvHConA1lMqb0p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2KMNrIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2KMNrIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8275C4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759787993;
	bh=mNFzes+v+s7u8eUq3swEettgZ5Sk1Eh7AECy8jg17KY=;
	h=To:Subject:From:Date:From;
	b=o2KMNrIAUk/E53tPZ3iJUs2qf1i9SwwA7+hi9oL78709pgi35bRxBuPeTu48DbzGc
	 TsI0gMbxGePh3qfj93flBRFCjkP7xzftjkSLYRU8fHKMhhPBsS1tPqFN7+eOvWUVQm
	 44KD1q3ZfL4axl8iSEh+f/iPzxoHWGFCNo+Cn7PFAQoXo/YO/u4ggXRvoOAQoLxmT7
	 Fzr6w/5+SxxYQXLa0NIgvZAizliBFIRgXwmK1uzF4hmmPJsCnhHH/UP2u7sTUpIYKr
	 7uJtQ/n0Zw+GtYPR2vRqGwn5W+DFVAiyad1xhOJMGULsOFhsbITMivH+hBKa8KJZnQ
	 cz2oWLRq/zDdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D2CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978799357.4387.11547983083397848454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c35126d46b5c9156d59f0ad9dbee501c22a0ccf890b628f1a496f609e5eee31
Date: Mon, 06 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759787993

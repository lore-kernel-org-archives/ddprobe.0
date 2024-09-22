Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B56829A2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 14:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727015155; cv=none; b=FzhtVE1aWr4J9lyEjBgSJZlM6fzbnPFEGWosNQ4c/+skdTIA814D64jRGLgTvrytgwrloXOmSw+LDN9QD3c3C20S07QFwNf4mi9gVquivjv9vMZkO1D1qRflZR4FMSupponAj5aA8lR7gsapoXQZ5Bak1J7uu3kNKIBntopxKjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727015155; c=relaxed/simple;
	bh=zuugsIyUN7hFPE4taxsMCcM4Wqmj0qOc5z++MLGMj9Q=;
	h=To:Subject:From:Message-Id:Date; b=mNwKf142H/nHsxx6Uk7OGUtyff7UOWv/OFYpopCUVOVdfCITVANVuUjKVZvLkyUt2AFy/Y4G607PrjNcgLlvVC3ZHX8EdedE0tjgY6ke23H8kbUgZYMQFTQwi2hRKIZoKqA4CvCOWdua2QUURA2xKoH4lul1JwcodPOFi3/ExK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjeGvC8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjeGvC8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B074AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727015154;
	bh=zuugsIyUN7hFPE4taxsMCcM4Wqmj0qOc5z++MLGMj9Q=;
	h=To:Subject:From:Date:From;
	b=jjeGvC8Aq3xq/aJXhrvO+RvY0J4OQcs6vA4I6MZFnusirF/0y6QeDpHX2sAzsYj2b
	 0YFdDY9mcvOHFJhXPCwICTiOfxzXRnFWfivMLSJD3D/hN/mhPX0N/ZE0pu/qiUvLqD
	 Gvy4L26i2GS6GvrrdxR+RrCYWgLM3BpmdTzUYHKh+796citrQRmP9nGoFyO+ee7Dkg
	 7i+mQuvl+ONZs+kXtg+ko6U2DQ3L2mXmf9hDnvSo5X+OR5O4Q4ys+q6a3s4nRr5eMa
	 TB/INDJ7Yj+IWBOsnJUMiWxocMgb//N1n3pptDKzptK6HcqSz35YMnF/9s9Gpq18o8
	 2/VXi9HVcFAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C296CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701515361.12591.14729317208505260537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5732126b32613f36c7fc44ef89c7247dbcfbc4087b411796610ab5435e74b32
Date: Sun, 22 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727015153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504853C2B9C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789411834; cv=none; b=oFG4i07UEMOzY4yoaybXkGNpfOFlGtP9CPZgqeDAmS69h6EwRa25KuILnBkoUDSxdcahyuySPrPK6gE9WTZSuYz7pd7bZjQuRGdOxuKtd/5Vv85mLkpPb4u6a3zHhGz5i+rMbqz0wKAwi4pyiziYC20q4gKkBWodIi5mSzui9Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789411834; c=relaxed/simple;
	bh=YwhdZqSxbCGEtXQs06oEIIP/mqHZxMUUXnXO93Bue3k=;
	h=To:Subject:From:Message-Id:Date; b=g38Kisq9r6yTQhtIoqiqAJxYi2/mBVMxPF28PnO+Mw2r09MRRWMdUZJEuRYzyxat62cN9qwcOvTn9mmdcO6NLA+E4g9vGE+HuST1W+R6Hy6+TqgqjxqEDj86BTRgeppLpWf0fDluWMRVvq/5X4aRE4TWWHzkewbkOkhI6+IBLrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da4+zwz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da4+zwz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16A7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789411833;
	bh=YwhdZqSxbCGEtXQs06oEIIP/mqHZxMUUXnXO93Bue3k=;
	h=To:Subject:From:Date:From;
	b=Da4+zwz7EoCXYgAmcJPBBhi5tgEjvuqmjOfDRod6k5bTK8AE+61WL6NQSIMqEttut
	 kbGiULaa4l3Uroo2E0Rq0mQVVcH2ecBx1ZbwuWQ0JoUssD0k3QOTmbnYGGsclMJ4Na
	 fJjgAY1Sps5kumFZYK8qCTRZBFOGJYF8cG6YEQviumj0l95mPAuDrQh0mU+4B8+bqV
	 +JmuIaVAdZSyESa/7OyCFUCezt+sEhuMTtF/WoeGSu9Njx2PS7G/w6dAcc+R5NLHLM
	 l+vtGyv/uWKCK1dRqv4ZZxMsdEodJrUyRF2A1U736wAADSGvLYSV3kzkNWMnWz2ekQ
	 VawXT/ncpCYkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE361C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941183370.20720.12103169663086842176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce74140b8726b8e33f88f86b02af7cfefb566f8f3dadfa2761ce779e59537d1
Date: Mon, 14 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789411833

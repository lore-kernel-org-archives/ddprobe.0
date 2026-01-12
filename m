Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A043590AB
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768224234; cv=none; b=HNG1gTD13Jnfn97+MByDD1KSlac8sx4v0f134V0dVOLSlbVNUCZ+ZrzWkhhaVyTNDmsvqNmzIVJZczodPXkgik9tofP4DJHB4OsymF1/zEOeFWF+QPPe+y83NW7nf/2LNUsaxdfAcBuBBnssTyEABtBdTrTt61IE+PJCBhe2k0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768224234; c=relaxed/simple;
	bh=YNm2uSgCw8WmLDumtgBfvHwGKhpGU3hdyG1wD/Q82Jo=;
	h=To:Subject:From:Message-Id:Date; b=WXo96lXgXDtUvw8usm8zTOHTXK8ZTS0aav7kA+DPr2o4ZGnFmZnH9Z2Ug+FWcSCIYETPvtVdhWnrAcZCbliUgwG7Ponl2wB05UWfUwnXq1qncqjOedNPVURc4LriHYXqSJqIPz513Z0faSxzMNEriEyLiKpewOZYvMChalMZL98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEOQ5aBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEOQ5aBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E720C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768224233;
	bh=YNm2uSgCw8WmLDumtgBfvHwGKhpGU3hdyG1wD/Q82Jo=;
	h=To:Subject:From:Date:From;
	b=gEOQ5aBWEW3yYiGnL8f+s1kWDCvdRhDNy5Vw5RyBEfFjc91qNqBnAAHuRMhZcGhxi
	 Z91dRo7SbxMMXizZ6y4PzvVjfsx5+RVsVnobRCdOlWG6yPVO9trqYOh7B0L11Eqf3o
	 krxclzaMt8JwVESQxzfRThgg9Bj6A1PldA1EvL0kITz1gTrKY4vVoJmU7ZbkZQirtW
	 17pZIsKBsZL34ArOtoxyAiT9Gfq9ZQEbcR2mjCyFX6w378KmGsGsFjRu/wWsqY0ueT
	 WPFMCK9vTEsGfYsFvDLfZFQ1Q53hxUN8a7H11sI/b8lhrjvKodSQM6aLJQIQDgxAJR
	 RnvZorrT0YxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB9C9EC8E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822423358.19041.9723343383678418469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab95b9111106dd2b5e68f5684db353b51a0ab9862b61f2a53ee71ec0dcd37ae
Date: Mon, 12 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768224233

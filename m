Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23240222597
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764712374; cv=none; b=GKLBu6vb1Try+CopdeSmIzse1xC7nEvUNL9iTaMI9H+GVu31ndRgDB9Jxkbl+I7tAH7clSONKOwFIgUN+kl4gtyp4B10rGGlt1tgJlzgCF1129Aa/7avIzK8TBOFWc4/SuRHSW/2aPgQ08rXHxHvELfNpG7y3JHpWrEUZKOIcns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764712374; c=relaxed/simple;
	bh=vA2YZ2PnUxuuO1JPBR4bgGfgNZPKVxOU6lhWklVScY8=;
	h=To:Subject:From:Message-Id:Date; b=H3V8fxcZGq2Pz72QM3xBp6DM/g2w04PrRpwjePNxSAHdpoZoKx+5EMBa6ddeJc/IDBMyHRxcziPSEIxK99+MUiuKjImVDj9pHm0qvGF6Rr/MwK1ZDP7QUce4O2Q2vutCtAfIeX5Y3qdeqNbzjfV+AoXS0+xa8MoumnbmBaScT6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx74ZRNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx74ZRNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADADFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764712373;
	bh=vA2YZ2PnUxuuO1JPBR4bgGfgNZPKVxOU6lhWklVScY8=;
	h=To:Subject:From:Date:From;
	b=Dx74ZRNa/4j831bDUQFWmCBSpEuOMYPK3D5Wq5bVnhkFKxHptE5iWTdZKvW3I3bT3
	 PflTC5QAISmnX6p/Vw50er/1JerT3UvRibkTcYUQVksty85QsS5/Gb/qxvvOMveU/l
	 PowhhJi8cCq24u34KjxcXW3hc6Zz+kIFVJhZotfoIkrAxEI8VcGWIPmOarl9PaNrO6
	 r/Pr374lRrktEUXtQoT6HbcKZ5hW084DqIkXqJLlQKF7dlKRAXXoXsG0JSFNqVntia
	 mkYveCzRsJpLwXYt9oBsQp0Qjd3DlWqfycl+9TlyYr9TFQJ/+n3AqtmFL5yk5/LAqq
	 sCL61N1PfNvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96850D12677
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471237360.13169.7001466004680805748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8b13dfd6743693a9a2211618561e80184c9e18710ed014ac8695273bfd5f6a
Date: Tue, 02 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764712373

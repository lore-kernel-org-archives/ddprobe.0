Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2866A433A6
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765423374; cv=none; b=k8WcEIFPsxvJHzUyfbZopaPPEl5qM8Na4sI7eP0ivKUtPaiwQZeziApeouO3XIXwBvUYL+ur8FIBy0lgbI7g8JegDgAibehzyVdKOtNxpG7Y8sCJQlBsu+5NAjGwih9xaVzdn6GjYgmVP1OqUUc7MJfD7YWjBq5yuGkE6aCAyT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765423374; c=relaxed/simple;
	bh=96fs0tT5CR7pB5DRnArsG6tQT0ON7OuW4CF9COt8Dyk=;
	h=To:Subject:From:Message-Id:Date; b=AVgtyFGrxeedmHJ6ai99yrJj8tZ2F6SOy36aDf8/+8ib6e6rTj+4wmJjjuF/ahvx3YdFOLtPy8+zcdE7CIqHG5xquSLueHtnghuwhYVLC64ucK2OlrAjNIWNr8u4mdmumZjmrycTE++JnSdn3G1hj/nNcnycYVI02SNKhX2w/+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c47wpe/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c47wpe/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3A1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765423373;
	bh=96fs0tT5CR7pB5DRnArsG6tQT0ON7OuW4CF9COt8Dyk=;
	h=To:Subject:From:Date:From;
	b=c47wpe/T3t32JNGA1Go6orUeDdA0fGqv4h00Jc2nwrgRSz9Rx7RzGwWZy6Rs8gNID
	 bhmQ/b1+FZi8VaviqJNV0ETwSFkc+aWIvPqLnOv541HYtSeX2O1BhQ3dwhga98qPAJ
	 B5hMwaGorF9zwaTDyNzM5gRJhw698qlheL2+aNfz78hZbXF/r0NLGTbvqmVxQZqq/H
	 DhHTEnPp8qV4TBUwIvblAE+rO2WMkUxzRcLWDFC9askfs27UKEq1H/NbHftpzG8li4
	 Xx3LN78qBMElZur9PpfC6v2GZB4mt43X/yJdRfjpVfFS+DFAU5Tz7xr08GCbJzAAzU
	 dAcLHee1Oiplw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98697D3E78A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542337358.19040.3387415732809919237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae03a74ee5f827c1dcbb6af04910fde974ab4fc09eafb316c955c5a1c9d3610e
Date: Thu, 11 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765423373

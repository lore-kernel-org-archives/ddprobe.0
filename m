Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23217B50B
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741303134; cv=none; b=Kgrnula0CRrtpFapsx7gU7kFAx5cWfKaMSnHYW1ceO70AG1rUx8akEXYziL7LU01QaUnxoVIWjvrOGDaasWIbgPTtpF8zwAyoq7XvD44GglMJO+X0sr/S0HEd+0B+Xop+BEfED5bYsIgjs2sOnK8fvRUku28vbvLsiA4S9s0baw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741303134; c=relaxed/simple;
	bh=Zu7ivLH43HeUWrtRvbLQRCDGl37XUwAfAw2QVY8BETs=;
	h=To:Subject:From:Message-Id:Date; b=Xd9u/Ojx6w/DDe99uJfj6rh8+L6RN+8OYZ44l7no9d6957q6AhiV/lkAsjM6PAgnxnSiTsnA7NS3QrCVe7xY0mIIsbXxOLIXuJPmlKEfsxRMozhBI7ADNnjukb+T+8rKqAnfYKH74+r/l5B7MZFjv7JBw/JWNeUMHVRGiaEOYrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHl77D+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHl77D+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA94C4CEE5
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741303133;
	bh=Zu7ivLH43HeUWrtRvbLQRCDGl37XUwAfAw2QVY8BETs=;
	h=To:Subject:From:Date:From;
	b=tHl77D+f6DvoTAh2HRQakHfrqylMIzK3TShVgjHl8LARQzzclBRAWzTFvXJ2pUNqX
	 GjU5jntHFywcUFrARnzoudUrLCNG5dzK5oPe6Ki0rRQzaPb0yGXgGF4lDlwGVxOEKY
	 jh8eo9s2YPlJyI4HLh/Xw6k+ecOWB8pdpz5u9gc2G26Y25VcLX7q5+uu8vdpmsMjVF
	 egXq8R5WGLcHYmF4J6SunUoAyGNZZyYbwNAdjzdmFDkEXZJK5UZ3QO8PLZcizz6k/f
	 Ms8ClocEO0CO/MS9IvGjEENeyIrbuwKL33GQlRIFlKFGFtcnVj0y+sAVb1Bwya2I0H
	 B3bAH0mzbl/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92892C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130313359.23871.7398606794450040654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d84509420d83af07876364877651ca2668922c3a91079a21d64de29d005fbf4
Date: Thu, 06 Mar 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741303133

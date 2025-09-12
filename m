Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2385E275844
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757655594; cv=none; b=kKO/QEy7abqGDzvL+qNf+0bXKYOB61cAuVUeAuzs+bTqpYZQuPbQ45Sf+r5ZyFUPefIKw04e7hwVUP2Gd6dxcygfg0VZodA+wA984sogF/+eND1aQyHXMTcXlC7J3xMdX+U8ZnJiQvYkmJLbfQeMqRC43VsB0bg7RyzLXfi/CEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757655594; c=relaxed/simple;
	bh=ITj2LFZGq2HNq/nNdf4HCZIChitvWFZC+oFOjAuSpmw=;
	h=To:Subject:From:Message-Id:Date; b=UUue8CknR8z6OSB8dDcQ7Yov+4WWySifIocWfyiMLCoGqQmWZmxKhGFTG1SK8DvbhY/GtslXFXATltgz0JrA0mP6XYxOGSvMFIRG7XtCBIJtWuSdqy7Etdam5HJIdrubSo9RAgxyRQMRDtSZ4iongSNGFl5yY8pXqgiwmsZJUio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euguIaL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euguIaL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E618C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757655593;
	bh=ITj2LFZGq2HNq/nNdf4HCZIChitvWFZC+oFOjAuSpmw=;
	h=To:Subject:From:Date:From;
	b=euguIaL6jB2PnLprVZJkRYVLw0G8QJ2CdelBgiGhd5XHglH8fF+pBq+T8cMR6pU+T
	 lkMmOjjQRaWjf+cHxGD+qKEHTsolJw3i4rvC5EjYiTcNy7HxDH9Nup+gdaRKeBDxKz
	 J6TckoHjK/IXeuZh9n+mPhFgVQXssQcclgUyB42XMyohCcWVYrX48wlYUHrtgjxsdv
	 iakxQTKftn2wmffn7r/FmelqtiizrWPsr9G+7hn3SXptsZYG0CGwWNu5JQ9SA9BLo/
	 3wXFrVH4kYMwPzJcg4474HCgfF6/lg0WPj6Lx41Pu4P10yJGE95I+t9kbv5LGfFPq1
	 ZQ4dh2cEVGQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E7CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765559357.18140.12918170790990534516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc07ce5bceea0d8f06de699f2079c03c9336906b24c3476c4806594d171a80b
Date: Fri, 12 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757655593

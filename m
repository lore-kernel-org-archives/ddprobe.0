Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B04430D3EE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790857834; cv=none; b=nPptQ3wfjA3momtQz1QYUilclfTKC+C3WVAqUaoEhzH3dC9jv1bQbAIymprWzrA4ulrBZFV36J+oDVyHUGoW4aeQA5py7zJtjVNC7Wy8DB21A6Lyt+1s6P3Ir8d8nUmJEI0QLwuYe1e5C4HiFZ5zdkSsqByj5YDfMNrlHCgeuKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790857834; c=relaxed/simple;
	bh=JtdVBNSEB5hbm4OWWLjJPU524Y8CSWa4IcqaNnLa1Rg=;
	h=To:Subject:From:Message-Id:Date; b=StxlSIa/hKfHMo4i9t67JE6VPgE1+hccCVThpbDibFVPQjLeVLG2fBRpBLrWN7lsFZLYel9pXQmVH/tcCpI5UW/MAZpMPb9ccP74AgITwcVTO+SjDaqxHw4z7F9gq0BLD2eRs7/8trjFg2tBlwdMyS6W2iRowbKgxXhhWeC+/zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdSJy1+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdSJy1+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19D9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790857833;
	bh=JtdVBNSEB5hbm4OWWLjJPU524Y8CSWa4IcqaNnLa1Rg=;
	h=To:Subject:From:Date:From;
	b=HdSJy1+xs47GV9p3XflLwneJYjiOEpVDdWNIiSQUTCYPOc6BWyZ+eXIsaCWoJfzer
	 8bZGQKjReYnnf7OLZQD4NhQEpLUgClmDg6XVeoRh+aOTKQRGTMoi2ZTZFRT65XKs9J
	 +7S/CVy4xAXFb8ZcSCyGsKqmHf2LRBNQ9Q/h1JUzsCf2g9rxo0p6yVCA1/QxfTEe1r
	 ZlaPCfIducjNCvZD5vy3WiOLl33KRBQzegzh3gLHdxjFD9jXBxauLgCRJzb1tP7TU8
	 kuVlLLWqPM4KztI5kpHRA+rLlA3bokoXX0Bm/TWCYgurvVuPQ22Sy1I+dHKAKAV1kV
	 kFZ0iEKhMY6nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3F8CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085783369.17182.13726477486493425308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9646797bdbd4176e78dc6765588f45b1b183b815777b7bd698cc552e1cc9116
Date: Thu, 01 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790857833

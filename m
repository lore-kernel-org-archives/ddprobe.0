Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E6C360
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750032594; cv=none; b=bYw2ygTSEWcpe4Pch0YuG3WKYcGTETAoLm7GvVMoPiPeFXvyLQxPUz0x457a34uGX1ZepCXKXhXu+dYGSaq6CIArk877f6s2QzVeQZceuXM+uPZq+0aOUIwV+va+7vJozlZnnO+zlFSJ7wOed+ispee4PQ9ETsqByBEaaUXyS5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750032594; c=relaxed/simple;
	bh=syA9DplSKTS4DXp3L1KLxHYGO3BwHn/CxqkMQjshZn0=;
	h=To:Subject:From:Message-Id:Date; b=fILfGdBCCauy/VrTR1ZGQAy9yeByL89UVvrHammw4pBTs5jH/ZHVBhhzQ2S/AP9pudSADxF0OeLDQv+tST7OBy47kxW9B5yrIn7i3sYEtmZA1cXRPvw6TKatc4es1BlzT/E0qvi35MQbwfh3Hyv604rOmcptHXMMDNJh9Xz4I30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn82gf2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn82gf2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0A3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750032593;
	bh=syA9DplSKTS4DXp3L1KLxHYGO3BwHn/CxqkMQjshZn0=;
	h=To:Subject:From:Date:From;
	b=Qn82gf2BMbZJcGx1Cf9oV3A6pR62kXYd7pmZZvdOZBFCX7ArTNX3+NUsSgHDyjCQX
	 wATXXE1UtMgTn/r1QssAAxobc5tOnqvf554J7e3jLDidXpSvAX3wOYMfHRLPb9JYt4
	 sQeYvL0t0NxhGIPXqBd8aHDhFMGP9nrWlrGl/mIBtGa7Lb34FQYIczjo0Vt7eCNgQ6
	 NYzrANdHYI9qyIcW5g9JHE82Jzs4AIIOQlLS1KOe7+I6J0K7fgFfs2MXTI0K5b1mN9
	 mNQPC8zhiDyGIoPmh3P35CE/gz1AjnhFvZviwxyP7enx4oUUszvqka8B5aunH0T03L
	 FOr+syXpooI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992F9C71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003259358.28009.11634173958154066742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97d7670743a1684b8484571c88e9f2e6dcdaf9d822da2acb53509f76abcce88
Date: Mon, 16 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750032593

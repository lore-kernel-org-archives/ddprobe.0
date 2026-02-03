Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7192F872
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770078234; cv=none; b=XUa8VaoqIer/FdaFl/2Vc66+pQq2pmaQaNP5OGKJHJ157QvNZbIrKT05malBIdlyEHbv6wdBhnZ/xPFv7xq05OGaNxiNDkWvYlbzyeYeareFn/p6BVr1fyZOd+hsgEquyCYe54XYirOqE0NbYgqmjAjf8c1QOhRDPKOjk4+CBT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770078234; c=relaxed/simple;
	bh=HH2p2PHXHqWjSo0BwSDGC5y6/Llya/Pxwr7cophpEBA=;
	h=To:Subject:From:Message-Id:Date; b=iwpXz2L9X52i1+EXGaYWUVqXCNEPv7maAMw0x/ipTELCotSi/afpaTu28JDyxftGRelYFxp4Wdonbqe9h7PqLd4knhIqVBl4erUWNBCozxQRoP6ntm9ckUW7A4kb1mNGDRSrto/pd245qU7Qi8xdClhQ1mNYspA+ngQRueK7UWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3SLgs0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3SLgs0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3D5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770078233;
	bh=HH2p2PHXHqWjSo0BwSDGC5y6/Llya/Pxwr7cophpEBA=;
	h=To:Subject:From:Date:From;
	b=g3SLgs0IvoJI2D5i8Syj8SSnRHDQhHnRR0cvxUwAUkmEEkyVE6UVkTrpdD5P5Q9iv
	 03222a8Qju4dmHJhlcfLMNj20iYIZSVGE1kS1DSoUURQzH4Y0CNx+t2wiahJj7BoxC
	 1Q1zxLD6KEIfvOG5YYI3E93/Pp1KF/vc97oUXvR72siJTLma+PeFAE+ICUWF6k63pL
	 4zU9a6E6gJPJo3hRIYC9CYhuL2jIRzFYONyUwmHyqNB/tTgxyJEogqNdA2jrrWVGIp
	 QPSJw9w0/yxPzWUFQclESznl0JFIaqbzpWtruA/QLgPvorIfJf4Q2eqDwhefJWnWVH
	 8+ErB9l2Mec7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFF5E7FDF3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007823361.14984.9561528060535144268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8bfc523fa867dab134ce48a2dcdd2c0ce0ec00b52c81ae060dcd00f8f0383b
Date: Tue, 03 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770078233

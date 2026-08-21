Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6153841D21D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787299234; cv=none; b=Oqu5qupVZR0lU7UqDl3B342/M3z8tfhj3g6dHZx9PJkXJA1zC2g9gOpVJGy2XyPeYSYC3qgGl7qmvM/7NNxmaQmddCoD25aiCy8Wq5qOShjd4Fd2uWYU2hB5onG/UMOp0VavlCTEJO8kPtqvHMOnn6XjJlvKDBHbj03Umxf5VUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787299234; c=relaxed/simple;
	bh=1LCBH8IA837mK3mr6Yl4jd6ejziOWHY7DEBr8KQJfrw=;
	h=To:Subject:From:Message-Id:Date; b=YQmVEargNolkJCSqExwTtS/7S96RlxlvAuYrXjbsTXSbl6ylfCxq+t1RWtZ2TM7So11JhcnZ9L7r0lijHbmO1YZfTHcoYjti1Tq7TWNlVuc5TCDwRU4Hb+PZkKcr2P1Nc2Xc8kHbmFqBftu7nDBdl4NliaFeqwllenpHOT3DTew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJslmhli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJslmhli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2025C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787299233;
	bh=1LCBH8IA837mK3mr6Yl4jd6ejziOWHY7DEBr8KQJfrw=;
	h=To:Subject:From:Date:From;
	b=CJslmhliYEJE1TV2zdnybMJvQx7KOx6W73w1HcRqsF5WrYU4JwdVt71uznFTHJttP
	 DJkC+Ku6VYKAio9fRFv4W8hX4HoGkWNtRc4gVT05wjP2WuS4upygpQxT+GtpptXZOV
	 zq6X9PbRT/6aVq8r0Ka5MRLt1hN4I2IkgN1kQYny0l8qE8cpK6ZGtIJ0ZeGqa5tAbF
	 AZe13Nd2kCqv6bvCDnogFDmpoVMSeOT/KhX90bAj4j8hVOzwpmhzcvDz5CWGA84SiB
	 3HVtk0UiiO8Dn2D0zM0zDy+wjnUZEzZcgd/oHjyh8m6smOOiUJKhpnyxyDVqPMlG/z
	 kBGXQmrF5wNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B810CC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729923374.12847.13615574009753258565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1890d83f243f1a23cc3499483aed01cb53f2da73e75a312d5a3808ef543e3d09
Date: Fri, 21 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787299233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174E01F4E34
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758916794; cv=none; b=jFcSFllwgHsYhOS5aMvlQRzI2ATRzRjFlQRIaGOa0ODpC7RANbny7zf1arW+88lyfZu/qXeGy9msDEzwsM6Jn3b6DLkvAoLZ0DyV2BLkzQZVor8BM+wcaKGwVmpag3lxVDB9Yo2InwZpFByY1fqEjyuUkKwwiLl4OgqhouhYamQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758916794; c=relaxed/simple;
	bh=dMmwgJysQxsXAPDnZSA40L3SJ1+fGthG+EQ6ZkLVOr8=;
	h=To:Subject:From:Message-Id:Date; b=Rr4yoA06FUjm2HyyitycDj5bV/bKKpKhHB/4+MxuC/FrIoY/qdCHjcx5u+QUQIXtzfVqd+HQMpuqQhY5IrJcFHKEW8UPoBuiGJFbTfjgtNv12F3UpAZj1dZuzngtY4RO6gqfF94JMHo/1eh4ktLFxuI7DLmgpJhPJjP2JIlaZFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6GPOQbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6GPOQbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7588C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758916793;
	bh=dMmwgJysQxsXAPDnZSA40L3SJ1+fGthG+EQ6ZkLVOr8=;
	h=To:Subject:From:Date:From;
	b=h6GPOQbG+29swMWpLWgU9As0yLHVT+1c+HeDodu8z4EkWzXbPqG3bQK/oz0UUkuN2
	 cs+SkSLMzw6DOr9iddZdnh35M8J8i1mZoIIBahuEofLgK5KjfJwxh633lqd0kFcrNC
	 TlLgfQigziDp0bvs95UqvjsAfTgpt0UVUIHQIlAA+QotcYdNqbcIKmvB9oUrIPNGO4
	 AkC1J+LKLpn/uYONbXibL/dJmIfXm3MXr5fBwzubHFsQ0b8fAnWFfbjYkZW8h92T2j
	 qVoxbNdNRGdJLwLf+lmmMi04Diu/ZO4vsvfm6aXFKPwDoKZPkPCRn7Xm8lN0u4lxRb
	 PbbaZuNSuAu6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95578CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891679357.16401.14204788872503944247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a48dbcaef11ccd52525266e933a98948e0655f5bca95b4a4bc2866a93f7da6
Date: Fri, 26 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758916793

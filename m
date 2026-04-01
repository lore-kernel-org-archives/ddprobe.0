Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3217035B636
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775081134; cv=none; b=eaYoDeMkl9JE7nReClzWiXbuT7zfB0MEEmUrZgwHz217z+POqdwwR/FUD0I288S3wX+T6hbGp5XjJGIZteseXreL4GN0xegztdAG8AVwGMxLVHZV2X0SjX9BZdx9KINaVIW7DFNznWrzMPeVj4po9FyGvioCVclyhwaAv5X8Xrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775081134; c=relaxed/simple;
	bh=PTwHIY2IZ/j9B9Yfsc1OD3IUvqiqjlH21mq4d2Rsc+k=;
	h=To:Subject:From:Message-Id:Date; b=XPgeWRwJ6cf1LL9l4k+5EimFVK4+HtlAJIrUQPUK4sF+4CT+07J+h1Ce53/q+NSE0UvEvlnbfYFoTbDhiSeUvx/YCmTS3LRUfPwz5p2D7yLsxeC1pZpIB2CszM1ToZf8iWc9Chu8v8oCyIk9H+4A+kSn0YvQUtMxvcZLiabkmpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZQuKIYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZQuKIYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D6CC116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775081133;
	bh=PTwHIY2IZ/j9B9Yfsc1OD3IUvqiqjlH21mq4d2Rsc+k=;
	h=To:Subject:From:Date:From;
	b=tZQuKIYhlZK7Dc0fo/7jfQnxPnGhIaWLbewU2yLtlxMEJ+eRzzZ4s5EZ5Fi/vF2vZ
	 Mh862A/2T1LZ1K+WvEYZ1M+PosHg7yXmRoJNyR3yf/xNoDW6OA0JGxpfLQp6YJUoI8
	 BppUbnjVwDdfzgd/WjS07ioDGuGu5anIEyXHz2Ss+fp4B/I5fxJRl+oxlVz9eemrX0
	 h+th9SlMugyh3p7ORm3B7JQMLn5uYiZo8cZjwJbIpTPu96JlPf2zmMAM3sZsfP6ew/
	 5gIvEutK4xhq+LOjo7PqwcgWIEqsWuB4oLYs0TIc3BTt5HkE2UnyHvG9ngj7teo41y
	 TbDSv5uHuIK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AB410F6FDB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508113368.29867.16164163470785910714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdccebe81dd9c8ee0f58048c86f97d96bc1164d027391f8040ce2e432fb6b746
Date: Wed, 01 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775081133

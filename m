Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3621318594C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724433954; cv=none; b=g2+YO5SqoZzckyJJ+Q/nONyjN+fXrUODIy2e5hHEsbWw1qLdkNGbKyth8+31m0MiyT7Jxzf3k8GVJpO9a8zm6VgHHYX+NeQJvsIEV3L6yvAy4rmm9IHfkwiCj0ybnNipy8CIFGa7bLO+VXak4Mtv6YjACtGqbr/2irkxFQdqqhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724433954; c=relaxed/simple;
	bh=u4D6bmQOBM21qXl/ckwHHPxeE2jGn8j7EaMbptIn3EQ=;
	h=To:Subject:From:Message-Id:Date; b=X5sspc0I8GZChZl2lB6FR52FcXEjcBAbbs07CDJQ9iSEx+LQc0KTmsOarx8lCDiFsaoqWRujysMS1cseiPup6vQbS0NhEZRemrNjRTtOzJ8l1xeeYZznlRcscZL0HuXvcnKGPvhApZh+VeoHGfvPKAvD3v0paq39jU1cEWyvfl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SO3Sj0Ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SO3Sj0Ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654FC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724433953;
	bh=u4D6bmQOBM21qXl/ckwHHPxeE2jGn8j7EaMbptIn3EQ=;
	h=To:Subject:From:Date:From;
	b=SO3Sj0EflonYUAKLH/xPOXPqXOkPRBF5rseMMoMdSd/aXLrFmJhRunCgZRh8+hJZN
	 lPznrvBtjBaa4uv8JHxjw1tdYitNk05QsyPjB0MCt77XrdKm1U8xIhPeC4wvfMznkA
	 yyn+I1WqE1HpMo6oMifUxJTOANvb029Q856r8Fi/GWgpLm83oTHhEN9azeywJRbpK1
	 L5LXp5cERkDQuIqHRWdcVNUg6Y1S3+16Arh6W/Fl4OGFl2wgmvRyIJ6uLEeLYsbHXR
	 DhQgO1QIhVpYBB4VFv04s1VfBnsu9tFmkPlAtRVJdyfj9eU6eeRUZhRl+UqxpjjBBp
	 WTeopYkXzSl5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D1C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443395359.19824.6386414391681858080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faecb4d5f0dcacbca13d53a2573b105e6079525a333581866e69c125feb33032
Date: Fri, 23 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724433953

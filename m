Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A89820E30B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729212954; cv=none; b=DWMf4F+CkcdUNELNRds5/3oe7gAycdLkXCUdyVBAUEJBPeqHolKeKDwQlON3xDnYufMzNd9sqHq84v6mNgZYqBxlIP7c7SyeWTKXk9I8basIg0zY/NU+kq9heu0IAafK4tHxDdOm+LGiJAUY8pjUadqCslxDLQczwto+WpJ8kdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729212954; c=relaxed/simple;
	bh=eYVGer6i8JcnN4AbH1+uIZUHO7drEWYdxblcWoZsHlA=;
	h=To:Subject:From:Message-Id:Date; b=DCOKj3O4oLUFs6P4iEkenVZbp2K+RsKOhcAUAf07u5oSDWOgAGWl/w8N9/JTGOfNGNRsYFAQNkqRdxDaFI41PYGeqab8zaeOtWtukdj+QCbacyuFM5UWWsMxiZY0HLuzLEurc8ccds7/R+Xjs0Ck68wKiePk3Y8IF8ZIV4q9Lqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCsnBFcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCsnBFcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729212953;
	bh=eYVGer6i8JcnN4AbH1+uIZUHO7drEWYdxblcWoZsHlA=;
	h=To:Subject:From:Date:From;
	b=XCsnBFcdbusd9nSAKRii7FYBzX4XPuHROojYkM/y8/T4vQtQ+MSIVUnNTh2KD7jyv
	 nVT2pfTszIqLsN4IW22n6fxzflIpBuv+odm5M5ZNVN6RRgxARFkzsSwnrHQSNlL0e0
	 Com4xuHk6CXSk+6o3lDzH88qv8K1cV+RMBn3ozfpd3ImUQJvCu6Urltvp4eGds0JPH
	 cerikcwnMH8xucVFzstEbG0VrUyLE8syJu2d9TubNVcVYONWRXlpgQxMkFTJDvXfLm
	 eyv/n7+dliT9+bdP1eQUXkWlmVxc/0TpZExkbe4zX4fD/hv3vXg2aOm0+VU+GcignG
	 Y0P2mDzYIpO6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90100D3C53C
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921295357.8323.10327021380378063622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231da263b23994d2b14b48d3ea7e06e26e3c757a45239b38936d2a59be33b8da
Date: Fri, 18 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729212953

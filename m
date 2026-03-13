Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB3B37DEAA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773406494; cv=none; b=BRl1fZ7HDmTYdwl9b3LjDgG4dQhHRMIkbEhO844zAOnhSxmcyp13+1baXrn9rO21l2tYymRnDjfPFOPp9ubtoQbGHeKL3XZHwi0WBwgrSCAkx5HuYaXk/48g+YwRKBfPQsT96kaCbLBUoZNxSZCXiVHgvFWW9JUcjFXz43E9v6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773406494; c=relaxed/simple;
	bh=F4jgneqyHirnoJnLG8QKxYQ9hUkLKTtZMoCid2aMr3M=;
	h=To:Subject:From:Message-Id:Date; b=HPi7FCC0MtNTv6QDD3iYwgDY6VyI7Bz50rDMJZxvm0L8nSFFMNd+omyD9T1NH//0eVsWaiJUwAe9p0TW5naENmGqv63jVbQp/GxYekWHnnQ9zBIBoblDp4KxBDNkLjwAWQMAkxhPy9B74QTNkGRgTkw6VJCScOPJFzCasuEesb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3+yzWu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3+yzWu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A962EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773406493;
	bh=F4jgneqyHirnoJnLG8QKxYQ9hUkLKTtZMoCid2aMr3M=;
	h=To:Subject:From:Date:From;
	b=T3+yzWu2CGRTjv9jqmDZYCMmOQYZ1bGrSZFgtFDfIUWR5QtbWVYC12mdluTXTTBX0
	 j4cnnjuYbdYo3lE+CNeQpHMobe3KzLs+eirNtJOgAh9YmB+ebc5lZavDD6G20RIt93
	 C6IuR58r+dFzSkIa5FnJC2xgw1yhLIpjNiWHCLlSgtU3fI496oHNtic7ETgEPWs/7h
	 qYrfke+Jgr3roUDno9vaVQH42yt6fYm2iOYygvRTao+CLb7QqT7MwKfCt9Rbgzrfwe
	 aMZQNyxZ8jPqo6pVLBQx3vGwTFMCOl2C1b3sO45VsdnuqTxOsolJOJK04k+TYlp22c
	 RDe6bs4zbRCLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF1105F7A7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340649359.20986.7629355979231314208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa32dbfe81cd5ad6784628ef1b9936380556d6bc41bc83f7aa9e5e5e8837b320
Date: Fri, 13 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773406493

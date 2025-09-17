Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259F92C1786
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758149994; cv=none; b=ov5UMC+K3vBUxdOC9kVT/O0DAXlarjvVDEQHOpwTFZzSkn+som1lnCO4zsgD40/c3nA/aEUPa0yo3tn6DPfZCKF3VaNL9jsQj7HzCId4ps/0rIkmhucBeWFu9IEZJPGpMM/21C9RNm1t+36wR169r4hITIpvVNdC+Q8JU/+Zj9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758149994; c=relaxed/simple;
	bh=VVWrLM6NR5+ObVQfEctIHd5NavGQSDcpEE76bORKqjE=;
	h=To:Subject:From:Message-Id:Date; b=eAG5PJhDdKx/RrsU341F3QhPZMIsM1n3FvfczN1HgJ4zQ66ULhqhXpLoU9gP0g34O0mLHMw/d7Q0i/K9nf8SgQQFbVekZXLFfa8BD+l96Z45x2oqqayfTjPCjPhGWOO/F2SF/a9E+jXrJ2ieaI4Q1QXoFpF3nYcaoFVx8RdfoU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTkVakac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTkVakac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0671C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758149993;
	bh=VVWrLM6NR5+ObVQfEctIHd5NavGQSDcpEE76bORKqjE=;
	h=To:Subject:From:Date:From;
	b=HTkVakacS0N9mHiAEpwhOQuKxr3WiVsa+jW3kfJMILEtBTYF8P7d+IzLs7hZ+vcwr
	 zNGqE+qo+DD4H0odmLm5NJp3GG0+NKVFGbKFI7qhdVmJSct6Z6wEpqEElxmb2HBbaK
	 EBbxMDmXGzS7N8UdzfMnzInfdR3VqFCl+bRaXsVIn0JqUK+efkVNaLvJfqWeMf/mnU
	 9PBdb8ef+2z8WLE8CKK+YnM+C201MueC/SUD1EMOvP+1bfBBkpKkJKMd52AKe9770n
	 6ltVWxV09iZqBzv+Os8GYhg5EZSciNNmE+N30Jl6DkoVXPAdVYfcXvMkRzhuPQoK9l
	 xuJLsROXMrKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34ECAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814999357.30453.8993933382311102599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35477b32a8bb31f3cb5427eb842c11c6b6e512e9cd576e46dc44c5a3330d56ef
Date: Wed, 17 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758149993

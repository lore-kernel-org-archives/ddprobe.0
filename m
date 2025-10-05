Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29640645
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759696794; cv=none; b=RFE9GCW03T+3E1QN+8ACA3ey2tXYrLhajg+ecIj2XznRrulcFpTiha0efzYwU5gAyXFccKfHsTsXPTc0CQXyWjdibODcW7dhmGbIxqfCy9leAe6PQ/YNn0Y1XQpQatATInRVJdUY+TvubjfOeqF2jhgwRKotDfLq5ywP0Ct4ndw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759696794; c=relaxed/simple;
	bh=KUb31GdFLqBU93WcxuQNCK0cz3mw/8qmnMkdC2G2QmI=;
	h=To:Subject:From:Message-Id:Date; b=ZrOFwuWjXfeRiLa+nFSPyUg71TsY627eXnH+0DXSvj67LxIFv3FRh7CLx0w+GtPwK9ww+CJ7oVCLrufsoSWFQ60x3q0+PgStGAdT4vfBAtAHX3eGkRsMWLtlPnA2leDiTpWfzXaxb+cLTj3n9csrTp1JfDaJ+yz6JQF2WZkGVkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l83lZSOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l83lZSOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA268C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759696793;
	bh=KUb31GdFLqBU93WcxuQNCK0cz3mw/8qmnMkdC2G2QmI=;
	h=To:Subject:From:Date:From;
	b=l83lZSOH8ADnDy7S11P88h58sGRpxXVqHDZ1+RDwx0g/8vEp8/G7lN/1peIGnFTMr
	 /SD2Ii8HugpJUs2HXTwv81M8lTAKxv8Pi7xG4HjzLEBjU4iREWs4Lb8Wlze+X/fYmO
	 qttSQubYPM+sQHyMZXOQNK7rvEfZewKMpM2wF6qdATDGprkUD7CL/UD5YZO75WHaVv
	 oiyQ6aizRnKzkHgWQPt3ZI0tJp7c8INeYHwWtoJWaSVWHAsy4bCav7MBl2Llumxw0F
	 rBTcUTYIU1hKszXeXMIVF+Cj0pNsPBcUDLLg4YPdmczvvFYAZDVKGdodBk7XdARk94
	 j88mypSQITB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972FACAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969679358.7827.14734272842575625399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db02b5fc85ee4048ca479bb779ba2ee5ab0cd7f28416b2de0607ca0bd5263890
Date: Sun, 05 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759696793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0717C260A3C
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741854534; cv=none; b=D0I9iFE49GLrLdriPmdq2rLldCG6+GggWUV5jw6rBi/dd5NKtp3LzTDUI38eWtlrrELtazHmSvzjS2mgfLKYqrJH8MBiW1JKj1FA5u6W+8pLz+vS5phGq2ctv1lD2Tc8GT6BbjElStEYi8/os2H3eYSPzgw7SIXPfUraqLBRoWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741854534; c=relaxed/simple;
	bh=rDXbxgRl0DftQhmgHPirBO70aMF5Tcr826lTSkSBVaw=;
	h=To:Subject:From:Message-Id:Date; b=sdaRVV5ffqRI331+LRVnEmRMpvWaSPRq4ojvbVcDWcsCofPNHPPQnpjzKjLbmIfHs8/YeIFLeF6hhR0ORD3Vh5DRaEZlrqwZf4LrFsGJUCH7Wj0nXn+eT7SZfp/HgK7GYgOZ2Lh2xTCsHjriWqx0tc/e8tZzDW4/HQXQfpuwdm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvsAt093; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvsAt093"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE818C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741854533;
	bh=rDXbxgRl0DftQhmgHPirBO70aMF5Tcr826lTSkSBVaw=;
	h=To:Subject:From:Date:From;
	b=XvsAt093osjDNHxwwq6M40zizCIQUUoTAXJHEHS3vDeSFpLB+fNSowr7dFm6Xua+w
	 HhU+51mj++dON1mB2WnW1xQDwRfZxkooCghVyFhuT4wgxNiHbt0VLHy8NQJiI4Ho/a
	 BkWk2nhDbLG1zND/cFv/Y1czqHGOSnCEwqElhyCqTLp4naED8InhLkesuppz6msDcE
	 iip12LU2ScayYxeGp8uPWHhWmlajhDiw34IfchoYVdpt8mhOhpXYgcoaUINYQLzI7i
	 uLBLNbSYIuEStC1AIHs+3MHNMTaCWXgjZLlGN23SrNX5xqIcYD7qEzQNorNx8A9Lh2
	 Rcx1EaGy9XsHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A588BC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185453366.14262.2019774280134209162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615e5cef37b22350cd65bc85df64c4f03530d23dcf39a7f3c6881a1ca69f0d58
Date: Thu, 13 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741854533

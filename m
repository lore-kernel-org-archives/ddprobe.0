Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F41262FC2
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755845394; cv=none; b=bzuOJbfFWqwaV1IZVPtNRH1j5QU7OAzWmnMZe9UsKQjBZpPwPoJ5bWpY6HdHiz7L4Idfphuez/86QJoQE0QOXJ3SYS56CBwDVcvbLXySqJGIvzAoasfVGfXDvM+D3FQiKx62Y6m3yggW51K5g67l1BBs+OMiJqcMsgdI187tud4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755845394; c=relaxed/simple;
	bh=V6Y6hM9F1MgiGVJ0GsCThAI5EIxiZOwyhBiiLzzMPo4=;
	h=To:Subject:From:Message-Id:Date; b=Urqi7+z05LYFZvzl4986tt7vsGDKhABLflUfpVKHkuYHCB/fN25DrZyz3KrL/0/M01PupHcN0tV9BYjIj+RcLwivL5uCugXCySGbWigz91IaegW5vp8jnDFdv1L10VVx8mLYcjyPJ1C8899PoL3cbHeJEsSPO/8Y/ZClAq2430k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0J1inLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0J1inLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755845393;
	bh=V6Y6hM9F1MgiGVJ0GsCThAI5EIxiZOwyhBiiLzzMPo4=;
	h=To:Subject:From:Date:From;
	b=V0J1inLLywNwpGQ3nE3sit9JvHICS2LtZq2mbJ7JahLGhoUlwIr6x1Hk5BV6n0WD1
	 ym25KdCQ3dDEpDAayL8gKDgNAdVNct+IM0lJJyQhbeJydvTR0Uqre2FEJbeCCpsm5a
	 R23GINBXMuOVvYnLQknuWLxHkqqQkOMCBlcyoHM0aKw3WXT0a4fEpxl/M5N0jofY3y
	 Q1fcyypvYFycthHoXeAJ7dppDZBURpBv88b+AoNJVxWsE33FIwSg9Gg4DBGODzKKL1
	 YeKu18zREgeGbT+TDFRQG7Y1uHyxMsN/N70pOmAN399Fsppys9ELbyGtCUfqnQUeiD
	 9ByyzC4RguP9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1BCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584539358.27949.13334342852181694327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d4b919820e5598da0e3f58472def974a117a0ae811c8b7f2059853b425d00c
Date: Fri, 22 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755845393

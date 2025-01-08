Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517D11537C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736322954; cv=none; b=rDSzIxT/GacqDW1au2AJJA0gkfw4MlXbEJkZUmneRPFv8ZbY+rtkBSVll0i+zdisIGCRi5CuBDInk7ZzNmAc8yvcJocYMwFaTj68aBw81f3kFKVV3uueCi5ZHtyNuIvRa2gKpuzmLzyTX+RrMZbHigf6ttHWKZVfwY8uF+YFc4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736322954; c=relaxed/simple;
	bh=OeWHtf8/LMoLtLdfFxJdt11CBBQEL0sz40DViX2vDw0=;
	h=To:Subject:From:Message-Id:Date; b=mzxODnfV50qiqjdvBGXvraTWeugxj4aLMs4INhQ/QaIQ7Imk89U4lbH8YwYBkxuGc8wK8eu5jUoMN4KPnw/SF351201CNpRbHiR1swisAgkUyxME8xK4K33vLoEgm1Yu0xo8fpR8A3hX5X2xBqJm0b2VsNopbDvbJL0SgCG0Nhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUQOlug5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUQOlug5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCB4C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736322953;
	bh=OeWHtf8/LMoLtLdfFxJdt11CBBQEL0sz40DViX2vDw0=;
	h=To:Subject:From:Date:From;
	b=XUQOlug5CSEe+ghuLlSO/6/u6febbbRiqWnCFmnzBVBU98bhHVTBHty/ZOvgxJkN0
	 eEJBzNGc+CXaTSbhzYUfiD+A2eBJo7fE3Y+oaWNKorUv90NTCDNb335z0QrPBAr8fJ
	 05yxgcqMN/s3kQtH5ysJ9ogF/BeV47pA4bsyJaOySV0JVoFlrscA97bg93AKFERuD4
	 IpCERZ/VSV9yLqEFpx6lh54e5ij3aVpinmn8QSbNdzn3K/OlKvpAGJCih72wIakyS2
	 UIcZVzzjLM2MHO9Fqe/9uMEd91va8nj8uhQLAvz3OTpiQbohG96nC79kgjfZ5CmNgm
	 rKFiD6CCk8oGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF11E7719A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632295362.25156.10827573151848909021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcc8240750c94b36f43619f51f4ea3b154b8c815739a3f8dac6907c50f543d8
Date: Wed, 08 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736322953

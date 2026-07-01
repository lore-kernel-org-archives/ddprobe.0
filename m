Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369ED4BC00F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782929314; cv=none; b=LqMIi41YiY/+CAB6LPYUbGPX2kxYTB2xX0aDCltGQS5tZQgAOdh174QUsRXFLx/2irhZctYqmiTeupnNXThGhrbIue2UwROVaYnL6RVGVTxbqPy52pDxGOcyEGrcJc4FQkJJsja8lgshQJenGRJuB5kdZmqS4KhXKr0qUqQIk4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782929314; c=relaxed/simple;
	bh=s/Fl9qp5orfk9tW2FH2KnNscOjYPJ9d0vQoxDdWa0ww=;
	h=To:Subject:From:Message-Id:Date; b=XkSzxwS3nNfkxKIDZkIIiZGcLwZRQneln54oLZk5hqRVbBSOOrSfga+KuNgfdTYAqO/vXtf1NNQTdKdlHaPUJwP+5cNXgO8scl2OrhRdXG95GCLc2gHeV1D29kPgTGmEVxn3l/fqoqxx4gmhwR3MVCbbBe12Azq7HyoXp6eVtug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRB+XRPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRB+XRPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6132C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782929313;
	bh=s/Fl9qp5orfk9tW2FH2KnNscOjYPJ9d0vQoxDdWa0ww=;
	h=To:Subject:From:Date:From;
	b=oRB+XRPyuaCXSnARqofk8xf2qmwwROUVGsFB6gwOPBgcx49YpqQmGcDfgUUqEToYm
	 q1b17H1mVBHrZg9e9QEMWqoxb1bZX1t+JbsDJi7GMpEg1MtxUSUuP4hTYn4t94lGzv
	 U57+lzFV3oPeW6oZSIe7pL130KMyWXjzsohfR/q9FRvKU73K2QyxFkVQMQPP55BgNl
	 tv2/58+YtE+2oJGbRlSKbecRPkkQGCJgQf4k/eLEeqMyxNhdvbeXzJWDw4zpn5jPSC
	 qoc4bWKDCt3aSbUgN0j1TY6OiiA9ZjJvSy27F0NRbN+bhPRAp1rSfMg8IhbK86xhFP
	 YhjY7M4cwdksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC63C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292931369.26547.12935697951855242093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5b72c522881626deef32c777ccfcfca06600c37379462758c5ebe4822183f0
Date: Wed, 01 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782929313

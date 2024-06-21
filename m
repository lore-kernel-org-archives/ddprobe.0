Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D39E4436
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718980343; cv=none; b=A590etgDEdpflZs4mSrak0pxY/scGxHFFuZePniTG2W2MHQeINduN3MntrqeMQLFuYvIz+9mEQ8jW1pR97qi30vRDLYijnb3V74sbKxaeitspfTnH/tWJ0G4T6lTw1dISZCRxrh/rfw6v7Za71OGhy/ivEh66I6estBdF0uBimU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718980343; c=relaxed/simple;
	bh=ULi+jJN2P/co4fkGbTb35He+5k2826hn68VcYiIHbSA=;
	h=To:Subject:From:Message-Id:Date; b=H8SIAsGn0k889PjjzA5WIs6vfMtbE/OCfHnd4hqlaghClZcJijt35oSWHiS0RnoItkrWdbDDYdYwJzlt6ZMJgRy+pDB7RGQkaIPe64SWSlz6rpp6H+XesTbQbp4ZGvYDgDx8ukAyQqCDcLkvR9oKICEupu198mjH0D2FO6ZNK6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcJW0M33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcJW0M33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18DCC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718980342;
	bh=ULi+jJN2P/co4fkGbTb35He+5k2826hn68VcYiIHbSA=;
	h=To:Subject:From:Date:From;
	b=RcJW0M33Wd3CzWNYB8WIUAvhf2o+kaLAZwXdZGlBTlwcqyKHkFUNvxaweqvQk/CnQ
	 Wjyoe0uX0JwbJ7pmfa88bel0uq/TzMRlJtuuYz0O7qkm0viQGu+Zy/knj5C7PyM0BY
	 eCq9nAazCxgLLp1sGVDpP6xrPtrpLOXwd8L1CjzI87Vw76n3g9uDYO1PKZAwOjcXYw
	 7ddqMhNnXCNMoDx8gw1N+1Op6KtI3BQ8LqWg9kKP69Q14b9nGUqh3SrSbm5+fr8rza
	 V7WcEsM0pBJVyKPLLCiLUbvi93r7bMApoORgL1bl2n8gbJgcJ1LF6lBC9lOv8eyUUm
	 ETJJsemGzx+xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6802C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898034279.26211.5307184376159724216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d79c0e2bc6ed9ed215e45029571af7a1ebede3ceb2592b0884dc7cdf5c7c976
Date: Fri, 21 Jun 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718980342

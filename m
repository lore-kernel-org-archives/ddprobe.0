Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B05621859A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756497594; cv=none; b=K2PJaaDQV9vV1I0baKXYle/Ex0UixSDJSMn7dTsiSkJ1oV5o/2XGTG/QbT0gh9sBrhogPzNVjXcihw5kzvRixTeqHk+UI5q13JMm6aljUaJvQlhGPgFlWSXA8PDtG5wBWItR2mb2Cu9Omk4BN9TAY1ezwI3zdVVwLg0pLGOP+Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756497594; c=relaxed/simple;
	bh=i3L0py5VyArCe57f62Xuj2k2D5iKzjh3eyfiEoLUMSI=;
	h=To:Subject:From:Message-Id:Date; b=PnnO65a1ntSCX38rrgzgCjVrhUkkgdLIJCcyK+1bfkeL2LiQmYYdM7TctnQ3W8hviAdnjv154K5T97ncQztAMhNk3XWbk9LanfWkMdkz1sDFj1PX2KSDSUSC33sHwtPWk81GX1DDhLXfWTxfwNq2BwgLp8KJuCmjfAJrQPLJZ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ng3IHV6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ng3IHV6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49DDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756497593;
	bh=i3L0py5VyArCe57f62Xuj2k2D5iKzjh3eyfiEoLUMSI=;
	h=To:Subject:From:Date:From;
	b=ng3IHV6GiURotN+FpNPXvp7N5gCg2VWFzRAY2jj5cmQhGucaz4xdOrzt5w91q7CTU
	 F2X7RfBx9Z54kj+kXnvkrBn0gvxsCW+nCsdzY8sgQ/PhHtCNddT676naqi1YwYx+zr
	 daRbH2VtRs5lh4c8Zh9bpTx/cb4qYk8MVTlxisBa9kBmGKYv9lF4RhgL2afFEYP4+j
	 HTlFNix/FIYxzeUt+TDiOzyYmFkF570CHWlLzdjlFnK9OGCEhHHw+mLRnWkl1duwf3
	 Pv8dPuSdE7LG897rx0yFGY9MRsdSCjs6FujvXRhMbVa40WVhVrbiaSWVegVbt7yxHA
	 wcYJTYRucwPzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9278BCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649759359.31276.819955776089966553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a455d705fd742d62fb7ea09d3467866abebea803d1b5e2984c8ee2ef05bccc9a
Date: Fri, 29 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756497593

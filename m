Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBB13659FB
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791340834; cv=none; b=uuXy/guJy67YZASIC5riNNg7tQa0XMN2USb6w68A9rn3F1z5L/1EQI8ThAJN1Z/cxSSgwadjULfZZpmsIpBR2EzF7N05bK0TT7KkEzCeCQRcoR/yWeknLGb4TlBHrRN0tlxwblJqbPols5jaxWJQLxXJNJh+O1bnWjfhIf9P56w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791340834; c=relaxed/simple;
	bh=eAO9WQa+9l77IAUSGRwI/AV4Mp+yYEnZNvphmgc56Kw=;
	h=To:Subject:From:Message-Id:Date; b=O6tmdxwHXPZ4ke1FY30PRVJmz0vjU3otAO/H3JI91mMA2gB/SC9/H41W2ifRJ0PJsaG0+9PZpM9fhVbUvw4o5KmEeTDG0IWYribMkIriaZY0OULw1L9NUCOO1PEATWo+ojKwo5bFFE7mrNNaF/PykDLmbwG4/7g0vS0FSXGjP+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8r0JR2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8r0JR2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE007C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791340833;
	bh=eAO9WQa+9l77IAUSGRwI/AV4Mp+yYEnZNvphmgc56Kw=;
	h=To:Subject:From:Date:From;
	b=p8r0JR2lmtETIsHuFql/LIi5RNLxZ+0A0Sjiau2hyupfslzPqSqgYFuccJoviuYlr
	 ytqq6dUyWKEuGcftx34i4LUra80yZ16gU7IUbw8rSm3q51fKFGlRfuhclWYuBwvd95
	 GFkFvp5CFg/kaiHWScAMmbeCHcaFnOdl6PELQpRHlKOBdXZscirzDTr/4nmwWCVH2F
	 NIDxGFb5ummbTD1NqReDhrSkagIUXxhM7GPRPO4MwHN+7OCgVjHyYEYhzb2B8lBm3V
	 DYyz51mW9ZDkgDq4rQXafw3nq5VkPI4ut/BzKtWaprAjuQuXoIbSoY3j0S35tssl0B
	 2aE0Isemw7rCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B1CCA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134083372.13972.14928496667968568661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd18a38508383b5805566a61c70539ee63737150d847ca972bae531116f34533
Date: Wed, 07 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791340833

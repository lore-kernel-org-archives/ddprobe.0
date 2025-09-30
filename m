Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044CC1F4281
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759209594; cv=none; b=u247gafD2/wvXXuPBN26ppZZqtv07QpKvLgtkkWCl089HEbzBcPTXImVOAxGBTulZPNKo5JjT/WeFJWibFxt935ocFZayC+ioinkMipsbQUKiW7W0ggzBV/8b8fuHsVQ9AcNhTCjYfRmpCbJ7n4THFH+fojfJhlklNZ/RCqbf/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759209594; c=relaxed/simple;
	bh=1vIn///Kk3urw9rGmuXNxlVLmWVaYJXwL9s/XDF6PVA=;
	h=To:Subject:From:Message-Id:Date; b=mWn2/aePPO/vrhRirGX3rJnN1rn8HIdbTEXktlWNqGzb59u0LSK6Kqajj7ySPPWn5CSS3KLKfpZr8vmIEOjZsdPBOzjp4yOOPPy+Q5G/xjqZ3rn3+IQXQBH51kw6wyFeeWlqkbWgzmOggILPjEKzGCGLvca2hDplQoUOTFfOw8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRjYPZAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRjYPZAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E24FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759209593;
	bh=1vIn///Kk3urw9rGmuXNxlVLmWVaYJXwL9s/XDF6PVA=;
	h=To:Subject:From:Date:From;
	b=HRjYPZAj+0CO0TXNCqBzzcinSEkBrSNNZX6Lg7DD9/Ax6/rY4kwXeVBtJwFdaIp7E
	 DjgyuZU4wqq8Fxyu9u/+/NnsG5rOq5nCo9wGJM3Ovo/rLxbwSz77TOi5FXeWrsX8oG
	 Xw3vjForKZAQfwo+89kyxFSl+H1ua8WVZKHYpPXrj7fCSlWQ6FWbPYC9U6r2ldrT6S
	 skxT7Wm98v+zSB/eLY+GhvGukXXknwAdB1fh+s/4w2cIRgXheaANpGJU+DiezDAexb
	 elNz3Uk0P4V5PJR9aZJxxNvWi0rsuBbAPEwizWPeHN6qfBC+qPzSqpBVheSjWtt+ia
	 t46pqKBwYgNaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E1CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920959358.24482.15146389575684496571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0598668b3adc249c708da3ec0afed03bfb961fbb0df3ebb0f1c1bc3bd40ba0
Date: Tue, 30 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759209593

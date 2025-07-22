Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227691F4190
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753226994; cv=none; b=WuIrLqUzMAxx1CpnGqI6mx46HyhgLo3t/yAhMgB9lYOi6Iqq2gbxBBOkANw7DgUhnLfD/cxueEDm54yFke8UoGlMYn/WDp9wGWHRBga1p75tCVYk3GSIipTMKqjqGhjXwsw9Uo4+0hduQ+SFiAdXc9M9JKfdlhM8c59ZYHk7YJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753226994; c=relaxed/simple;
	bh=hnPYk0r7c1Z+KNoQXUwJC/rmTH2mGBOf4aNDuxuG6r8=;
	h=To:Subject:From:Message-Id:Date; b=OLZLxFOE7WDy38/vbuPjdnE+c4FiovHMj2JVltemK7vU8qWx/F8YItkD8sWsQ5fdTi95RIXr0Aikoi64QIxwfboOv7PDtNUQM/W99yxvO0wCYixw2z6tHIXDPJGUF97Tw45do/zDwysaGBaoDnTGOn4gWljYSGb53sb6PuicPks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAhONF6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAhONF6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B11C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753226993;
	bh=hnPYk0r7c1Z+KNoQXUwJC/rmTH2mGBOf4aNDuxuG6r8=;
	h=To:Subject:From:Date:From;
	b=cAhONF6tKjXbuWqoIxqangi0QbGkDWYhETKN4zbfMVJVe6ybd8hsTFPbkAo7EQ/cb
	 j277TQvNfb7u/PVqBEHShIVr5n3960g/5Ql3LWrFjz26J+LPxUsdpNwmXmP4uyubEk
	 6p7F7soHrjt5VxVtWFJ2a+e3Hy92kz/7Vvfh7jXbL8+aq+Kyazib7SG7R3s5KwPLBT
	 w646eSvgM4TGeaM0xY0GARB2vjkTeAy4DhfUJIJrYwdDP5hVltfo1E4v5JgvtlUL63
	 lULBEZrrdFcAqh4xRNgx9Km5zGk6WzwJW7ZaJG5V5pq/nh1W9XD1fg9vwZUIl3DbAm
	 R9tHLQKU0qFBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F9C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322699358.8567.10836604371704893891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0edadc2731437c1643eb4d6e65e709cd487d8f36a8fbb6b0c36a77b7fefe591
Date: Tue, 22 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753226993

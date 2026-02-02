Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390F63BB57
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770011034; cv=none; b=BcW8H70/tHwJ0nFfG4GpUmDoiYikG66UeYBtZmbLtiBIOElyHgG6R30ym50SVElZOsw+1V0ToqPhZdwzCk00wS0dm5kNh0DFRPDIv+6JRIpON9tBPxymlsYK/MWHKioIw8COZfFr3tweACPPQlqRz7v1qyRnJ3EZDcnE5k0mc3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770011034; c=relaxed/simple;
	bh=v6WDq3/Ch7jFNP11uAhDpyA0CXvYRjTbfjE94e4gCSo=;
	h=To:Subject:From:Message-Id:Date; b=S+YxlOqPXiyyyADoDyFzR4XPt/SR5FikhBfeKLqLjba99Vm5iHYb87v3L2p9QLux/SoOJSOQCNhJFmC9DiquJ9YipGKnmJqPWjZQUFUzBF4/UCoHJ3T704i9zKoOocItcK9jOFoNyZNg0vOJwLdXYLnxP3URnd1rKRe4Fnh+GsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgcB8lv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgcB8lv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3A3C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770011033;
	bh=v6WDq3/Ch7jFNP11uAhDpyA0CXvYRjTbfjE94e4gCSo=;
	h=To:Subject:From:Date:From;
	b=pgcB8lv/AdEHXb4Kd6H+5iJZHZr7HS773MNamMFXDQLRmQqglKGd+2UWz2YqWFYbA
	 xxAoFJgb/jtYnCQZHxL0hgyQk1gRMc36k/KNE1AuBsgTdxIsZMe8Fx2HFYr19BnIVh
	 pJhLDUxZoanmYS6HSZs5mvDR1UXoKw7fz4ItjHtbGrtF0QkvrWgRLyLxqqCFTigAgg
	 CVDEv6Oqj8R9F1Pzr0bVXlBFMZXjVyVc6Aa/ctoFodE1U8ytPg40p9E2WY1kFvKVpM
	 vnJlMP3JXaiImzHG8mAL80sBiQfo4GqNBxBV9A5gQnirQ1MMW4XDYARo7+AZnicqcg
	 imU+LGrgd2ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA4ED172CC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001103364.18386.2334887554589958889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105e211664f00f07c0676a57d6c2cb337cd194f115aaeea1afba124319ed12fa
Date: Mon, 02 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770011033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59E026E6FA
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770923693; cv=none; b=JWHbrDWwXEwHK73DXjPaR6V+MHbcUi8D8zaiPyXydEIe8CQ40x0SK1paMRgdj3WamAfwLs8qxJbmojpoNyfFd2JD6y7mrEDTyvIA8qCy3Yy8UkSTMoslDa+G7NBILzh2LhNw7rZKK703m8LfDUKmk57j1LpiMvIpOJw/K3PcPLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770923693; c=relaxed/simple;
	bh=78BmdolHEEWXY9LsmKu29JXG6RPDY2fj1M7rC2ld25M=;
	h=To:Subject:From:Message-Id:Date; b=JVn92x/m8xfIxrWxa0+4NgRzg7B9TBSkTdF12cDejhhb7YIVeXNjyx+uJnSBJPY9kM3coeeol28TEA9EdtPugvYSXPn/DX7+ZabZOQ0auYcocHakLhCxag0e9ebpntihcrr8lR4bGQRoa1X7ztvSXvom1kL6JZCZXxXNJ9mR6X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoGZC0li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoGZC0li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA464C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770923693;
	bh=78BmdolHEEWXY9LsmKu29JXG6RPDY2fj1M7rC2ld25M=;
	h=To:Subject:From:Date:From;
	b=FoGZC0liBjF9KNgNYhyhZs/mTvpPh9QZ+Bj56qjtEufIyFhjadrDjr0rCXcx2BSQk
	 Nzn5SQvOLrGj+TZ0txwAksvMLbMrEb0MDGJwUBvjxA6ZAgBR+qnDdedS72eVVKbOGI
	 raqsvb6wDu2+NDyNlFndDQIpPSpFH6mMtgmqYUdimc5eYincYx2+K+udPWtQY5TN2r
	 hCMpuHYBe08YmWyG2of1O10ro8RWeaUJ67Af5Yo5ICQLlltS8dIGObcK26JATiQoaU
	 ePXqW6V0cg7cLxuNJSfohlcEZIG/r743pJIW9JdEy5hvDZiqylv7d9VbtS5FBWHWNM
	 lEAaRu4J7YJpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D4EEA84B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092369360.9067.8102609787321976689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e492c6ad05c5e5b95ae4de6bd8ad9928731bab69a6902fcdc1bb183f40510077
Date: Thu, 12 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770923693

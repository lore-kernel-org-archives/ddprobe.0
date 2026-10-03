Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAA4368D4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791000034; cv=none; b=Gzla1kT1yoIwIChJdSzm6b6ktBn7KMSI8y58lRRmFwsVAYj1hcg8Gy6dbg+yjeWG0hZutz0uwZmLj5NStPcbKfEtnbKnoEQJveewitvQSqa8GsF4/bQ05PFFo7OymZ+c4SmKWmqXGYIUFfWIjO9Qe7NQ+crEoJQm4o0Xt3u91tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791000034; c=relaxed/simple;
	bh=wu8I060Pm06DKMVga17/U6TpalsFfMqAMEMpRTCLiNY=;
	h=To:Subject:From:Message-Id:Date; b=LFXHxHr6mLYAOBSpsQsn94y7qv8/IykEeKXh5kOUpmg4hlYp9l7VVBkLioswVk5mxcmtEjkxmal2dn3iHnrvETV+msKkISHn5a9tfJUuSEZ9Msw6zBm27YWuzVlbNuHjw90Twb2RL1dCpWRZyFu0sfQ+iYvXYkJVYihxtQlR8H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSEC+F24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSEC+F24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAA0C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791000033;
	bh=wu8I060Pm06DKMVga17/U6TpalsFfMqAMEMpRTCLiNY=;
	h=To:Subject:From:Date:From;
	b=nSEC+F24nVP05xyLC1KZX8z3sAXlC04Z1o49ZWYH50zfAhY14kbUGg260K0jNet3r
	 v+9T2XRVBaot9mTeKqSSug5xFc9k8HGDrYly/ghXCrvoF8tkdjjFmpuyeqvtMIdoTB
	 2C5h6iNlLjh4t4aC/IYrcwwlSBNYapPRJIKmYHIZ9LAM1c8D+j3lVD+TIr1OtvFaZ3
	 cuR2XH0O62ddrOe/SO0K7cnoUZBKZ4WXlqp1yhbeAdsixvY/6c2ZTT2QthzCnjz1n5
	 sgIX3D9rr8BiiKw8bazybyyfGo7QA31KVcQ8xnDpXKXOMkpNJLgCSUJlxNOfpsQeqM
	 VMKBik5cxBFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB223CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100003369.5032.11873990450572350582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9576d521ab3b57c42f57bc48f56c25f2dcee923cfaa1ed7ff272c1003ca63d27
Date: Sat, 03 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791000033

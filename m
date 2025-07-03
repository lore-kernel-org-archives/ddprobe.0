Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D90129993B
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751527194; cv=none; b=smDJnrhYvC6n9KdkRzAiqVqviEVUUPXhy/dgp+uDrf7MGHKHGghxJN5GKWpLrDsYfGRdgWV8VzpLTpJqDa66YgU3c1cBGnAZV2YGwtaLZ2rtA4Raq8zbwFv/iRlU9y2RA780JX/43SAxYnFpcJ/y3ZUni+ugMBjEdvZI/WpZHEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751527194; c=relaxed/simple;
	bh=gqmdTXRCqFd4MVHwRk70RvFpcwR62kshq67I5WSu+UQ=;
	h=To:Subject:From:Message-Id:Date; b=RuHAZrEXk+i7C2zRliZvwtqzNOwO3g3iqVy0sjtmHj5HbVSQ4Arm/gsBfBi9gtiDjYcn8ZsV82RmkK70nLpL9c6VKQXpq2JOw9KbG3qmqT3WLnHqcWPwduJRgkn1XFlPlBW8hEC86YX4wklnnjW3dTQqh0UQoGgk9F6ZE7Nd04A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwDKqz3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwDKqz3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230FC4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751527193;
	bh=gqmdTXRCqFd4MVHwRk70RvFpcwR62kshq67I5WSu+UQ=;
	h=To:Subject:From:Date:From;
	b=kwDKqz3pmd4zvUuCj7xmPlPP3DGkQwvKYsXwTzJHrFfxPwgc0zBKQs2nM5WWgL9Cy
	 EuI742ogZbwEGTbSGrEs3nr8kE7bgkJQCGGry36i8Zhg91/HqAtXNP61A6X8EGyGKZ
	 o8i1bY3FjPmkqAmVTIyQ0RDs7+QEmKQwE+FawVnBc4FENri3qjQNPEHsMZETuzycQc
	 cmnZG8qp8Ogzr228TKD5EoJqXTw29TxkzZdqOnOsljj9e+6DQyEU5ePGc4saxOruJk
	 1S6xUy/f1k8iUOjHzGrCt8kEfvXDwPNPvQqt1AajZBPpN9lhPJr0em2JZcIhh2aSwG
	 EjJ1ASwZJPq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27BC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152719357.10570.2148568866758173751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f272ebc247454ba13fdfb92e682199678474244b0e94c6500e652704e238075b
Date: Thu, 03 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751527193

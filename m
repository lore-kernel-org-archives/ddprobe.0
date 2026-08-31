Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B6F393DDC
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788187834; cv=none; b=QVVrbxEcslW1V6cezOc+Vhvxc60cLg1xCTZiuekaAdlU6baRUoptiLPD34r4KwP2es3OGB3dj8Y+PHgHokrDK8N5zTpjdPWDpHGZBqgWTgWcjgpO3hMs+5aibweLqRkrd94YrQ9knrRz57KHakgkyHK4w2IqVt0e4+KMAtyHMXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788187834; c=relaxed/simple;
	bh=RaHqdNk5w2qEJCjrex8bw2SVt9rimd6PNfO1nkWwJT0=;
	h=To:Subject:From:Message-Id:Date; b=KHlUSqJa701DQQntqPVI5K39/bbR6jNAYSzX5L7Ldguy1QVHMOk9Ek5oQlFHpNabpxDQFZ4WEKQId96UaMu4ww/16xDkd+F5W+cS+JDVDkkBnb3cUltTbsURt+x5pulPbFcFONWYh1XhXqr+xPBqzrb2J2K1adkNKkLeG8qxpyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifIabz1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifIabz1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0933C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788187833;
	bh=RaHqdNk5w2qEJCjrex8bw2SVt9rimd6PNfO1nkWwJT0=;
	h=To:Subject:From:Date:From;
	b=ifIabz1Vy9sYdFMLPO09KyKZ2fUatpWGxswH3FoUCzhBtLVCj76rLZo99Ljd55HLL
	 Y1fOJy94XCH7slROOnGTWHt6xhzv6XlKAkzcqsnTru27OOHEBHnryWAATPmTZqLCek
	 9O4OSFnUJkiWJVXO1EVITTILxZ+k7aV/n0bZnHpvgkyhl66QaD1BJo+Mv6eJZUZUMm
	 gk8GNFRhlDXX0cr9lvpR/mMJW23i7hhKXA/w5kaeGO8IA2XXP8pZGsqlBZ+JbyvwPJ
	 t5Ha6jglTw4W0QQ35QgIMHRfG6/bHJ3Y0FrUZ+Qu8hZvmwCYu6UJwNKBBwrB8Ofunu
	 lcjf3ago08Dhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC182C624A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818783369.13867.10570353774168476865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7e349ab8daf5dfdeeda87c501a6faeeb4bd5a48e13288e47b62eb9f78d9380
Date: Mon, 31 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788187833

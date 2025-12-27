Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319841DFF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766798034; cv=none; b=JkhWyKCGJx+e5KUwkmPySHx6FvFtBnUyB363reziok7eBmVrDYDHii2dqa4IjH1oLFhhn9QrGgVh3FfdJM4LBoLv/BBb0bVeULZ/1tTgslE614o/3rj8t9fv89BgqBT6hDoOlq32u++WdrKtfv6sSOhlPwvHNvpnQvUHJr3kBj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766798034; c=relaxed/simple;
	bh=3id7vdwHxeGOTCWCpCvdVZ7eVqK5aGBPZI/ji3mqr8U=;
	h=To:Subject:From:Message-Id:Date; b=ktcT/GsbMQpPZ+hVnharQkgJ6WmDluHLRJ0l9y4ROMwHwsqERsqPnKx5LtfEWmjlhik+CT+xM68h9QcLzgiB2irQZYz1xNF2I1E3cip6Mf4wJegMzlesBKDNQ4guvw0zRD3+KHPrcNyXvlpeJ6qrsO0gnOlqS22TiUrICEFd1W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDGOlanU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDGOlanU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766798033;
	bh=3id7vdwHxeGOTCWCpCvdVZ7eVqK5aGBPZI/ji3mqr8U=;
	h=To:Subject:From:Date:From;
	b=DDGOlanUqQWdZZ3iQ3k2cQK2TUWkP4g690ll6JKEvnvXgk2gAxf5/C6u8xiae5VAQ
	 RjidNkqzIzMG7bFVwp0F8YAMMdAOQek3mnesf1aZO+PiF2TRBz4Q3c7gZvlmtCVbLL
	 iwkm7LZIIgWebxycI7pGQ3WttuKWMAIiH9i4+dKrHZ5+qmFnL+pTasFrDxhMABY7hc
	 NW9VqXfEgxjenitW8py2BbMEo1KqmPS6OwfABJHTp32yxMJEtHJ5EU3Ekl2MCWe2tG
	 JE7+C1cF5YdEk0Dst4GVKXE6pEAHFg2yL2KfHySOuPgmHwa9pQNIug2qLUoNA3YYZ7
	 m+SrVeT/tksQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97440E8FDB1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679803358.26026.4953432565851580734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989ef7ca312557da1294ce43f54f65207117b7f191dbd3fb14b9e0b3458c8d9a
Date: Sat, 27 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766798033

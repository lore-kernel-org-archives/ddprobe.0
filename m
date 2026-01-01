Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109B31F4613
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767286434; cv=none; b=f2zcr8TOtfahM9ChbS2nxHxF9LeIwKdvMIiE5781otlEtG8Gzhzy+W40t/0zeumTHJWRFHnkneUlIq2SKkvozFno60DLZdyABdyn6zBkYJLgtRVfi4aKh+5/3e4KGEFWnTt7+0e9d6Q9cRoyFcAyUKdDZPpjC3NqAxTgsoXu0a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767286434; c=relaxed/simple;
	bh=lgehkikTReNwLzpcMf+cspT6eHUJEkRCJC5USqFdzGc=;
	h=To:Subject:From:Message-Id:Date; b=BA6SZ2cq9RVvUTykqyDN6JaLpU1kXUtLTg8pErzrkagWK4kS6ufNCbcc9TVd1VrFjh1qgwLV5Wc0sPQHqxBJ5hq/AtQGDPyJKyvtCRrSmOYvWm7mXbkRgnrxntAta0mBk2ccEpqyww6frddINNtcDZMwlI2SCYS0zljZd5ioF/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EskVmrWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EskVmrWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F068C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767286433;
	bh=lgehkikTReNwLzpcMf+cspT6eHUJEkRCJC5USqFdzGc=;
	h=To:Subject:From:Date:From;
	b=EskVmrWYgDkSsogANAm9yIj8JQ0kgKf4cdKow1qXuavVuZ8YaeBo96K+HzAyd0jMZ
	 tVoh8b1eI1vQecuJ3KbPZyeezLcXvVfJRzyUAaCLoEO9Hl1Y6bn1n3xaWSA3jzKwer
	 gK8IzvacYoe9kDMkFdthPifejJkOYKHdCxULgf+ojfzN9INQx30VilkqNkK3b4kqpt
	 /ZQynL/tVIfHuBz/Qr/weBIUyDYzL8fxtCFHd1ApoqfG1y3M+VpQAz2e5LnlYUaUQc
	 MzqSg4ffqyqiF+2Q9wfrD4uY35wdrYXmX6KoQ8vi7wzQPWfdxFi3aFiiK6rhwPyDP7
	 quVxX+7JHFkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBAEED618
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728643357.22698.9345951519409842737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168b6170ba494777ec03a9592c9add400572a2aedb551fd0543dcf0ebc675d96
Date: Thu, 01 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767286433

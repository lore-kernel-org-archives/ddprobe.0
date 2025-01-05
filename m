Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAFA14B97E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736104554; cv=none; b=DqBCYAcatu2I02Y05iiID3Pv7gTkexoM5rEocfuaH0pjbBf9xKW6WvWBX5UzT2oMgn2Zb2jQGI3DjvPZyGqFfTG8dquvSfSYISZzbDOpYmReuDLu/V4lVT4Y8DaGzv/FcehqDhHd2jfGuQGWIo1kUdjCyc9XTTauTe+ei17GKCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736104554; c=relaxed/simple;
	bh=5wknZiZ3TSRlSxQTjE0GJrE0KVW4HDIixHY6e5AJ0Lg=;
	h=To:Subject:From:Message-Id:Date; b=q6u/6b/vcvbAvmUMuHjlWEw+uhz27s4K24PxdGhLpCwJQMNrswKblTezetbvnRWTFb6ywzISKUJntzTjhPKn8WwpBBdZgnwycR0YgIiRCRyBamsCplvasvFx7jz5OHQwybeGGmoj4jQzbl2itWoVXXg6T2IAVsBmK2OsglMY+ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbqUGiAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbqUGiAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19D6C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736104553;
	bh=5wknZiZ3TSRlSxQTjE0GJrE0KVW4HDIixHY6e5AJ0Lg=;
	h=To:Subject:From:Date:From;
	b=WbqUGiAgjbKFjolgWj8jwtf9tMT83ZwmGkvNsX3yu1GAdrfKv+WsSyrVzfCRhiPti
	 gKL1iCcmIwItcZQWVb6FXrmCRb8mLCtX6SHPt7NELg53mq0nVgk0MnD+Qk+krr/gOS
	 SpDm71nd7NyNpvOTbY2K38MejlMJor5f0Cwft87Uev9BCeXMbCm/0LVq9YyKU1ICE4
	 7ayR1EsKdlNqzfUS4eifBEQUpzKuUP69TsOo8I6w9y7AS2zexBVbUu5ZSZdYYOvY9B
	 pJX7YPagnbOw1VsmJcA1tuA09kBliDx5lqJsuzqdTGgWiE6ZAanH9jCnibZwXurrYK
	 0/YhMG0mvFcig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B223E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610455359.9963.17909012923611975382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8073b944488f7f2aec7a5d4e78e1f562d70131fb7d0ec7dbed0029899ef3eb88
Date: Sun, 05 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736104553

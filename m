Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541C23FFD
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786838434; cv=none; b=swSWu0BFUScrEvJdQ4+7P87IL8V8ggCYgdeurQOq71Weez14SaoGBggRQ+Spcm6rt/XZZWcTefffIV6FaCb5uPe/6WbZSJAibpo7wfsEEFVwA+VHNLVjUiFLyZ1HZ307VYXzBaDyRuRqDWqw7RitTPB6sWc2PUbtURL5oUhqQi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786838434; c=relaxed/simple;
	bh=Kmpw9L99atYyBwz/h8Kf04pfmQS7Z6gSGvtwInZS0Gc=;
	h=To:Subject:From:Message-Id:Date; b=dFaIuHHaWaelc1E2jVl0GqbJq6Dz3YuiM+mLkepnlIyI0lEcNVpl93u2JUUZoOWxwVUZymquxZJEajc6QW06NMMEbQYZSJRsnRgTg0kkpW9XQautb2eewO0rY0W8VzEIWtbr2D5c2C/Cd0ZL5T/i7XQOgPEsR0lFr/U0q0FKe8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stW+IVgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stW+IVgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9545C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786838433;
	bh=Kmpw9L99atYyBwz/h8Kf04pfmQS7Z6gSGvtwInZS0Gc=;
	h=To:Subject:From:Date:From;
	b=stW+IVggLnUSCNDYCkdv17e5W74yNqp/vjPYOEeOHHbAbODFfRAo2xuTlEYWw8Wku
	 7U3SMmxHCnduBbLM+V7Lk7FLD5DEYDAwWW64gjYDqZTdmea+Rd3dN9XzB1JEO0uENQ
	 iZJzO3ZtBGUYXLNs+UXo+PRtRdbVFy5v74sEcJdEXFJOR0DhZf15lp1vyEAyeCLsdy
	 0Yx8Gj4+MgrrVd8g7jhG9/4qDqfoYFvisPmDheP1S/l4PxHuI4bvFt/yizAAzjrZ8+
	 UMP4gZfqBqiDH7KSlrWCrUraD2VnDUZ6jzxshd5O8juIExTVRgoIzRg9zw+p1xfpyL
	 WYWTI7zi34rVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B316EC5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683843369.2356.7450609257577506875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c81f81f9c38230177e03a7f1eb00e1a0eb139ae801354de420bc0a03c4885be
Date: Sun, 16 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786838433

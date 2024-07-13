Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEB71094E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720872623; cv=none; b=eRPSNxA4b01LHSBn5KByWk/niyOQRW80wtvWneQGU2KPS8HKYDY/tPN/PZhw4qxvjsYv85W4HmIuyffeR5fRQSJkX/PJNlNWe0IF2c2ZZ9HcxSkc/rupIt4SY9klfhvBx7pMbFtXmRTlgr5H7qUuaw1HoKKSOJyZvcDn8iKDncQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720872623; c=relaxed/simple;
	bh=neH5mHUDs8Bh2XiACYVdJwxmYBJCKOmEyI3UvxYxxkA=;
	h=To:Subject:From:Message-Id:Date; b=U74VboJKJTDBQxgSvxgQMlsR7zFJaNOJXByX49gYUbnHe62FYbZ14IgKLt9gVdTKKWq9r4ALg/ScPkGNR5UDVFdONhzqY7GEFv2BfYF1OQhVZ4L4DKkjZOn6JGu+UVs+acq5h40hLEm4iGTJspbbSLw7oksj5oe69RwRRlNxqy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IF5SFeMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IF5SFeMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2449C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720872622;
	bh=neH5mHUDs8Bh2XiACYVdJwxmYBJCKOmEyI3UvxYxxkA=;
	h=To:Subject:From:Date:From;
	b=IF5SFeMA90bJXZHQaL7RI8MdakwBVcSpJ8Tz2PumCp0U03d8t4r6mzoaixGjptNpd
	 P36Oy7QTpyJhxIGXryBSMQ4pmICZuLHBSYsWXJGZyJQGEsHbmudLqr0EQuHqz7sH9t
	 HPIZ1GEpb257sAdAm68mYhnXNlIauYSbQtjeyr0315ZPDEynoobaqKHMUjbdfyA+QC
	 2+pjPG72R7dZZu3KH2kuv36hecCZhqOh276/fAKEaYEXZ7K21LrO3wtRi3GcHgc7sC
	 o9lXZRiVu6vhwUwVjD00HSnqfgg33nhDPvrKJVdt1zn2PgWxXGZnMxTIBWkoCnZrdT
	 RzSzxaPMRbsZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE6CC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087262276.14434.8748328510630081702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf5c5ec65986328a0fce79c2ab059025363df414ca3005009adbc9628cdd9c3
Date: Sat, 13 Jul 2024 12:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720872622

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72831F5430
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749992994; cv=none; b=Zn6VscKnky3RNjZP44E3cfkwq01f5B6xV9VZmnltpAJ8l/3joHUsmat9pcXk0uyr2D//31b1MW1bSlJMh+41qIntuu6NZP67SZ+1OiWZ6teWYTCVM4pofXb3np5FdgZSxKKjuHi6eM7aqLpoQymGDe2AS3x6JYkRgMSxbACoV+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749992994; c=relaxed/simple;
	bh=pheT/LA91Y5wZpztcKYfbdYe1DMbycHrjiUh61cBU/I=;
	h=To:Subject:From:Message-Id:Date; b=RZubjdlzL34JG77Q+x5k04oCuEK+3rIKzczgJ0q4kRrnR2PJ39VtduxpDNvf6Ju7ztivljqAwVvwzJJz4fUAuxwxO/sEmzIZfF500XP18O0QIcsQ5xeHB3ET1c3ktcUmotj1jLzKMgzD6WpzM+EXOczfjdGPVmKj/719d+KmFmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ftdwslc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ftdwslc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E2BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749992993;
	bh=pheT/LA91Y5wZpztcKYfbdYe1DMbycHrjiUh61cBU/I=;
	h=To:Subject:From:Date:From;
	b=Ftdwslc7VsLxEr4gD8PlZgXeUjV0j3qqAfQWWtZRlfYa/jJC5m0I0701i5R0kRJG/
	 geepiUOi2qnEINrAuVCcrARncm6W2uMEX7ylNNmcGst1EYsvdREO/VpQbwBKqweqHv
	 Gp4QhEgNKkuH41R04TdlgtVBLld+bFgu4hWPWefWzRWK3OA84qCOmOHYGWu2lIC6jf
	 wWgmAkNlC6xIiG/7GfBRRUWGoAzwRRAq/jVQ/GcIkZ6NZ5c3HCXAPL5q05lmZ/4J/3
	 BNfQqSJpOy2NyUHbpt2tBtclBc+1V7YUHMxzimRkC+rb1ME+mhqx0uFZZxwxB0ayJg
	 TE+BZ20c/4TUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44FAC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999299370.22548.9661414908443377386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e195b318ce69ff332fcd0aafa2f4d67fe11e4553c30378bed32ef369cd9fa0
Date: Sun, 15 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749992993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6E03BD223
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773146094; cv=none; b=YEBIP2PR7JLJrxH7z1vmu4rPlh4OLtkKQhL0RWqIDW9aTZ033RTlidisHlu1TfjY/c3SayFtux2HTl5T4dgXoonleXRKIpTfYYoohPpOiD40/ZizZL3ri4RrPe4TFMvk9HkXMYYfW5t3BAgy+9J8+bxmogEGXV7gy1USOu9gjl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773146094; c=relaxed/simple;
	bh=Zf0W/cWv3ZeLRjB3pa59tgpnvNN6vMUoXTO2MMXfySc=;
	h=To:Subject:From:Message-Id:Date; b=izGHQaMWkDpqliknGlb2aWY/epxhwwv6onKjoneb/gUZnpNeRqAObqjx5vJ3hqQ24OjPOAsaUPUqaYUaDn5MjcQqXlwjYJMqdHcP3p1gT9jx0WbgMT6B+Hc1EELgC2zxk1vk05HC7vnyUJ1RMiY672dToZjWJtunxZeu1Ndu9tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCh+S+X0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCh+S+X0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C97C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773146093;
	bh=Zf0W/cWv3ZeLRjB3pa59tgpnvNN6vMUoXTO2MMXfySc=;
	h=To:Subject:From:Date:From;
	b=aCh+S+X0MRe3/pQJ72fA/mqjMSMKl+I3egvvUdoLaul+qxdwB2DJ097imjHMCtFc7
	 oGKamc3Q8YVvZDD0wpQ1PD/oDoZAptHgxN9SPtH7kF5TBbEvSn7Z6q7liXbS0SZHhP
	 ufGcSJPRcbJZTknip9gBO3PPBlDfx3C4mrYd0mlsUTgj1uOZrI5BDjWPMQz4r6i7C8
	 J542cqUBKE92ywZdcIBbl2mIvI1j4T8NVAXJ8KsaZpxFD4/w4NOnY/NX7czbrEyRtr
	 vqGkmlG9tMblhP6YyiPl9xGcBNPk0QkG3vEW7jv10Ml38VsuGJF1kqiY3CJyKbvupq
	 HsGQSzmuxeAlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92661FD2D63
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314609357.16403.3038338497235379756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49003b010a3e7462893c1d8788b93dcf1926dc5bf08ad7aa4e444984a3c83eee
Date: Tue, 10 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773146093

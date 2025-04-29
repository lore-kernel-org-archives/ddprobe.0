Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB5E2798FB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745915994; cv=none; b=lPhdNkCzWuTc1+C9Ai7x6LFvDFm3U6JERrvo3f3lI/vbhPp3P8XSMLeBk17QSpiQkqHAX1fyXyXGV9OBr0yBcesXYEdbJGu5LfAFxlBY8mRd46fi5tvYplBgHpVt7mYktE/t9FNlKQ8TSBvqKqas+Npmx6SfMpLk1gUjvA8hNWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745915994; c=relaxed/simple;
	bh=SIh3rPGNYE8MulcRv5kvAMau6MAdUuDYq6y1tG6Bxk0=;
	h=To:Subject:From:Message-Id:Date; b=PUWfarUavr01yM837yCOfcRZHM3Yto2+HS96rluhcy3IyLwZVNGHQ2mN1ebNG96DNryMdydl3iqDypuc0Fr0DJ3Ta2vmzydusMCeYTgyCqsXWx6gzfKS5fALS4AFLq4SGKiJbRefHzQPgjf1keJAk4eyCvC0K5mQnESUdH1jOIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7Pf5jdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7Pf5jdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A235CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745915993;
	bh=SIh3rPGNYE8MulcRv5kvAMau6MAdUuDYq6y1tG6Bxk0=;
	h=To:Subject:From:Date:From;
	b=G7Pf5jdZrJhhQMDp60mbRopa1FMdTO3OyIi9wo3FIVVWSdEkHrZqELvNItfnNHA8o
	 HjDks7Nmfpxq9y0b37zo97oFWBWGU4ahcjAfz5h7NFhY2IRwsZ6rjpj1kuM93+qqCV
	 Csdc57H0BNFONQmJKmHfI7ZYH7P3vAh28Hfi8mDYvPGG3EGRj+xTVptPW8jAN8mZOb
	 m7GOGrwyVsvKp6RoS9/xbnpwxQ8OUmnkIWyL7/DOhvv1M5VJ9ODT0fi0zF2RI+SOaf
	 DSzhO9+dJGOXf+1xOc++lEZZmXOo4FW71SRYxY4byBjtqrACc8XyN4ptYEegDcfBi/
	 lZ/By8CgK06Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF02C3ABAA
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591599358.16542.10190460194890252452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8428e18fb0b1c3bd6928b015c3101bcb6cf12200eae874338641847d210962ec
Date: Tue, 29 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745915993

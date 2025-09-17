Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F0F2FF666
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758137394; cv=none; b=tLo7lFy0nFblBc9aiBk6r0UzD4/7unhGJyfkb2TxRL8T4EbENa9imExLBAseUjgoj1OTE2F93QWawP0SC76/Tf0s82WMlKq6pHrTs50bXKgv3z5Qa9ZzKKnScXHigDxuHBx4LhOxkiKu2jcgQhFBEEKCW6TcBGsjykfLaBnUfSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758137394; c=relaxed/simple;
	bh=SEIaSiYiTh2UGmmM1Czx86S38X57lifeKfNwBa1o384=;
	h=To:Subject:From:Message-Id:Date; b=h74Kg7ahR2Gyg4ARlExF1CjfZIA7ZPmvdf8BLCfWKB+PrT6QZ1NHoxwYRwfbvKcP7IYgSwhAudtknx30Mlk8XOwz6tIdpgYL7BAiD+DYFoDZBapiU4+zpCJlJrC5ETJkDeMPnsT4zRGi3Sjb8yshz13ZNpjVdf+L8JpLagkgOuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJaT5ELC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJaT5ELC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E26FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758137393;
	bh=SEIaSiYiTh2UGmmM1Czx86S38X57lifeKfNwBa1o384=;
	h=To:Subject:From:Date:From;
	b=ZJaT5ELCQ4YbTYehr+xdLearL2fzAQUYFjvWhnQ6XHbYIegMsPJ+jRWc58fleTmQF
	 9yaC7fDNsgNRGmg2DbJZPw1+e6XAv1ZsKDsjNTHH7UM6c3VYT5XQgiThuGbbGVjU+R
	 2sHz45JBR0cMH2GxaN6mWaThm/02Hy8Y4D2lCdBpg5CkQ9RMicBps1twmfqGetC3xN
	 8mKjwUS3xhh0bm6X7poBLzriyRxw+vjrgYS0ds+5IIPMMvJw7hbnV0AYTuNZl+W1i5
	 z2KdOjgG5bt3XTCNk+ozvLjw4nt3ihtuP5e7T0+UXCbnq053JdjANkKiBujl0P3W9c
	 r1J0PoBlix/OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F604CAC59F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813739357.20392.7887925621915764666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d291b9610ce8417f80c3c50f3148ae9bd8e135e7ae2728e2ecfa64e6a4db9739
Date: Wed, 17 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758137393

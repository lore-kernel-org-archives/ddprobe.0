Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115262F25EB
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770247434; cv=none; b=afkQsColaiBwDkF9uAttNI7doXDgYu3jXChpoXEzHkUiICSshcCp3jNkwgnkkgJS6fbFoa87s19RPJh3tF5CLsKmzGk7a2hUWlTTqYsixKmCUztduFkkPHyUhZ1y70FYTeQsccBafflm3mxUM1RzpSI2wzOzM2ilOTOoAXOZt38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770247434; c=relaxed/simple;
	bh=pkHVR6AHMSzlbDG23STB1Fdq1vNCDaIusAnOWBbeums=;
	h=To:Subject:From:Message-Id:Date; b=TOOJc6cZIaIFi7orTHwAo7hMxi9cnSq1CZZcWGUhABJuKdHb//e+YVtrsAlIJHcaY5YH+FjBUYtozLna9Jdm942rzDNshCmtP1mANWW+ESG06YSBle769WpSpHx8BHEtqb68PFFijSeq+c3dP4fyIlJ1eHuyqxJAwkHGHZa4vRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZugjHGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZugjHGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36C0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770247433;
	bh=pkHVR6AHMSzlbDG23STB1Fdq1vNCDaIusAnOWBbeums=;
	h=To:Subject:From:Date:From;
	b=CZugjHGY+Pk4N/XkBvE2e4OzcypIoK1YlQT01hezzG23iOGiT2weomW+zyJYuUNoK
	 7kZ7vhzOWsBYYdiYSjbjvCvOuwzxksfPNgP8DZnCOB0ZI7jTVhmXspFOzqsXYdlwYS
	 aNy6qqr7FSgwBwOuF6sg/tK/CN9kR0KV5R6q8R2ObtAr0A1ixCqtlR9C97eiXidbBK
	 on/Z5AO7jrysKsWTjxCNwQYulktL46xrz2/NX9aWcbkXj7cj6cb8yOiPn0s9pw/cLx
	 Kdb0GYJMXSwEC/+UrhtY+qJfZj/PgNO5PTJYj/SlZmzf2p1nFmeLnEGGxGpKDV7a9l
	 3CxPKdFRYH9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A31EA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024743359.7972.1551324124649374190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00dc953e455d8625fd2ff5b9baed730c38d4184bd3ac78e1d681c144940c7329
Date: Wed, 04 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770247433

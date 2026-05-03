Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D9D40DFDB
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777771054; cv=none; b=MCGeqeaAKgtyMo+PQcipBQ4NFd2gczO5IwAkh0qoQPuTysHOOyMOG6qhmDzIqOS430SpgVxB6hYKZmWIK6wn1SS3LNj2kNCOjk38OZsYMcblJ+LvAcSUtfiU9+juTW18SAXVyn9BIJBcqaZcDvTHKag7vpIe7wOC3sEwSJ+syXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777771054; c=relaxed/simple;
	bh=tm0puQeASWAiJ9PMxGV/dHZfm/+tj46PBOQMP4R7R30=;
	h=To:Subject:From:Message-Id:Date; b=FTXR2ovvocHDUV/Ykap3ben+fG778sqIEDF1jmNm8W2FfI8crwKzkMTJykByC5O82UsWBe8ps6kmXJwDhpyzUYz5hKRygu4MZ3IM+LWEER5ra2UYYCbSCOEkuOAXP5sHUz8NSRgsi47Go/KR7+1bueF0yokVKib5Gpw45k+7zGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYFZLppm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYFZLppm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04CEC19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777771053;
	bh=tm0puQeASWAiJ9PMxGV/dHZfm/+tj46PBOQMP4R7R30=;
	h=To:Subject:From:Date:From;
	b=LYFZLppmfGhcNv4cVqVWn8kkV+/pc49E2UIX+OegNy3SEG1+YYAQYkkIw77skaTaI
	 gnIs9gdxOOWY+78YP5U2ZWorjFQhglZSsEY1jtBF3TLnI++/GdfagsPbQPjdW3wtMR
	 /+/7OwDQBvzZekpoHiu9tesejGhx1f923Gh+RnacWlO3/kUq1bK0YoAJLiCSaSI2tl
	 SeIMs3RxwFgog6e5fPMHERzKu012ZUwxJCLeVyiFM9fnlPdNh1hxnXcLQ+a63qVSvZ
	 TsgLJ6uBK5KcfNGLB7Pv6WA4CaRkT9Hyalxorkn3jYQmcs16dVmgiiRyq7zuzg0sU2
	 7mWobbtYdxvRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC9CD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777105369.3210.5463622760044367520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a661982561b43f9aca9c115104f537c312ea338715ac547d6f82a64feab216
Date: Sun, 03 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777771053

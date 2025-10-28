Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219F0257852
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761671394; cv=none; b=F76tQmCguWxd+ehkq3u3i52fdfBJdkDpqtdVFHPg20C2n8WTHsfeg00KLACHkoN7VIE63By9BgTQxhPkhwQl819LmBQRcNKqXxvU2cmPgq2kEGg/yW2L2rA93RgWiyUCQk1ObdZ8G2TlSEwU/Z+CSDOBCccVG5kQQtMrKP4NebM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761671394; c=relaxed/simple;
	bh=W6QBU4WRFBS0TPDYDHPc1cNzRVtbRhRJvjnR6YH8KX0=;
	h=To:Subject:From:Message-Id:Date; b=W3O9ay91GVqhfVBO986sDKWgTi56tEdqD51mc05UkN1ZW9DchquuT+qZITYRw4E58jyXKeThTbHeapS8UMUZk7lpxPpmfKMAUgDt/rhSQSnUDN/zzDvQs9yIyoaeQYGef0m03X+6WRqN93OK0xJD2QqIFqglk5+PLld8eR4/i14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPDZ2ZXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPDZ2ZXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E697C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761671393;
	bh=W6QBU4WRFBS0TPDYDHPc1cNzRVtbRhRJvjnR6YH8KX0=;
	h=To:Subject:From:Date:From;
	b=nPDZ2ZXt+gI6WqVWVqxuYMzmBSGxmfD9n1a47r6s9ZH0y+0cTkYb5Esf6H65kMhML
	 Xl/oGE00ZPQx9rP3Ix5jiCoIuz8i+GaYsm/Xtwmnfiz31DTXQfEtVp7IYFHb6v4uYK
	 Jjcko+jveYzRoNS4Rvl6teSHbjACmFJrZAepp5ZHQ6haGcXvwD1FJZtivE0Tzt0yQF
	 c/kjGJIP1FeQ3UaLvzkZZwx9/6lHMKDEc3Zil/5viQBipkjydy1UOgoEzcG6m85NxK
	 Yh5FzMIPFgddvJz3twQf2lvVVQkQzHPEiuKCgNqySz1knaa8io/tZzm1o+0of6Bkx7
	 32+gJQQEpB8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6AACCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167139357.14959.6197086575454312772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375920eb7583cd1b19dc73ed96b47493fa3231b6f15335119835db2b3724770a
Date: Tue, 28 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761671393

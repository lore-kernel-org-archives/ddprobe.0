Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCD7CA52
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777513054; cv=none; b=kV5mGVILiz5PLE32lLqRoNjRxMf3/EZbJn3fQ+1lNo8VYa5u8LQqnsQspDVfS4h9wPkbIXiWII/4LeAeReKXqXcy2JXX5XgQexBi7hLLZsb3pYoS4d3QRctMmVHJGJ85CleTK9OxyYNFswQLxISZ7Co+1kuJZOJtFalcXrUQIJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777513054; c=relaxed/simple;
	bh=/+SRAF1GODgnYNHe+u5v2K948cgsMw6kP95NGJCrw+M=;
	h=To:Subject:From:Message-Id:Date; b=TNAyT0fR8ltNtFgX30/v5T8iAPEB9Lr8ovAZQJoWD5mafadxBO9Jna33DDsgZ5NhOn9f3uFI3t5rJ/JkAImiTLdRet8pUHMkvv4o+flqEC6K8bqSAJum0ODdR2FCJPuSB16vja05bP+1DA/wUPNwCCK1aMBk4sFZN+GGGeSNRJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=km48OUjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="km48OUjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EC0C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777513053;
	bh=/+SRAF1GODgnYNHe+u5v2K948cgsMw6kP95NGJCrw+M=;
	h=To:Subject:From:Date:From;
	b=km48OUjt8awXfZZFayURxXNH+QxUmu++lzzc6GBo9/mG6fokwzlFY/RrAPSxiehii
	 FE3/K2xbReMIIte0GWkSiRjYl2gA80Whw9z817/Lbv4wDfCeCwB6AXYb4UHgOwzEEi
	 s8zI1lN8YT+LBicun4OAijnUjXJJ6lSzJvyZQxHRZyjOtN7fsJtI9yS+uDO9vC0xpC
	 amDF05Bnuz5pttd1nDf4yQ0Hq0cuW8ETxm8NHOdBmH9KsypZOgd4hE9Ik8wjrBQ7im
	 06x/0Jkk93hfFgedb6XrO8DOFJj9Wz7kDYCRxgCXUVEFD/sRr67fuyv7p7EnYvJZaa
	 2Jr2kMTbN46KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC84BFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751305368.32326.16207996473820636313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7592d22e3dee787af8a66813fcbd5a7f2214bcb0684ce3677610d50a871da166
Date: Thu, 30 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777513053

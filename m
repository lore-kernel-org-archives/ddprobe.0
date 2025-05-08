Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277381FBCA1
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746673794; cv=none; b=EziZGhJCydqKVJ4BVquvL4ww5s9OrU4rVP+ltwRtqkZPCWJZbfQQDeapY8ATlTY0AazHJKTB4zf8zhyuhNafV+4vkaCMDEpYoxxDgqsvtUlYvXTLpzMrDhN5uYmrjcK31BT6HfIogdHdi/gmom/E92ACqL9HXPC38bzHxumXAW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746673794; c=relaxed/simple;
	bh=/kxQQcy/vspjREwcbVrtkMwCr4IH0Im2kvDgNDai8Ds=;
	h=To:Subject:From:Message-Id:Date; b=m8iQTjdKhn5r75JoRcJN0aMiyw9zJn3v5VIUg3wMTM+/21e02u9hZnX6EBXnOGKaPg3TtvCFL7WYHgVaOgWEL828+Cc2lbRRgbO4tTcGbyo89a64IH1jGokgvR0uCItrpEx/D+qZGZLH3ds1dQ5ITySl0VqFLYFZ4Y7Bhh2iOK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slqITUsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slqITUsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF56C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746673793;
	bh=/kxQQcy/vspjREwcbVrtkMwCr4IH0Im2kvDgNDai8Ds=;
	h=To:Subject:From:Date:From;
	b=slqITUsUl0Cr8UwF79Izug5PLc4fMBaYGkBYxmhxcNfZDi3HYeOOetwdcLUsJ1AEu
	 cjPTQ/b4xbthW8NBz7W98B1EkirXqgMZvrbU7szVqWUXfGLnPEINcX0/9CP2+nCdeT
	 qs/LzzM6D6Aw08IxHa6tPM9BNrSbcRNpB/07wlqWsXZNYnPN555AZ3lcA4sIfX/z9N
	 c9hiVqMsW5Raas2KRAdXH7UF3LjM/0JwtlMTSgMZOxURbmU9xnge2+qkkJ7olpRIGJ
	 bw0KlCkj5vxfxfWU2mfRuLmLppEs/A7+sIfiFyV/6y0molxpB16pRSNlU+vtaA2KaK
	 JZUxD03V1Obqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E238C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667379357.17235.17471578420749563029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce7fe8656587adc2437d84af43aeab6c39e2d949e49555e8af76655351fda10
Date: Thu, 08 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746673793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CCC39FD9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748307594; cv=none; b=fsH+W8b6/3cno6f64GRtT0jDN9noBEtXKeZoh2lXayN5NPGIUHnDPvuktrtFcDj/t3/gOAhhj9MgoosMzdUtKvMPzyRLeFl3wwX2eLRiUUgP9oUapCmqLUJqY/5BkS6Sb6O+velpnU4kNBaffHBIHXkNmdUUya3lIY3dDSiLjdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748307594; c=relaxed/simple;
	bh=H09JXPUZkJ41n1KHfFPUXXwQzpSWolzhWQGwWRcXpps=;
	h=To:Subject:From:Message-Id:Date; b=Q1i5aEjiS8SakUwcHTwh9pZQhIDBQihnls1lBvvk4oiVm6WiCqWJVwQX1BkP1J4PFJzuElNVGVZUN71miwNxp5BJamNTRGZvTj4jwXCGhpanhLNavOUR1KIwdJIb9EYXRbYJEaz+/b12lGJ/hCWzqglsxwO9xXAR6FdqLfnul9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F425Y5du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F425Y5du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F4DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748307593;
	bh=H09JXPUZkJ41n1KHfFPUXXwQzpSWolzhWQGwWRcXpps=;
	h=To:Subject:From:Date:From;
	b=F425Y5du0EGZXip5rDvAFKN3/rr/jPXSYWxjWr49YGvRKs2QGBgLVNVN6Z1U1PRLm
	 +8Pw2/O3HTOyEXdOsvqxbZpdMg+4g/pVsZuEpR+cNTURzEF5CSmJabV1cvqN+JO+KC
	 KNWYOUBtuOunN2y+W5Gy0LQBPnCX6U+HSputEz2FtImVj51grIueXmqyD26HeZEzAO
	 HzY5QebXfYTJwDj+LGHId98FA5stnPjZZbEqdQXjWUcNQOvim7h9aZ/qNfhP2KfjHK
	 MsozBs9f698TKEaz6rXbAWsTSBHHXyplA7za0IMQ0+yZ9heTfme3yedRlbUvBEurok
	 KH80KAp3VObNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153CC5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830759358.16862.12590906184470804808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b71b9449ee54a47ea80acf43c749705aa422ac066a386f1ec0dce591732df4f
Date: Tue, 27 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748307593

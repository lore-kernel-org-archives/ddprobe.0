Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DBF6FC5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744677594; cv=none; b=R6fYvvHUDNv5iQ0+YSZ83YE1al+WyzaptRKUWYmKT8fwA9gMwct3NJKg98pvvPBrnsmid8Ug7DtjbEv7wbxrkj1e0GKQOqEbHWDDC5B9eG2ywd2G6ZSwaWU1en1JwqKvIpLOvp2ZvEEompqdgtXC//sC3zgKxAE8kMoJqALvw1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744677594; c=relaxed/simple;
	bh=gWwM7Q2grxuMHeZnE8/eoIzAkT0YZxjXhmOTqtMN5F0=;
	h=To:Subject:From:Message-Id:Date; b=AQ0dBB3xrpAOb8KBev7gzSnv7NssJKyftIYaH1uVeVfB0xVf84Nw6vkrwbmldoWnmhYqQXpWdA5O8W50YWzmwO+VmDrs3K69VQjWs7UtsqTp2goETxulN5UvhsmGemVM0Apc8gH6FtUOrKT6qUL3GCOwvIgEMCAyakCkkSpDSlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyzXRtrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyzXRtrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD2C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744677593;
	bh=gWwM7Q2grxuMHeZnE8/eoIzAkT0YZxjXhmOTqtMN5F0=;
	h=To:Subject:From:Date:From;
	b=iyzXRtrBUUTJPoxocO6T/DsCf1aHie6svtm9uphc9hcVUyFT2AoVim8teIF85J5t1
	 bn9RNHJsYPjOkHoBQNvwYpNBDor3fm50x5G1g9cCw/lCqyysEUA3lv467FWJJhOi0N
	 6hqgPB14lF8Pwmi4tjJl9KSe3FFbL98b36SUZ5txWtvRVh29zSTIG6pbk7Eqm+BnZB
	 P3bBPwU5mo0PROQTtGEfXVsVgtIccBd1fFrmF+ZBc7e9F5GX013S3wCSQzd5Y4BuEi
	 TYs+Y9HHd+o/3o6MI90tdYxhS00aUwKZD78wSIJWnTZTNPWz5TceSzQmCDBYbFQpDx
	 LSjgDao0pCw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B0DC369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467759358.22782.11150568292562185509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6fe6c2d4246c04afd597ca259d9ccb0f51df52d1a1f37568fd50de4e980bd7
Date: Tue, 15 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744677593

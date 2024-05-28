Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9D413E040
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716938663; cv=none; b=hPZNp76NZ9ETHWVVOVCruCkAZyWZdyRDYe5tqhl2WIpT3UJePbLP8NURB+G5RUSjMFO+5bpXKFaAt+IXBla1FpApTm42mRTevjMLWNVSpCXVVUnZzVY/eW+pePG9NLylNRWPlbERFLfWYLSNk6nzriSq72rBWdTkAp1FYbxPNYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716938663; c=relaxed/simple;
	bh=/jRMdQLzCZHtYRoRa51SUvmAg0Y6L8jWDt/1ySv3Hzc=;
	h=To:Subject:From:Message-Id:Date; b=ORudUXrHNogXmEslh7c+Dg5gaDQTPIDqHfsbF9IvNMB28KY7T1bfvfKgAoYw+0fZi5Zuahn4gYjz8Vb7hJHNgMoruTKdcD7SbFWcH5i8+MfVCT2qQe74+zn8wknx0NJQpY/bBfpeHgZmEIo4cnhNNwb4F1vlW3RojwG4zN4C6x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAm3U47j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAm3U47j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FA0C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716938662;
	bh=/jRMdQLzCZHtYRoRa51SUvmAg0Y6L8jWDt/1ySv3Hzc=;
	h=To:Subject:From:Date:From;
	b=RAm3U47j5puscIWTcQJyX//2yipBaNruzg1381pZ9+ghJXtDH6NAxIrT9mzJHtn5y
	 2uMb35BTmPgGBU2zirybtrydGKHSkHEqVSlIBjV9Lszg0H8GVROJkzT0cqTJwLl9sg
	 cZT8LQbje1OVgfJyBeiENsJQUGgbxr0Iay9+keNU6OME0JP2wqba14DpEnAOafC1aq
	 jcK7TNa3fsW19CV7rXa2rgUyD9RzX48UAjvcQdjI4i3jrec7buQda69WKkLnRaRW1u
	 P+iQ4Q9BqIjJqSobhvF20s7UXPQaT0VFstedluy5REkHshMoIPOz1qToJHj9MuIdSj
	 JZA6hfNTj75fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E21C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693866279.4312.10734208078265308979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0337d51cc789f805752a6a722cec2a5092c276ac328a0143abdb7d954ca42b93
Date: Tue, 28 May 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716938662

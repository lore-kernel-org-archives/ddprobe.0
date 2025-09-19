Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50D22253B0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758302393; cv=none; b=E3imon5p+zhYeP36b0PsPgWqZOCI5wBzS9Vbg+Tkc7tBdZ7ZRfola/5XcIDpZKqCRI3aFgzgRHLAb8ckcmstRGUoWBVP6Cf5McCkyUqXBat1vgeBCjueKjDbzThIeTJ2akTM2kfmmcQY8R/UEOW8pjaX6kPekn0mBkFWp7x2lx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758302393; c=relaxed/simple;
	bh=jPAsRVd5zbcejLY7LUuROa+4mmroQEqSlRaQ7ZgZKVM=;
	h=To:Subject:From:Message-Id:Date; b=e4emair+DQCWsbzxL9F3gPJykJTudGO3gZL0xVCIKO6IM6/TkNsvLFgYMRFhWiS8IISMJj/4HIcC6hmLVhTrc9/ihuvntBgbsCj7sUKWcZT30f0rVQJO4JYayC+/5pt6uae2ZFjQCV6sgkrsADo4KUEObD2eiwISAjBvllD5e6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rldINcEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rldINcEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FB6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758302393;
	bh=jPAsRVd5zbcejLY7LUuROa+4mmroQEqSlRaQ7ZgZKVM=;
	h=To:Subject:From:Date:From;
	b=rldINcEBUAoqhmkT/xXsbXJNIN/IMZetCnmqTon5+x2MaOUkK+58yrjGX1hjzQUui
	 bCzlE2ZYwfQgejad9C33pA2LwlDPpekX9s7uS7gtlYnYN+cJsqyZ6pvPkz8ZmQlEUZ
	 8iHfROYfPDBcEFpg9XDgEf3OIL9GiJzllvmMTDfG+24Ln8UGHSMxGGHWVfqrymi2NC
	 4B9n7h1macKuO+IUQFzz5WABKB54wj8KYEjsDMtgTHmJVDG0fTH3HdXn50+NVYk5tf
	 sdPaAGgqkHbZ2n2ZdJ5jR77rHsubjg/f90nkKKgzl8BLppz8HiOoqFl6Y97Zq9RGd9
	 ebpfcyfovehgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E2CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830239358.8085.9754277800373571151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0250262f683153fd8f7c77bdabb4a4fc2f774570c7f2c8b12db64360b0f7d93f
Date: Fri, 19 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758302393

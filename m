Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3202204F8B
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759050594; cv=none; b=DeQEUBORpKQT4AmoC6rxBFUOL5ZiT5bDp28FO8mJ/Ijh/B8kkEMTHftBWGICpsldQ4z7EFSZYVAchDAXzaaeJ06FfjV7wOd7uHPSCaoV6IQGms5dfQKaS0J7Q8nb4TedoG6B9Ds0exLbt065jp3WYx+O7li80iokL5DcNnEwEMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759050594; c=relaxed/simple;
	bh=XYi/PStYVGQr3uvp4mRlddOHh04VT8ehOqD6p62IKw0=;
	h=To:Subject:From:Message-Id:Date; b=PeERA6KNN4/+vc/6hOLDnVPvw1YpBgeNllua7c6CdQ5edkndldmiIXyCVjHZHz+9dUlnJKV8J3FgaTWYASjM0smkZPOs14d9iMUeerQ7uthI16RcmlJ3WXrlqe0ElwT7cSpY3m3OQTbFdSqWc4L+u93jiRwgUsr5GYXoWGPuInw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=to+2fa7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="to+2fa7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B61C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759050593;
	bh=XYi/PStYVGQr3uvp4mRlddOHh04VT8ehOqD6p62IKw0=;
	h=To:Subject:From:Date:From;
	b=to+2fa7LovljuVsDlvxr/K5N6fx4ZiDMXbayJXZJDmE1SKYRE5qj2NpUxr8ocXMWn
	 OLTKW7OmPuHbBrUeOSmVYrVbTuXtNxXPymrriLKC67ylg7Zzh9yan3KYeNIguVWvgS
	 xpOpLMJ+Ftg1nkrS+KHLyO9vDLqvFO7Tf04WTuexRNVlZdGcSJRjxtKCwSKC7lISi1
	 M2uSOHp6U30KZsmpNbfY4wtbcnxFl4Enw3NTDiWjBCtOw6x4qiNlycS2hWrMejf2Zj
	 Xw1XNjtC2xPhG7aIur0ghVSDoxOGhfzzZS+nIWJ1cKs2jm7SWq8BKEzfykAxR0YWRa
	 wmvYsL5/XVhkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998E9CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905059360.3992.5118252640789655944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4257cfc9661cd94f127997a50fb48faca710f45719da2781fe4cd9b92756d581
Date: Sun, 28 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759050593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0D946D573
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789417234; cv=none; b=rN40072vJ2XZ12086HTzcImyeBv0AFgV8zd7pKkQgW2ZSidVBoISQ+d0jCVrMv6Bo/KGu6yGIW4OxYiWAj2/LscvKD98BYb36MnbB/KYKHoEMuA+QnmEoqKXLoV1aKVU5eVgBhsYKJrwIabJWb77ZlIgf2MvQ7PsoVpTv6PcfxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789417234; c=relaxed/simple;
	bh=gRfGSFjB5PTiN8eI1qvc94mw4025dyU9n/8K6GEES2Y=;
	h=To:Subject:From:Message-Id:Date; b=QWnN/ArRuuoE2dB+a8wnSA4r64pXjKoi8kgty37oQ4+oBavU95BJ09nkb7M1dOPzNthJHJJiicOJI8zeicrAg6PlqsootivI4Vn1Tyfbhbu6+s6G2GW08r/VWuD3wz2HXM4Hynl8wNinYeJafprVy2FmMOt7Iz5DhpYs1gw6gPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDnZCJB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDnZCJB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58E8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789417233;
	bh=gRfGSFjB5PTiN8eI1qvc94mw4025dyU9n/8K6GEES2Y=;
	h=To:Subject:From:Date:From;
	b=CDnZCJB2SgsU65IZvUKy2QA1MqdLnEsr1BnQlT4ZXpRvlzQTzAaCOlJVPYV9rDIXj
	 4r04UKyFb0kjoEfm5h2IXL2k4naOFbjXjoqMfBgx7xKvXZJs0B5+D8XEQV2PFprpb0
	 4Ypk113rjrSUDmBuGzjbSrPJ0f0mDIzrSFdo18eca6gkBbhtR7/zvQeKqvAoaYMtK6
	 uQu9Ky/AXnkcbZbQxQvAbgQlSoKhp5VhLWE8aoBvmPqxIlUuNj+uPdIzpYKvVrjSpR
	 1rp3UZqcPYigkwcT6L85A0DpQG7MRwW0KSwWC/5ff5Gx1KpsWaZHGsjwwjN13YvTMG
	 seTPlh4mMn8Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF612C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941723370.15678.5455578693085425342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789528765aad3bd7bbf27d186fea144a3cc3dad3d32be7ae23964e53a26229b9
Date: Mon, 14 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789417233

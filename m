Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327E6275AE3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764342774; cv=none; b=TKvfZruIfOysTI4YmvFxo6rtZhdaq8bZEfnC3xz6xIhgw6+9yH0ZW08MLGs9ZnhBmtzzghXL50cAKO/7PuFG1xtZZnW/qMngU2qZQD+/XcsdwgX2gn7+b0Vc94CdYijmxVOchskXfVm7ehXvSyA0UWuK9opiXtVVN2uNfdIadg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764342774; c=relaxed/simple;
	bh=KppWEroMohq14S35TWqvpfRVjxxq7DZvyQJOwf1MY8I=;
	h=To:Subject:From:Message-Id:Date; b=A8Bt/ADgy8A+5pVWDAiSGO6Q3+0x6rJFx04zBtoZNYZZtrjRzzDLNsTG/cT3GJVYzokLB/Sllejv3rMfTOjqsI0te3MIeJeoJjhDg1jwvh0r96/fhhTBS4y8hIJeiq+AxmlnX96GH/DNb553UAcMUwYqPsUyEOg8tvEPRNkKCr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrO10+31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrO10+31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764342773;
	bh=KppWEroMohq14S35TWqvpfRVjxxq7DZvyQJOwf1MY8I=;
	h=To:Subject:From:Date:From;
	b=rrO10+31EF2oIJhTNhxA7J8W8ZTURMOH2Kyq5xEDap7MV+IFYm0qL1zH3Whx6dmDS
	 edJYAG9+c/bpiaR5bbRUtd+qB0m+mrSI2x4FCpPrTdvm/141dACxjJsCG/75qUU6MO
	 X3Pq3m7OAJJpQNGDPA/iMQwIXzwVtEUuAdjoomx6nyxIEtULoZ+BYMVxYR2EWS4e7h
	 J7QnEGqXTB3jCSmC7zPr39axX7/qWB793B3VEjItJv/6GXN9dbAfVZvX5T7Hqdxwgz
	 O2A5InhZafTRvBqwKsUYcklbJVk18VSq3zCsP0YRwhBUra6nkE77CuVKsEK97oU6bn
	 OiRjWcFv01Pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB3CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434277358.27210.157549345663442238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8742c7c81f4a58a10cb0c7fd2270c9a1a957c0f479fbb34b68f7bd6c64fd817
Date: Fri, 28 Nov 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764342773

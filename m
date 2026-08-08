Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7FC4A32
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786228834; cv=none; b=EB5jDgDcwp13aj2IUWt0i6RkUVKinZSGD1uQ0cngBG877j9MkFt+vc3SXzLjRaayubarAXwHvzg64SKuvhrVdjm6etSwMXXWjBs75dy8UedLOSZU+JQH+HTNW+jsTLMIc/HSA9ggDfr9FKnPndJqCDFv302KfXyykYPpQFzyirQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786228834; c=relaxed/simple;
	bh=60XCa1LKrA/mJ5/wvjP7Wn7W21477LkHSFJggmu3fn0=;
	h=To:Subject:From:Message-Id:Date; b=kUELjUYEJJo485vvfpLw/crWV2IQQMZczo71z+v8zTYUo+brrhNxg3C4C6MKgM4kj094G9DzhEd9O5mKYsVF/KFFjZTXPkNOta2W6SSTPoCjZ8m+EMhmLEpMrCUxL1OznmO8M7+UBFCxO4kgR/mVMtJkocI/A1UKzioXowfBtY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qynKTPdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qynKTPdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A8FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786228833;
	bh=60XCa1LKrA/mJ5/wvjP7Wn7W21477LkHSFJggmu3fn0=;
	h=To:Subject:From:Date:From;
	b=qynKTPdSpQNkH1LyhkMJl9sP/9hMvIXIO5gUiv60RhCK8EoBG7vl6MNSDKGCLEdkP
	 f180HsZz1Gpym6B1YXOw7uuy3t6+RT66rItCV4CaweQLls/QnuCPKvmdNzcUVxOp2x
	 ZxlNLUNk0uh/bx2mnSiAGO0RNTg+NOsbDNNpjBFdrF1e9+p5ySacSaN1FVVXv6LucL
	 WJdLYHdgJenDhGgzU3dUWpK7CONOTlLvECV5lU4zlZFwGhOjrJSOKSh8t/F5Fv3a20
	 5BwDHV+mopbusPT9aXJm081jNLSRsleZJMo4nKg8h/OCFx9c9jMXxTcxF0FvZ7Kn9r
	 f0Da0MZhoxUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B74C5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622883369.7907.5056222315985165609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088352f670e47e3fc4d2a1343dc95b83205eb8d974fa4699cf058a7a21ae3c8f
Date: Sat, 08 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786228833

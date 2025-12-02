Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A682F691E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764715374; cv=none; b=sObsKumq9QWBn/66RlSfdmN7bIdRQF/FVijoI0Vpnp7gCGH5EbowhQQhQkoU43yrJC47aRPTKLKwqJfZsfSytXU2UR6L1K14TQJG16Gm2Ob+fkj5FSaeYAhyLZJbw9AwS+l/xdk8vXkSSfYwvMEeHSiWaa6ZhWaI8XjERQu2fiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764715374; c=relaxed/simple;
	bh=LZNAG33kW7TSULy+0pW42EuKVuQ8AwrKv7P27jg66dM=;
	h=To:Subject:From:Message-Id:Date; b=bK24VMzUradO9ywU5sno2UOfK658wHAFPAQ38PXLbgAFQiJGr19bqtynDVQqKMHJ+UIKxJxWY4GigI6LX8/0avdg4wGN1wmiHciI8NLL/W52TteztVGpV307CUCCkk5pxOv/aJdn2pkqzAkq+WVjS72DrMD4A7xp02xGYHfb34s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZiFx2GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZiFx2GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58BAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764715373;
	bh=LZNAG33kW7TSULy+0pW42EuKVuQ8AwrKv7P27jg66dM=;
	h=To:Subject:From:Date:From;
	b=QZiFx2GTMhMjgjAL6lhByYrHZ+GzpoLNyu4OXfYvdZkRqOnWN3nPfXJo588c4rzeM
	 n3gR146UldDcMUE6efQM4SpGoOEgm+kyYrLPs8/aR0+1hpYMIZEuANu/V66GpC+yK1
	 qXfzuLbjAuRSHCAnTLq1MZgYmPWvH1TZxMfajn8A+0MkUfHV6eF4vM6BXPlMU3IsuQ
	 AKe4jPw4IRHj5EmIy0NYXtUB7iuvKrKRv9qZkKSmEi8zFii/8J3i0Cb6oUz9WtNzQb
	 1MLGp4GaWSpo6Sd9Mym56kmhTLoVIxi7gegZ6yXRE5UeA8ACsbWl1pcOlhTxncifP2
	 go5TjVWKcOVjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94605D12685
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471537359.4915.15468374595711394588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4e41c6db3de3991cb09ab25f03ed10a3f9bb23cc8f2f363abb70a380e24740
Date: Tue, 02 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764715373

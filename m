Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377DF3043CE
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779439354; cv=none; b=GiKV3pskinUJUSRixE5ejZy5DsBUUk5BYX3L0XaJ1rjRyjVz/Yv7c8aTR1zxELnsQt6QhnaBXCQnh8aEPRZDS09sEfX7HxHZ5+44b3A+O3tvuLjrwKP12Vwi0KFqfHG5YkFohs1IfVUwRHJFhEScx6DxYPE0aSJ37Y1Wcx1Z6dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779439354; c=relaxed/simple;
	bh=Chx0QX944v36LbdURf7NO5O6s+vft+Ur6KL6bua9mWY=;
	h=To:Subject:From:Message-Id:Date; b=OOPqtdd0AzLHvZuZfyjaj+VI9j/vmsy3bv8vqsGK2FzXTthP/SFksizFaAoqkjX4M+63HVeqohyHjQBPYYs6mUmq/wGK7yLQoSwpAZFGOZC/qjQDhBe1XLpGreJBJXIJe7kZk53yMpjTEBOPlx4EgzwRQCdf2Hf6ocwSUdX5DQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKVggicN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKVggicN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31CFC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779439353;
	bh=Chx0QX944v36LbdURf7NO5O6s+vft+Ur6KL6bua9mWY=;
	h=To:Subject:From:Date:From;
	b=PKVggicNkACwmNui1t3DFntH0oir07WxjL/kLrM+ArtnU8Ip4/LFv0Q6utE0VOs0d
	 8S1RF+KHvfGYeWQObArESM5wUNKDnA6PJBUofL70hrxmSlCrq6t1Tqznc8VXd0VCLy
	 +YG1nS9s0jDqKAmJT4wXowR0ILoEZUVY10RkbRY19nWZ+1eAcH6xsUf6iO8Q+7ztzL
	 ZHd6cktZKG1wzMWJvxhvGGey3QApi9DGiREkok3Q0pfP+0C/1QWJERHKYTFoULJmbV
	 rHfiTrhU5HqBp/emf8PWWJ+q3c9FcKsXt98iw+j2cjlVFqInVFTr77nCGBCnecHFrA
	 VDig9LVPO1Rvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9836CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943935368.7723.10627348677354018328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb50272f3567e593e16892a4d1a4a4ed1a2142a94609627230ea9f893bb0f499
Date: Fri, 22 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779439353

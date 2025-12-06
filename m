Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2813B8D53
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765051974; cv=none; b=HhLSbLhaSqHD4kB0kRAir+cEp1Ir/kAfaGqsJtBbWgu8ftWHqpMAWzCMAwDCG91+3oZy2oaZ3YxDgdS8yFqsYLHkmHrYQp81Gp5Jdc54vSpY/ur2XE9n6maRmbwPMGv8Yzye+OpLH862TwBvnUaZH45vxmmPhaDBelo3RNFROaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765051974; c=relaxed/simple;
	bh=tBTg3WBpuTnCGtMZhhfSlHk1GRVbnD+2Ev1IXQ5Wen4=;
	h=To:Subject:From:Message-Id:Date; b=YhpJzkgD6mIWucYlyEWSeVLrRhau59p//sIPq4hwMSQiygIEpda03Op7TGyciPuUhEeJAA2T+gU1MriJwjBkebP0OrGtJMmTohrMKg6sa0XYc2gjSUF0XggQr5H2QyiHjvWAY2p4R/Jl8kr+5lDx14Xzb4/zHNYn76eMe5xrzaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0lQYRwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0lQYRwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9522C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765051973;
	bh=tBTg3WBpuTnCGtMZhhfSlHk1GRVbnD+2Ev1IXQ5Wen4=;
	h=To:Subject:From:Date:From;
	b=E0lQYRwO15gXmcwcyz0LDfh9PSt4orZDNKFc0Rakuq/3oRD/JukXej7NoXIDYuIgr
	 FPuHAb59RJYv6xfukpqz6ANQpTYfrYTHJk+wbu+sDDzk6fYjmP3MUS1gHoDPgyzHwb
	 M8GdTdvFee9ap9TADZ6w9dgBay0/nTYTSK8LDYw4oyX3KGXM4TjJJDNoazKWx8SE2q
	 WJJfkTAwyFey20YjbqJx141JmSTSvnKJhLHNvvI2rOCg5IKRUW0yXHlQNg9vWYNIg2
	 Lan01D2lVjhx/+WFHuqjIGJu+9FyuN6hA/+mYLbukGBBBDew3MSWpDVqfrVslCWwWk
	 loy7Ap53BUqlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E3AD3B7E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505197358.9096.15727725879061131611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62c32f26f123dab02795a9f598e06d1a53ab4d95ac08cfd85933a59619ff5a3
Date: Sat, 06 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765051973

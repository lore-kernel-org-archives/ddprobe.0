Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A80130AC8
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732900554; cv=none; b=UsWvgPgmdwNdRRzoKH3R27u5mDYa+vYeiPPsmpw1OaBIfSnGlovf8RVUZByQIBh3Ffk48OyzZT7rtOjqbrvLKFKMtKCRJtvaYdAQ/qQiBwCIMbF5aMhOwQKLz4A85Efmkp5J6pVXi4T/6YslORT8BP4H9nvKMF+4ATMNNCmSB+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732900554; c=relaxed/simple;
	bh=DvybU9H6aPJjW60lhVS9gRvYrv42QlGLMXlIyNoG3IA=;
	h=To:Subject:From:Message-Id:Date; b=h6FzLGhyShPPEKnPT3b8vmIEoMaOWbUT+J1jOxGv/eY1+xneqpqgHlr0lFYUaB9iXMTsAj+sHe3RLeEySwlXv3UrAOUnuspyooxmmxilb/yT3lyNhJERIyY7cE9KtbhXiGfq94tsZaE4j0BMLmiCItWBJooDcNbXbNY/LPrkdp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXTo99pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXTo99pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACED2C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732900553;
	bh=DvybU9H6aPJjW60lhVS9gRvYrv42QlGLMXlIyNoG3IA=;
	h=To:Subject:From:Date:From;
	b=mXTo99pv7K7No7a+ZodaEUhvK959c6AUXN6kgb7ZlnnVjP7NrfMw74C2pAw5/VV7d
	 AsdTbBFFH05yAfogCtcyOHVMFJLZWPvDnt/CcLEkuhuKy2/GBermPYpBP7Nrlow/uH
	 pVNnOJkLSLg4xP5q5cXJbKeRPyEDE59AQ55UIRKkCZE/LEohA+D1RpZGlNwuOAmDwA
	 3kf9k00No7TexZjsyQ1VeHktHdJT3bMSMDgKcjsMSK1ORMn5Y7N6HSwpr4PLob4oco
	 ZPsvrcx1rsM3eLMBcbo5UGOyWMGcJWfIxXyVVkTMmn1reEW/tMGK3xiBGoOZSHOwzP
	 VSfB4GaUl4fww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D80D729EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290055358.26868.17878956882484672050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df11c3057cd6742f4178867fc5b1468d38f94fe5a1cd21297bc6579c6c72dbfd
Date: Fri, 29 Nov 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732900553

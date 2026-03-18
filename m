Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18646334C1B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773810894; cv=none; b=oAaeO5GZUgonS588MOz77YlpISjz8jsqyPXYQ++LrNGnh8kNDUmlWIBDpfcC148/LQJF2DiqL8qJ92/xWRA3wSmHo6SXqF4xm+V62ur8YY5rWZkEM/KAetpsJDzg28ZwjwJxJWvLH+wSbucQVmU17Ff0qGQoP+qDAWUfEmnDdMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773810894; c=relaxed/simple;
	bh=/K7/9VqfZnGBXDso361lQo9iHYr7mKQiGu+MTDFf5o0=;
	h=To:Subject:From:Message-Id:Date; b=mrk626TlgRCqwJV2kS1VRzFdWIENod84pSfPWbPpqUE/CFHR4I08F+5mpi2eKYDSH4/WXcZCnhMaouN0qxP9YHWV272OHsfW54vmtZCrNcV/FKwRhiNiSrIjrHRqRA1s1nhtlrFqCYOmJ9FWxcObO/jlrmq4amNsM9AJSiWuSF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awAYe2KH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awAYe2KH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D5C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773810893;
	bh=/K7/9VqfZnGBXDso361lQo9iHYr7mKQiGu+MTDFf5o0=;
	h=To:Subject:From:Date:From;
	b=awAYe2KHOzNyxyFvV0cPRZKotZjKhYaDMvZJxvpcMvWlE3P4tL2MatR3JH7Xikl6U
	 aH/v72cbCNVGAR8Q21+ZMC1PEnByZhw95JasjaZrtaGKzrClAFUYb9jD+X3kByKTFv
	 K4XG3jw7Rar6B7nlQQ7DqjG4AhVeR0XxGP2of4bhrv2CnrJ9XuCQfwptApT2dR/nK3
	 /tPQh2TR//EHGHyTV4F1M1Mhey9e4KghPWUh42nltI1mmuw7S94VOIZOjLNNqsKBIz
	 BoSygkimpNFXwJmwZdsqUK7KrCWhJ8ndP+qYmHoC4MHCssmq4/2QUxwT6YMNw9cUyU
	 cuPI9QccTuWwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE27FCD0AC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381089357.7804.17843833863683362187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cdb7f7b19f0e69e971bc9b2f8736c950d03df999c467e23102a2be1ee4be32
Date: Wed, 18 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773810893

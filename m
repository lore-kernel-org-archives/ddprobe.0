Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243CE1F5858
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326034; cv=none; b=kTKvTi4qmo/lthP3RL3rXMZzdZVDflPKc9RMC6WpiCHw6TtyBpKx9tx0gLuFVd+vxjG8qoiCL6uwZ7K0xVbls2X8QZUgck6sRtm38T+NIClVHMqN8vxqWiQiZ/6Chu+2J/3xVBeR8D6XRY0fuQWifXRfS9oRDbd4+tlpfZqVf94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326034; c=relaxed/simple;
	bh=pD01L5pV75budPSNNHDh0JhhxjXs+2xh6t6JPCiV6LU=;
	h=To:Subject:From:Message-Id:Date; b=tZncVd6PDgimMpRALJzCw83cXglDPPNOIEi5Bi82+ju5FKicXrLUHLm+liHKS5j/EAtCJoBFQzfeDjOIhQzvMmd8IYyStHqPUvEVLIjSephihsFPoxGWXEe3x0V3NbTJM6G2uEO17rHamCh2z45yxvrn6KN2S71YtN//b74GQm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRG7XH0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRG7XH0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB84C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770326033;
	bh=pD01L5pV75budPSNNHDh0JhhxjXs+2xh6t6JPCiV6LU=;
	h=To:Subject:From:Date:From;
	b=PRG7XH0sK5+2S8Dc1FH8KrxBHi+OSAFrrzTUAekVob8VqsLgRqb5YDo6RnWr698GM
	 Yr2CZ5cKnSS5YvGHI8Yh/clMFgjvZbqm8tLK3si4tbYRy0bM1tuqxXvZE1ODPgLien
	 QvlE5wFbalNmMgB54AzMWGbrBvx1XaRDwtIgfxhQZ/2hDSU8dsUA55tg1JbH8EUZaO
	 JbwkNLktTPHj2FqR5U4nLua1u3MEd0j9pvfRQFvvzRGw3mS3i1dFH9M5lyZOpFYsGr
	 lrppJuNKkDUio+WuXd5ryLoeQIAiGWTIKFxJbh7chKKCFvVsaBQV8bj3KbiAkcpZn8
	 RxmlnnIwYsVFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987B9ECD9A6
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032603361.4146.11358519972340490472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566bee4ab507a86c95dc8ba7dc21a315e2b76993008981b3bb69978fb04303a9
Date: Thu, 05 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770326033

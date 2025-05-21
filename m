Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F106BA36
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747797594; cv=none; b=QaRPq4GiES82kB0lekAmsvWl8GDpaP5Al1eZqx82Ik0LoOJY26V1ptev6GtIURDLQcyhnVkZessMdhqXjp8PJ5k+ISIbqunxrTlUCq1mmIpH85waYzu5ONvc8rXp4/bt7leTybrY9QPRXBdD7SX1HAAWWcVLfDvtpPslTtnvsoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747797594; c=relaxed/simple;
	bh=s68qMHfCQSW0dA35KXDWPfCXflrfoOEGgYE0V39iPxk=;
	h=To:Subject:From:Message-Id:Date; b=jKbuUiBzd3xIiQ1WJAtXzLXd8fTxwNhjKFqd5QaPDJru0RnV8zR+AlTboGVSYrpraEuGh3cX4Oocw4a8283hd/mEq85KrP5F7AdxNOLkLqX/oeZP/M1HVj61sRPAeoU+fBKoHl3+ddt6h9ULEVxMJA+HtCOUHdWwzAE5pYCNCBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSp+doKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSp+doKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D314C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747797593;
	bh=s68qMHfCQSW0dA35KXDWPfCXflrfoOEGgYE0V39iPxk=;
	h=To:Subject:From:Date:From;
	b=uSp+doKBva8tuLjHHkyJ23jvZSTDeZRZOtsGyfy9RMUWPPLWyvr1wqn8ApZaRWkAA
	 bb6xB7+x9agECo8TjCxAdbD6ubo3hiEeM5kd9jpyGqra1rnF0MYNVzlfzkHzY8kb1k
	 d0XnuH9WqjSchWZK9Rz+u4vvpgoLkaCNDThMMj90/BTZwiK5E3+VSig7C4EB+baBI1
	 C0o2QhBKQLsBRt/hlK7UFQ/sIOr01u+OACJYHCD0G1gwPf0kALMIwRYesv5rLvWk0j
	 9ryLI6aufVEbcYi9unmx7O3fg9LIoAeiou8ZzVZZu3FLHx/AWkIVxs1LwUJiDt9caD
	 5y2hJhdLu38hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53DC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779759357.23819.6210407946141944746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52563e1a8871a1d593de60a4bf647a59266d5e56c8c51b7affd544ca2332ac8a
Date: Wed, 21 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747797593

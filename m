Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505F6FC02
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720069523; cv=none; b=JFgU/UQnFWq3YEBUi7GsZKI1xHlH3oj8jMVQIlLR1VRhrMakXkffEFoMInBO/GpXU9Y79GRb/uyYSrYzeH3XU/A2KXjWx4MVJaAksY6HCFj9VS4pjlOjqnMZDq72lYU+bokvnNS88kTeMyvVOjqrG71fcBSPL9f4prlPCUaydMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720069523; c=relaxed/simple;
	bh=DgtPVBNRpuYziXY5stufeoESremWZydfKGJbgZ2MCco=;
	h=To:Subject:From:Message-Id:Date; b=L/sHb4ZSExKSCKBOKTQ8p3ymc3x4ljPaXngYbdN5x/rFnFwvbyuVI7OREAy3CfqzheEYB0PpnNSyvDe3/ucnYEQN3TnkmxamPVXc40+4Ebq1nAgqszleczLcTqiRRxUwP1fGvQEO8+aBnZz4S+QRJGs3xRyCG056idVhVAnPO/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEs0OI/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEs0OI/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD86C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720069522;
	bh=DgtPVBNRpuYziXY5stufeoESremWZydfKGJbgZ2MCco=;
	h=To:Subject:From:Date:From;
	b=kEs0OI/ZZpNyd2dkYvPpZ0BnvLhTfJ7ESkO4ovAPu1Rubn4IvbDR3r7XvXqdDjSTF
	 2fdEJFXksDmJxenkPoiT5PZ/zrLxNTfmtDpyZveTQM3GmRNnuwRn8vJlOhOnTZCeOQ
	 NZ0bz6bD5QRW69SvwXeQEI/UaiZ7XIzALIt1RppI8mOP1zaNjLdQu05te3Gkuo60kj
	 rOTfl8x8kTgvYcJm34aA6cX296/NGKbf6Qva26kBsBDcLZjgofn2UPQP72gkL5Ikf0
	 a+E2LdPiAo0FJAcBXy9mElVyadlowUWqXuHyWRWG+2OPYQluBaQ9uDQbf9cERIeWr1
	 zUz1WAuWFACxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DA5C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006952280.26461.7472685907419233479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a08473a338309054faacfd63399b1a8faf11bd7727cdcfbe473df77afbbf6fd
Date: Thu, 04 Jul 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720069522

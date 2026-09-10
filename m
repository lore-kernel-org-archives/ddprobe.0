Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072DA374E6D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789060836; cv=none; b=NGLTxxUKFwDv6mXFIZfRo/HSfQmeakLIU2Xflw0bAAiNCDJIFSJ+aZeV2sp1rjchTf7lL1Rc/6R4MSScJ7kbIhfe1dMd6kevjqekOkVtmUdhTY6MUQ8pxoOJ8y8QFzVlLgBJgLLdTQ2QQZu/k9sscRLZH4VTZZP7nXQg/C1PZw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789060836; c=relaxed/simple;
	bh=8in2pj6MM/iOQfm1X7LbbpZ+Ixc9Ux7XuekqLkctheA=;
	h=To:Subject:From:Message-Id:Date; b=n5EeQnK/3U1oFDvjO9hpkP+KJBoSoXYrAOIXJNgUw3XznSpqh31q35l4djEt/9SHq2HNKs50GNH0n0AJFeUMT8+oMIXfuZB+vm0+6N1jE5vBBBYKSxJYeMv2oHS7YP4ToTfqGKeFTmlVcaPS63gDMfxbbvRuJxQ4Pw+f6OuuDS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5rq2dg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5rq2dg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C77C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789060833;
	bh=8in2pj6MM/iOQfm1X7LbbpZ+Ixc9Ux7XuekqLkctheA=;
	h=To:Subject:From:Date:From;
	b=s5rq2dg3DQzNkkJJLfaI47cZJASPYRKTqkPZmpB52IAZSHR3nr9RoCxXyoISMEzZ7
	 ULMUG/n7sI5X4fcHrCSdYLCTt/EPDF3sBCQHGCJ5MG6+j/5VpkzhWL0oVngPYrS6Xu
	 FIEj6Djglu7XYsvuqyhStUSg7H2AQVOR1I+8CiRHH2JS317eR5HRcXwASpuFd7gjp2
	 O8cZtWGZEfxvumloSFSUyX+UL4Gor/VoMT4R4UiZ3Ja7kQ7yqOhKKl9RRfao1uldcX
	 i3A0/4zDuyT2Rjv3vFuqGDbsxtEqt54KBl/mX2XbWj7IBRsYSevZsBNu1jt2oYTr/p
	 R5LcK9NkopIjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A4C79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906083368.29674.10939141615391952885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3065c132a5b73e8d5d7ef9f15d5988df509cc9ca080a80878bb3fbf710eec2
Date: Thu, 10 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789060833

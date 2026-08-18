Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0432DC331
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787094634; cv=none; b=sMgB3kFzHTWBXqDuQOE+v0h87yM70FiCdflLQgq6N2n2ZuxNGs0aFOZR+buXhCED3UUNXOMMJVtwVmi/Lw7mRiT0FKkgvkrDJv+Q+qB4iSNM+9fsFVaLYEsT6bHJtf9pwKJjALzQ+2hjudePKKL8bs16wVQKsPYVDj9KGNKs7tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787094634; c=relaxed/simple;
	bh=7B+1YZXAGlC9MkCwIOgsSaddaR2CeL3Gi0iAqslbrUk=;
	h=To:Subject:From:Message-Id:Date; b=GETKS9iupYpmlp8ZGlk3Nxv6YWsHNxNm9k279SSHPJaYkxysubuFPDNFnSJm7ZL1tLHBvdMvk+5JDvytLOhZgVZ8MrTnFPVUScLLsff2rptnb/4nu19yBcXYh5R5VJHgBDXWlz9z90dA0Jh7wVxHuzY0uFyoZ4XU3ggwqOeS6AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUPyUCCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUPyUCCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0275C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787094633;
	bh=7B+1YZXAGlC9MkCwIOgsSaddaR2CeL3Gi0iAqslbrUk=;
	h=To:Subject:From:Date:From;
	b=AUPyUCCnJo9q+xYLK41cgwDcftxgWFYHn7ZSC581Hue0h1qkb6yeVOjIRELCPa1GW
	 fyMEdFaBTzg2iyIb8u1Rw+8T1y/kPMzRz1Atuar5MBdJkRNONud4ga0nk5DJZRcGJR
	 mJWyZlAW4+Lr4byjkkduh0oNhOPDcnXttsF3SanQ2QP+40GIK7WUn7U6hvIlgvfo2q
	 60kPIlPOkQPpZvP7JnkC4bfN6UJgEMDzZHp+wCgwgt0I3Zw5P5GlvRox8IYhz/XqgC
	 3xvAH0vVOvsGy8/tiZm7ya44YnZ1vHdh4pBZxTH9CCBZVHY2rC5LpLbUTj2VRm/31E
	 L+5ReWB/4Tcvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A2C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709463369.27166.13938574710022415564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c4eee1f1f58fbeaba3572dfda64130a030c1a2535282b5ba706b82a912664e
Date: Tue, 18 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787094633

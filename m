Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065CB185086
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717566383; cv=none; b=BgE5j8FwF/j/g4hdef1wGey2PPp2C4jlbDofwPfbHwlsc0aQQK32h08lzkGUKHwppLJ0yEPgC5XE5gvfMLHOtb++aJIujz6uiklxzdGtjvTMJhfwtkrdt51lzO31nwR4PhBgO9/tnxn8pwJlII11y3DUgbHkJEMZcU9xFI7BBSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717566383; c=relaxed/simple;
	bh=oI86YYkBNR6dvpv9WHVVhu4DLvkc2tpae+VyJUH0LK0=;
	h=To:Subject:From:Message-Id:Date; b=fQq7Y6Bniy+3xfpcNtU002zYPczaysCUj6j4OrLSLp61/yotAIaN/pJ9Kjm1ykeH9Bu2mUmROki0LXqT/RuMt7BaFMB2qjMbGnY+i7X1NQhxhdrsjWbS1W7mHag+fHHr3RZsIRBvJJseyt9Y+AWWAqCernHsbSvicJPisZq7URY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok+DSX9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok+DSX9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D074EC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717566382;
	bh=oI86YYkBNR6dvpv9WHVVhu4DLvkc2tpae+VyJUH0LK0=;
	h=To:Subject:From:Date:From;
	b=Ok+DSX9uTAOsvkw+VmAkctAqGUFENJzjW5bP1YAFfxuyT0kIBzXEz7HJaZfOzMY+P
	 7QKdZHGAziaqwpvqv5kg0pSZ4FgkKTtDUrDrVgUvwJbiwT8Kf9hcQJOEB3AN6EKv2C
	 5oKKSLm+/Ev2pfo6ZOrGrhgisZgJi3BASmlv6ovOGPWRiT3pdVeMWtK46qJa4NWv51
	 JYmgRdPFNZupHJM1Dr2t+McQJF5ZVtZa2glEDnkpJCWOCcu70pTfWzbkaXMyUvTWyb
	 16w0M17Iokuf8P7MVwiXc+d8w8z6sovPFX/oQzC02z7qUbSmx+ayzVllGG86R2Mqiz
	 Gt6+T9uUUzQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1CCC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756638277.15569.11762182581420507924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204d2ae24a9fb895ebdf116049409ef1691d0323f78aac5d09131cfafef740a2
Date: Wed, 05 Jun 2024 05:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717566382

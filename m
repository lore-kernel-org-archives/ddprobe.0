Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4E4623
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719969323; cv=none; b=OM30/A0voJrhLsgMdX0EfR+tliPs9VM7MhkFjaw7EZ2OLLBx1wSxAaXOE4V/HsL5c+OZDOLUriPDritQ7/LIuPVozWFbNCuyrW11doSC+uDfidAcKSwWblDojeg4baF5CXG/Ix1ZUbzYXyFAM0Gs/3/FXUSLtIQph/kWQT9fs1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719969323; c=relaxed/simple;
	bh=T5IhpAQQwK9/9UWo43cCulV7m55DjtFALQUPyswL2xM=;
	h=To:Subject:From:Message-Id:Date; b=Q7XRKDrGlQn2ptKPPr1lMit3IcOptArihYQvXOXHjRI58draioNPcEfhRmfDUEGIpn8iy8kcpCbwHjTspLFjXkZK7pUaknpvKP4Z+zSFv6QX6XnI25yB6jVnplFEyrCwR4CVrCJmVhG5U1pL4ZFqgDPj1hvpOwNdnmAMYlARDyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea4pWg07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea4pWg07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3732C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719969322;
	bh=T5IhpAQQwK9/9UWo43cCulV7m55DjtFALQUPyswL2xM=;
	h=To:Subject:From:Date:From;
	b=Ea4pWg07O2QN/KJvzcEoe4GL1rRIrMW8JQZ8Z0y4Yd6IUFIkqFCwtn3lKUwGbtIbE
	 HI7gYjZLbgebUzODclcTYPIkhxE0gU9W+V8UeFkV7MP6CMqU8/TvkdHQLIVaey6cQ3
	 I8Rps3oQAWptNPUkrWP7OIEHqP4rnP8WRvRzOJDGZvwrruJuzRJAlxbAyFjeEefLBr
	 X6o65fbQoFK+CXn06aj7kzAqqOz0PWZ7mL9pdptA2VglAi8i1je7vIb0y/w49xnZbL
	 NuKb45hKEQXZBNt1s8ROQCPtl4O7GFuAbwyAI5ESH0W5TMEs0cQ/hTWoEXZUfzMO4H
	 W4Ul3+PzlHe+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ABDC30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996932278.29737.7768415399748253928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c237e56253de30d395ba3755552570229016806fb2dfe2c8997bedf439a9a765
Date: Wed, 03 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719969322

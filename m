Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F779111BF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749071394; cv=none; b=YfGpLLriqDhSDevr0AV24pX7P0ooOq1Tym2FcryI6CL3BKSxgWSRIRGW1Fa+trQhM6+eAczOQksDGjPvF4uWTWzI3aCs84yNlDo6KhsdXfIcJJ1DPPKiNLqhka4zM/dsjBTdioM7MzP9elA2Frip76ppudfYFBQFOii+xVjLQf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749071394; c=relaxed/simple;
	bh=Jxp8X+zuIckdGGEnxi16ATZ6gpPwGEzIZkBBvja+iq8=;
	h=To:Subject:From:Message-Id:Date; b=tOxVEqrK1BlY8xW4KZ4nnXViEkrbEvhO1Hh5ebi7/WcQeSHDusqsGtBHtk+89wF6U79viIk2qY74ue4BMNSXyJYOgEnXPaHZgukyeDGFNLvzk0seDA5xnEVKG0U/rDubRHxk91xmt2Gn5e//LFvDM36cdn77DnUbtlJwUNPy9UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsVPp9b9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsVPp9b9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F98C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749071393;
	bh=Jxp8X+zuIckdGGEnxi16ATZ6gpPwGEzIZkBBvja+iq8=;
	h=To:Subject:From:Date:From;
	b=FsVPp9b91iQzVQyHIKDLrbRpc6DK/szkky9Qz8TlUNPW+A/fs8PSBqQLdN9C3lVeC
	 2afm0BQNfww3Ed9wgju4IeEILst4z/F/HX0e5mfmuXwXDQk4S/u4fp8v+3cQqNqLLg
	 yhA+oQ67NaZt+Tpluio6SQsBq5eQn7l6PPPE5cKF3LjYPOdfO+s4Zhk6eZpVEiH9qp
	 AVZpXkD/5kJGbR4ADT8Tlvk7fI4PWuyI4wLTpG84rW3JxgpRROlAmxElZUs8V+2jcF
	 RBeDGWFMcvhedCDLrzrpCLfOHU+kI7tyuZUfWl0Q8nl4+yhulfsBPIHP/glp7/JgRB
	 m8GfkvbHFsElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B16C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907139360.15528.4184662061976269473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbe011ec9319350de88fc63c3a1c7a05fe3875846e7627865886dc028073e8c
Date: Wed, 04 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749071393

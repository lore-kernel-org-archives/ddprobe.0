Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0C9368D50
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780566274; cv=none; b=ka7qyJZgb7bG46Epr03wmooo6eBbBRshBMOVoZI8qMQoHqSCrlI+Cb+eyW8HEwyrTSY2m2Q714lkZkfuIMNuctzjTi/SddkwzpAEd091jfZSuIilgR6CAGQHQqazLGJ0oo8+dTW+kGkprcbr+5DATKWkQZe9W/xgvOWUOQHy65k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780566274; c=relaxed/simple;
	bh=z6kdheOQXa2X8APUjJ3cY7npzvL8memOyptZLBuJJp8=;
	h=To:Subject:From:Message-Id:Date; b=LsnlFSTkcjgxeC9Mi7IXD0Z0BcTbXYKFcTm+wzz3DUGNGAiJJxuP5om4RB/601gzBHxjzZdan1hJ3CrP1+/iqvC+V7tY0BNjo41rZaf9tinocLFLlSpQDStcYClho8/o1sDmCScjNxbiL1Jqxg4MoVp0iPXmMaunAT37t1mqbNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaHn/E6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaHn/E6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04B7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780566273;
	bh=z6kdheOQXa2X8APUjJ3cY7npzvL8memOyptZLBuJJp8=;
	h=To:Subject:From:Date:From;
	b=HaHn/E6QnpM3dEPMGHnlNNN+tbxB/COjxw0HA+nl1FHSOTyUQLUaafxJ+h2lK9rbQ
	 FSC+sMZ0oL5HmafWzOVAU4oEt7zI1VzYaWN6uMGRG3U9ahlWGnjvE3rwQmbSItx7+Z
	 NODmJ4TA45/3Htm5A9rDmHQ/Lqe+LbXBiMOSip88f4znMDFA13YgYAdIPRlKCWd5kT
	 SPR936oq0R0F1E+VoEkl9yl3CSKAVsRELQh+V8dLIeJBS9JhN88jWGcZ9VAquZhjVs
	 BEqrV04CExVPB36Ksjiusxm/8/B7HQHgDo2ICO5WHF+BF1YLcmxOy4raQSSGwbWcJM
	 WDht2KiE1uErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B82CD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056627368.18302.12096924907467771091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325dd55a09ed4da0a12f8fa4037b525f52b6251c1173e2bee9075f8f638f63f7
Date: Thu, 04 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780566273

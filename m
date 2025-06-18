Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA64029AB05
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750245593; cv=none; b=I0NuTWPpZ7+aJ5vElLsa3g+UNcPp/hdT16lS4a2xHziCt1qITt2Ydeknxbnd853gv/pKcd1fGPwy3hpNk2msCcPmHqPiMJJS8F2d9dek9Old2fEEG/B1ONWTvBumEBaJ/eO2yeCF+X4sYyUzmKBzYZ/Psq0ewL095yfk/a5J7pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750245593; c=relaxed/simple;
	bh=8fRqAR7XpL7LMifohmtbwyYkCb0kdg6j/HU8xjG8aw0=;
	h=To:Subject:From:Message-Id:Date; b=Q4C6GsLdfhzs1t1ixmE0ZMwu1oBBS1RlWqXMTy4JIn7fg3rNKnQ1DhCfDevd9cFPsD4vLahb9hC/SoFR1c3JBWVmBiECaD3h9UFQWcH9g1RzHAAE2hFLBS6IiMMGi+gBOW9ivSlENsQtoauKalR+9sMIXHkb7AMtExNKF0x3CeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz7tjyF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz7tjyF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14ABC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750245593;
	bh=8fRqAR7XpL7LMifohmtbwyYkCb0kdg6j/HU8xjG8aw0=;
	h=To:Subject:From:Date:From;
	b=sz7tjyF6ng3gy/rAdD/pvuJZiGjxXTc7tCU0h7xZkB9w1Jdl3SiXES8WFV6PgY/B7
	 oTaFG5rePnYNCdCL8qqfQe2k000Du6NwAbSJbcUeqPpljEq9igZAliGjoqID/OlBaz
	 B3Y+9KX7DO/ZC8V0vp1t+tC9VBINpj1nDHdzK23a6r0eGXNgYa5RbO6eeGXsR3SlJh
	 82VklKUG2nBiZtEFJWP+HbVhJiBy87xwG4M4+A7a1btRD97U+6ypbJZFYavbG4lKi2
	 qwUze4Y44Kk88U0G2wEgwbo4Wt/BVSRONBxem1I5CTjzrYU8ZYIi+el0rDAiQJMisQ
	 y/msl0YNyjSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91932C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024559358.6946.9056217430180173761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820d143ad3da166995d49b9c3784c40c79f5b67eea2aff844e74fda1f757f65c
Date: Wed, 18 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750245593

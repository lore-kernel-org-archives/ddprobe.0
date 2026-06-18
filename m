Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703F2F5A0E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781747794; cv=none; b=NFl1pDs0cbmCxLN6aGpOdrYGQL8mpapDBtvvfscV7NHqL0931hgQLWmyBj5w5tAE7RwxfyWDlvlEdY7KoCIh9mHrp7XG68cqoE2SE8TRtkS83Un45+WimJgW7zaXLti/n6Y1zWgkDphBvSm54fm3DDUuoKmZxnAMa0Jppj4lw68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781747794; c=relaxed/simple;
	bh=rMGr3cgvT/PEP0G8bsoW3GoMPGRcZ04t0rGk7v6EpjE=;
	h=To:Subject:From:Message-Id:Date; b=IxuOpLJnfVMjVQgwRSp2mocqX4wW4ks813cEyxC4RxE4wpcd6SBBqbWl7RNQF4zpOHahfFOqFCRIV0SOLugK4562rr4M6OcvGxkQ2b/ehZ0f7WW/WXxiVZ2b1wW+9Hcr0VWFGhXvSA4OTyNBgEX5/8iQHv76FRsgbJyJvLOl3EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGeuwCuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGeuwCuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC073C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781747793;
	bh=rMGr3cgvT/PEP0G8bsoW3GoMPGRcZ04t0rGk7v6EpjE=;
	h=To:Subject:From:Date:From;
	b=vGeuwCuOQPwP8KJI202/Rc6y5SLbxdDO0hG1E2MzDYsXMEenPpcVupOxqIBpUTyZm
	 TNjp83fEypZhqFcs5YQuAWt7M30/3LQf/+ongGEjM2oyrjaK/CrTAriI8psUirHcsw
	 4WOR8l1DiEpHzZJewE4/2W86k5mCUaFCmbkmUryrqTLqrfTw7/SAF5ehUP+6J02SSF
	 aNO512FkHBGFvCAGauBpdD+cDQxqvz1PQN1c4YGk6yL82vbDj2MeKTCSzv9IYJMvDJ
	 7fdSEnynrT4iq7o6VV1mCf3h4cfA+LdTY/E0ez4U+K6yJtFcxRcCuYWFAJZwjqxQRX
	 9jKmWtupynTBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B614CCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174779373.12165.11811861895885702184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e18c5a6c17c72ad5e3dee95a5301f715930782b9d8cd2aaafa0baac9c691939
Date: Thu, 18 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781747793

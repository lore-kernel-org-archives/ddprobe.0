Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D77D25CC7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752557994; cv=none; b=eJlfBMXCe9283CobOFCFqKVe9eCyzNHshrtegVhju7dd3dpd1Uj554AmuxChBoCJptg/Cd8iGBTL1mbGsIIyrosvgACSKRtaiOgY4CEkVWhM9VfjarRWz8w2y825zT8rJthgYGEtXa7vkrA+VjI+DG1vRHQ2A2Z20eH00LMy7aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752557994; c=relaxed/simple;
	bh=AOIjkjW+dF40OqFvgT1eGQ2ds52048736xUhFMTJkEs=;
	h=To:Subject:From:Message-Id:Date; b=pPRs7UhbR/gew0cy3XiZTT3hXoWHt+Hwf01DsIwjCly3wnRUROCcmm7vbR2kjpH6VMbKi8wqvGWAtkDeuMvxPMaLO24Ug11mTpIeH+i8HXMMTVpIoqrKrZZyA1fuzYWatysHg3x4zj9B010yMhKrX0MjP3Fc29YmOXsYRl+NAv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZAMB/eV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZAMB/eV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA2C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752557993;
	bh=AOIjkjW+dF40OqFvgT1eGQ2ds52048736xUhFMTJkEs=;
	h=To:Subject:From:Date:From;
	b=nZAMB/eVyJE6lvBiErT+PFqeHeJvYkOOEVqHDOX9qkIII4weMWnQWGiJ8WfRHPcJW
	 v6cb1fl1VIg8FvuThI4+RkOUHr7PUdd4AUWs/RvNHlRxpbjLIkgp3mRs+cEfNfZsPa
	 ekjpLO9xnVNEmh+K8WsJ+kuWwub9LVs0Rohu8owhdzeifwEWOsase65MgYJ1N6Rb3j
	 ptYh70YpDCPp+oRGNSMnTtQLrD5O6XxNX8+vyjtNx+AD7iqhJugHvdpFU1Z5Vj5/qm
	 nI+RNEhCwYq2zCjIOP35erbGf6wIwR4F6LZXnC8A//fpJlbVNKBsDcBth9VIUEn7i1
	 vQOaACQtbqjoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A2C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255799357.24521.11554325470455448159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d89e8ffb830793e6ec5f681b17c47203fc349ad10324a75396e2d867466d8e
Date: Tue, 15 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752557993

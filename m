Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF75197A8F
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 17:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734630954; cv=none; b=EFcaCoWgA7A4LFLEWLfVbWAl1W8eOp3LCNvM0NkIIxL2x1+cVUyslMLZ1eO6FXKT6Y6YesOqpLhIlRk+yXK9hqGUJQi4c2EU+Q/vO5pUdYVhF5N8nAn1I/e5ri8UyYAR83vFEh8G1iMKecR4uRstuZx+A37EvXJqGw+eDqy5zb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734630954; c=relaxed/simple;
	bh=nOvyEmPAtYQg/P3JL6OUaqXSJo1C1UKmPjD2lWt0pnY=;
	h=To:Subject:From:Message-Id:Date; b=iz2Lhk7gPaENIW7N9OG3eq1i+1WIqGA0H6dYQ7Udg64ikdi3MDVgva09FKwHo2b8ZiEOLPyd2CA7b6Xu979i1MxXoA3F/qJKc33iTUaoE3YuR7Qi3E7iWE+9LHEqbwn1Ta0OR8eenqvFD7aBUwlbuklwL0FmzzKqlsElMhv0USk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpMIjYHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpMIjYHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F7FC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734630953;
	bh=nOvyEmPAtYQg/P3JL6OUaqXSJo1C1UKmPjD2lWt0pnY=;
	h=To:Subject:From:Date:From;
	b=TpMIjYHbdJn19kbh7XYNINslFqa/QkBGsRnT9cceRoM8vUB/pEyuxK7UBIIT/8zwg
	 JJlba/wl9/7NE9yJzZSaQzvhpxRp0F8ER3lPMDFfNkf9FFH4EMM6IofV3hByU+QHWS
	 ydpzhr0NW/1A3LRBaYA5emT/mkyVpodUlT65wIG9weWLKliL2PNwbLEh3QR5N/Fxoe
	 p3M9HCvU/zcj0Q+IHKUCdEUhWtVB5dAZzWPTS9mLDNEGzPqvkna8Cn0nU0hA1Bx40f
	 pVOgTvQOscl+9G7NBoJMULXLD10VuNNj8iDhrsUAQcoCr1SJ4AZL/pHYpOU3ai0euV
	 CYsrtdJ6gsEig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A46E7718B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173463095368.24939.2088313747895590008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3749f045d9fde934d81732b446e51f6530f2e6a09f926172b5aaa8da03c8f4c7
Date: Thu, 19 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734630953

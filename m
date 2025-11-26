Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367C725CC74
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764163374; cv=none; b=O/zdVEoDqaFT4WT6wyNadbiiq7XzPBbsZQTxEd5Ka6rGS5hcWLDzEeAsu8qtHk4Wf7KOcXrCy2viX6WjZ0LUmlLKJhlAPaxdIrJHsq5Z7w61pdZawhiyHJUsIQqOwHXQTWg40ojMM9in/bgQ2RtN60W1LpvtAhGeQD8UKDypeU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764163374; c=relaxed/simple;
	bh=RgsZuxDtBsPGOCtmuOWNfxYpGpvsBTkWlBAhQVPeiKM=;
	h=To:Subject:From:Message-Id:Date; b=b5YFyWgE1dlrqLj4d1PWTreM5TAajIBiEmuXMyZvotJ73fKYaTWtApmx8aP3kf1JgMwHrhtlwwh2Vd4Nxu1aj9d+W6U2SwYE8H4UTKmzekeCiKw2Ho0BfXaoS81biFGgQyElsgbG2tuImrrGafWNbfplGd3beaHyYaquHJyRGyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D22S7Z1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D22S7Z1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9562C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163373;
	bh=RgsZuxDtBsPGOCtmuOWNfxYpGpvsBTkWlBAhQVPeiKM=;
	h=To:Subject:From:Date:From;
	b=D22S7Z1TFez9uH9URR6F5Wd1t65GoFu9B/061yzO19FFEjHZF+ZhH8ephrgKnZ295
	 QH8y8tCPRnEO28v6m7PwNAERJq8+rbtEqU0xgbyZC0hbC+H2haFm3iWYOL+3mCc9DN
	 ckXayKTR5WSmaUwHXSpJzMKTk83gLFWFoljbRxGPMBXPwqWLG/IPhEGZQonE6PHuYg
	 8En6UdUZSy8Wa0bAZcoTE3zKiVijaqLBTmGzphdmn3YPaLItHJcBs9hXZ8eewLFzD3
	 C5ItdgJDTBV6LAiWBBc13SD1DyRa4wBzaLkw9qXiGssU/TBT+grM4K9dBylRWK/a2r
	 h/OlZUL1KdNVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EE0D10F4D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416337360.23142.18349084761456747770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555a80ad1a539c2025ad016c5bff21439da3e6eec55fe3ce278397facde04c6e
Date: Wed, 26 Nov 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764163373

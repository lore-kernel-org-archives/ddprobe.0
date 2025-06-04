Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331831F2BBB
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749057594; cv=none; b=HgPSMk0uMNqwus/lpMU4PBPRQYcFv7uki4ZNr/4Wqq5szosnKQq/xcRqW3J0kpmi0IF2YF0wEFQ5FOZnSpuFyu/Zzzoaxx1vHN0yi7jOZresTxreRaWhatJkKWPT9Q9GOcCXh3qBsMlPJVjjzvZskk3HE5D7E1KmJ4uQMJZ3E+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749057594; c=relaxed/simple;
	bh=uPnkwyLhSLxUzMgrwWvQ54gZwCGcTtcgC0q00Au4bqE=;
	h=To:Subject:From:Message-Id:Date; b=lqGFLRLinOxk+KXB3ghCqxQj0qDjXukNdgiymuYaXB7NOxHP42JSob25sWSjWfd1gnrzKxbBpE2bYIfF5bgC0vc4CyUIbiR2IvcoEuoKQ9PX/OpkQDSEy2d82Qpp7j7AX43gmXkpIGNLRptvQwQmSP7VChW1J4sfiT0tUo/WaQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/dFCVTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/dFCVTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20C0C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749057593;
	bh=uPnkwyLhSLxUzMgrwWvQ54gZwCGcTtcgC0q00Au4bqE=;
	h=To:Subject:From:Date:From;
	b=J/dFCVTdv5iITVV+RY10y2M5WHTrScuapq5rCJsNgVrFlsbjpQ/eCcK4krtXxIeQN
	 5zB8eeHIqdnDqiA++3iBqJ8J6V37g/eOE1NfmNNniW++KETMwZEEvo0JRaUDnB/6Ro
	 QGhRbEoys7RA5PjsshaxR+gleItKDiHjeDs5pMiLrKRjH2XLnd6olv6OY3Pzu7OJ6Z
	 Z0pyNeArwRgMtegpcLHJOAtBMhGKWidt8rcNaRHQ5Wl7POEzOoTxxK1Rg/CqSg3K6b
	 uSTyChhLCG9WJbIh40aoIvprJWG/sH5Jj9Qw+oFfNKmb+rIZj3VtODW5enrItQS4/B
	 j+/JvLH9EY3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A27C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905759358.26307.4122340828937853402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06174e2eb7e4fdaf757ce4f7bf48c222d2789e6f0285534e1f157c7f68a6c60d
Date: Wed, 04 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749057593

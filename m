Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8742E7394
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780118614; cv=none; b=QK1NRFrHGqF6hD4m7wc2AhfhQPXiCyPUeKeq9KAmmv6oejD+dbxy2ECtlFp9ZDbRIZNFUbfp2cpEY/uk2rdJkUX3zQu8IIDx1GMVxH9HQYEr4X/R20v/6PDwyMpzahRW2WR4BRvndroh0hUW/RCCJF3Vg5JHzU1S71fyBh/w4CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780118614; c=relaxed/simple;
	bh=AIPOt6HjyJ7jm22CoEjef9jk0N4kyXCdeEME14r4pak=;
	h=To:Subject:From:Message-Id:Date; b=K8HxURuNqZDNdLuVbcujKgIHdwHfvEYLL9poCGGnVBmI3jsRxU4LRItxFpNcqgVh+zKyS8l1S4bnPidXwZYsxe0I9LSPfE3P74XwxCOsJoXBDX5PB7SkbBaSt7FkQvx4Y0hKv2NtOkmL7kh6lk3JJ0RnKJT3NMNJV4D2TvDEnf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADxnjiRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADxnjiRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09F1C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780118613;
	bh=AIPOt6HjyJ7jm22CoEjef9jk0N4kyXCdeEME14r4pak=;
	h=To:Subject:From:Date:From;
	b=ADxnjiREtvYG1DplqVJvdNDGCtYJbTBx6OfmzTy5zZMpPQgGhWDf42gU5RMcK0Z31
	 UDzFQ8lmSEhQbKLHT678TQCnxApfQVPSPg5g+r2lPK9RAX39RU4ASB9c1WiQbCFxJL
	 26oV2wdOtN8iA0y3XSc3r3i1sNRMzD1bUEqdGB+TGR8vNUKeo+HdpXSD6uT3k/wR5Z
	 uk/OaIJLGToNwe2FFQbniNbxvJNfBSWASkiDDbYIHXYK0fDQ7MnbSRLm1/M0uTPQzc
	 sznBviNGDikZG2JEn/TK3blur2+zKIqE4ASi3mM0Xl+XcLt+hmTJe5NYEKgp0ZcfC1
	 za696v1j0sdUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D14CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011861368.5252.16498326662725793892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53b406af6a7ae7731c8214cbd2fb0bfe9ef1b1a5336529a1bda5982b79d302d
Date: Sat, 30 May 2026 05:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780118613

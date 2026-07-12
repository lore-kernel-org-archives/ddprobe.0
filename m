Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B16340410
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783888114; cv=none; b=mJuifbPeriX6yMq5/PL7yALsSONTz4rjnYK8+V0cVeKMGPpN5+BKPDmo+BXoekDlr8ENPfeS12HmFAC1DdFQ0ZYBQ4lbdsRrl/QahlaEIxUW3cJKbl6Z3uz4HhJznhUliS3klEBPAWA0SB80qh04jgIop46bSc7HuCUckAcXavY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783888114; c=relaxed/simple;
	bh=6wmeBAqd1oS6vLY8zIuq7vtAjoRso0UcpEjK9oIX/1g=;
	h=To:Subject:From:Message-Id:Date; b=j5G99VWvlxHYImHy6z0Q8CidpTG4QErxb82EH9IbbhQRbwYFMSRjRx0IFxo454LWMv6B6zVcFOav7F35CWitbIxHaTG3wPbTw407CthXNzSMSXDV4gKYNPnC6eFhYIS591NZuE6/FF70ULfBwaAwUwUi/ngsseo1HGc2CkzQQSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi+rp1ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi+rp1ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE046C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783888113;
	bh=6wmeBAqd1oS6vLY8zIuq7vtAjoRso0UcpEjK9oIX/1g=;
	h=To:Subject:From:Date:From;
	b=hi+rp1apFNYdw/h9CtqccpXcggOD6CBSOpw2CZh+SWG/nJwy/poVQCqZOXo4P0OUp
	 4vMa79qjfsyCadDYWVcinFzg+UMtoYqkxJYyIAQpgn9LNT1WUHmHE6bHE9rwzpAy6r
	 PWJ0H2ywiWRrA6Op+lmUG3kx17i/GtB3b0pr2tNqgocSEw44uYs0qYpcLCC3t1EsMg
	 Vg1iwr/5aNQuRdvQXC9/Il1kSgk4o93+QpsHEdzyL7qLmlq0atkgo24mgCe5NIth1p
	 1N7xFMhvWODJN05maua4NquJ7hA32yoCnCovsMRvztiFdxVFxBJucASSbiCWW4g/5H
	 bDrWASM73/+8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C5C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388811368.24517.5930023978254133059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81db3926cee6eae79c0ab25fce13ee2198428a0b5301ef7c1fc2d33eb156332f
Date: Sun, 12 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783888113

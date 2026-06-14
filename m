Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2723C4B63
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781448394; cv=none; b=gUsk6cz/ndT0/O1H4KW80lKSy/WaOuqc8uGZ5fKBQOitr93976sc+kL/HrtdGhBPcQ7aGsYxWceC3rXzvWL29M32fIwIBiAeKo0tD9fQ+TWeDqEEUL9hcCXm7uGLQ7FnAqnrgQEuApuuViHicZJQjCivCBUCwipS59owSqOvrzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781448394; c=relaxed/simple;
	bh=MwLzVJJlEmwXlHCy4Q6NCwgh7iVk27k2HUCw0w/hfdY=;
	h=To:Subject:From:Message-Id:Date; b=YTLcYdBVJnKnCSaOsqDaTS3twRZ1WTaU2d+GOVLzyWMNw72w5G2GEDbLxPrhRySQPu8uz1peX2Y6ZVapNvxZdMMWpyc2nrAsVhfpL9xQSAmfRw6FJsdyuX+IlQJhA9xECYdnNSq08PT+a5bSMFaPpxZh4dvNLO4a/rJIlegJ8UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNERtOz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNERtOz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC00C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781448393;
	bh=MwLzVJJlEmwXlHCy4Q6NCwgh7iVk27k2HUCw0w/hfdY=;
	h=To:Subject:From:Date:From;
	b=NNERtOz9xvkiP74J+vK8gVWB/8MlbLDnUM2Xlvx1PExQ1j8S8NDvRpUapMjUBJ4St
	 Mm/4jcJvVZFBvdJOATUlVzBdNDNzYUgJwvxS3TjtmFKvZtKH5U/GteMd4lzyIy7cbb
	 L62As51KwoJZP9TyUs/y2fWwkP1QVvmk3fKf4CQ87tS/aL7+vNYzWy3fZ3cKs655U/
	 xLKnQ5v0Dj9XdFp9JjHypByEmEwqf7QQi67FoFeyEvwAGHz6X9jSqevH90AMNapete
	 bq2twr2XWveAc4/isDsKB1sbzxAG4tlAS5AlbFeh0DihTNOxlziF1z7LFUF4J3JzFk
	 uTqNf4LVNlykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E66CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144839369.2370.7087569957456447074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3524c8d1a3327d8d78c55b63726cdf9accdff0bb19b6c63fe5639bf373d7079c
Date: Sun, 14 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781448393

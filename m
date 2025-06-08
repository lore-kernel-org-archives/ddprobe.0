Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C35C17741
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749391794; cv=none; b=tVsIfRYdQc/zeRhOSeqY6O4Wog3CqSFznrMVU00Mcrj1GXSZMbTWnUG/rSpbGt6tshNRURBSP1XexM4nlFjKQ53GRg4Bo1+dH08g2TQJzgJ5o9+LRW2kmCEP2MotLu+1X/0XambXvo+k/HdAoSRNewVU8TGrwXB6AjN7DdnBF1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749391794; c=relaxed/simple;
	bh=MhdJXXd2ggMJfHeaMc0IMGH/mvtsOuAtbcdOpfvtZn8=;
	h=To:Subject:From:Message-Id:Date; b=JI7yFCKH6TzN5MDMa+t1V8pNQoQeuMM4/qUhhW7+rMdsALgxR8WKZ9SIiTuU/L5qvQzUsIMq91iuUr6SSwXRSL5h4TU83aBePHt4RHgvh6GaUsM14ePxvt18s/R3qYQCpvUMuW08lT4IA3oiCgjk2jTN9dZwElLyLpn0gRxGaVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYKKuj/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYKKuj/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67C0C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749391793;
	bh=MhdJXXd2ggMJfHeaMc0IMGH/mvtsOuAtbcdOpfvtZn8=;
	h=To:Subject:From:Date:From;
	b=pYKKuj/HKSn7i5NS/CeqpmTV0OP6VG7hkPkrzcVaNdnmnk9CmVWhHXzhpq2EcciZx
	 nlECEZzJyw6s/p1j5g/pDf57uoR0piORsjyf7ZK5b+GdBwSZ2NGIgNTExt8BxVvERm
	 0OqKsMvCT/NNkopJ8qsbvOR3Rhidh+xuwa2mT1Tm22qaQYBUQo4n2mSdwYVYty/DHp
	 eQ8s4eCkIO6Pa9uhkwofoCa/Y368WDow12U/9C3+MThk7FUR6IpPhonukbFLfqXQBv
	 3ASubhh/ocQzmx6X0RlaOIENumvQDqyBj+W/aX8C2rFW9UGOgHAChLCNj3MBq0OK4B
	 5ahvP7DoWz14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD5C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939179357.15697.1165191171299670739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e16600f72c5f80335678becabe6862b165248ceff4b123eca7067a2e5ba7ed
Date: Sun, 08 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749391793

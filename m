Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D3A25D209
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759880394; cv=none; b=P6c1bNr+o98cr1iskPLwjfNaKPHwPMu1L0PDclrNhdA8T32eGEpe80D9z59d34awWlvj3YO5Kxv88jGJ9H6gCUloDg/uFFzOTwPawjHKcLSpaqeocsyi3ixESrTzr7dJz39ZCh0A3Kb9mKlWE2kgv3QJP1AUx/lXGeGGTTe9X+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759880394; c=relaxed/simple;
	bh=z6R7JaVPcDtH7rxIdn04KQ5qf+ErqivHux/MEGmWXao=;
	h=To:Subject:From:Message-Id:Date; b=RFK8BksQ13UGqdZnRA6jYruu3dA7Y+N6PaCLIQRuMnQKuYzOXkJzp2AbicirdsCiAJoHKjLFvqWxWIe191nlk+atPda5ongAZ3sNDn844vgGL4vwvAxi+DDuk2CPc42gXHFqVds1CcaasoCIfPU7vpj+ILs/gK1ic1ca8XxmGik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4RQZsx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4RQZsx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0741C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759880393;
	bh=z6R7JaVPcDtH7rxIdn04KQ5qf+ErqivHux/MEGmWXao=;
	h=To:Subject:From:Date:From;
	b=k4RQZsx+a8rtSCZIaDd8ELHNXtB2LyLmO2xZtPFsTng5s7aRsqoZONhUSswBVLOtV
	 ln//AqnnwGU15ZdNovL8s+MmGzuH73VFXb2mYw1fSL+9GkuJaRQYR0qMAWUpsq0Q/N
	 walKBcDpxxiXWYL8t55Ifo9lFh8xXqpgAC4cVKHuKEON8+cIQNd8v/EMljdApP4Y4K
	 5xxs4VoeLtz8gAf5G1gcQnLDaG8HUuaIUaGcE+5JrIcTt+T0p8+qRAvSqGGkaA/vQs
	 MfgJy7iq3+bPP7n1BQltMIm5JnXNI3nPB8ItfwMK/4wnfVx0Qa2NrOFyysheRpl9yD
	 T8g8d/78meY9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0C1CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988039361.1219.9523805489936934955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3f443603f7ce35acb2a40567681aec63670459881f662205f517159c34373c
Date: Tue, 07 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759880393

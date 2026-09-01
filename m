Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383AC4CCDC2
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788237034; cv=none; b=TgWBI6dXqx4yPt8GoX59K+Jmdw2HO2ZoKVVmocAMeKACdLmiwpzQcWd9PJ7kVn127yFJy1GYi9RcmXQwuMSwpIpYtzePltp/e7xph1VxmiO4IE+td0ZgCMCxGoideuH/LnFiWKh42rhxBn0UuZRxOJrkRIO/9CPzzgCFGMWYGNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788237034; c=relaxed/simple;
	bh=eq9ixc0D5KsbiR0Sl2R6hbr5Q4CorfchayqHYwT2idQ=;
	h=To:Subject:From:Message-Id:Date; b=NjqTYZqSOOz8n76mYvzdSKWDQLtqBE8J5sPUnUea0xISiVJRCx9pheTgMT5D0GeTGo+x1YKgWGvRbUXbUfrenuSSMJIC/RJ1TlkWvaRjjH7px75MrTclmshSU9cQlLqU6LhwmhBru0wCVCQFuY33ZpQ13FbT2b/dqpXYnLZKSSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1/zRYw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1/zRYw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D247CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788237033;
	bh=eq9ixc0D5KsbiR0Sl2R6hbr5Q4CorfchayqHYwT2idQ=;
	h=To:Subject:From:Date:From;
	b=r1/zRYw3UMLrWRBGvvGFOzE+oVu3z1jnlVFruyHTkdQj4Iu8otkeTnmmbFLU8O9Ti
	 vXMApvtDA5lErbjoN5VIpPYCtrkj43Y23VQ37aftQguotjiXpcaC25MeEPxP3YWALs
	 yxHx96Q6khy9LQEoTBorjThJ0pOcBXWpv2ZuySFkPCVCZ4JxSoMAOzMAxUHAv/PI2I
	 NIkus3kykUmCKMcgPpgYh9GwxTA3MHhJMfHMprZTE3yp0oMWW5PizLXyme+Bnyc8Qz
	 YzOQk2pClviiX0kRh7WCRiu1YpI8yDKxNucmAl6JQJHVL8xFa/hp42ivJVUpo2g995
	 bJ6nhdCTFKEhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF44C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823703369.28575.15555848091396323711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d0efef67089c97f20e53c5f116f460730cf6f1354d2286cd4483da8193d80e
Date: Tue, 01 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788237033

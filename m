Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C85D4A07
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777413454; cv=none; b=ICfpsOE8gUW3AScB4uo6PCus9cMZ5iZwCnHnLI4kXa/2VerahYUO3vx4g01EKutRUJWV1wgIQazS6ftaFm/qh9l/fBzeJmchbx7WYEnNQ8s2OtvnzJ9bWJp/kvTV6OPrbWjTMnHu+PfcWncL2knfe42j7HvGwPVab7wwi3QoNC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777413454; c=relaxed/simple;
	bh=0zLkizJvcDU/iTnq4c05nwibUoMAXWDs+NcK/xmHSKM=;
	h=To:Subject:From:Message-Id:Date; b=MviCIWOuFrSIqS7F8Ah8XrRv/+RM7L6MMOAi9NcUCTBaCFSj8AME7qGESQvkizXNFE3mOvz7jmeVDHPSeEVzMGcimD16xMJJdgIlWf4ULtZ2X98KVlU1bX99Tua5I+kiUpPPLkhSkkNsonGmXYo6ZiqbHOwccxz+AQhTTykm1RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhD0fm/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhD0fm/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80E1C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777413453;
	bh=0zLkizJvcDU/iTnq4c05nwibUoMAXWDs+NcK/xmHSKM=;
	h=To:Subject:From:Date:From;
	b=QhD0fm/F8J/NUw4I2HjWv2NItIfTbU1iDTgLZLldRjdoqn5CMVT0skhkukpC6UN4L
	 N+oEY5Pi5AsQNSnIf98w5TQf/X+9EhLHQlFj8BxgKdu5r00+BT9at0S/42/MHoaz5A
	 5t06t5qx9jcgD8zQN2MYN1LFve78vVPFCm0sbteQALR74xN74RQ+cJxIT3Fi2osemi
	 vTkqobPdwCcplARsPM+65yIZtrz2GIjE8RYgTVFTf/E5QXWo7ia4TyZolAWh1MGkNi
	 H0ACn0oDqyf6qQsNOw94KOru6CAX+Kn6xPenT732nWwBrGE88YSvFaoc2oXtf89/qh
	 lvv9gH+PlGlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9457FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741345368.27144.10378465545799537293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6893253ec57651280e634767e80b95b90731111231df5b6b6bfc6411c100e4
Date: Tue, 28 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777413453

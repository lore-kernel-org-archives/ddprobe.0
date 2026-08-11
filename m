Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DD036F8E6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786426234; cv=none; b=e/TUYJUbItYE/W8DCyK93KykKCd5TUNd/cs04nTAa290Dw8ulWzDE91XZBuT0QHbHNcqF+TMKK5d4jGUhQ/4p4kX9G0BrQ0MzsBZKnFRtz2jgpYeFpeyfSbqKXdOqoOP4X8dORP1ZsvxktAQAZX+vvxNC5Cq3gfI+Xgn47ml3do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786426234; c=relaxed/simple;
	bh=VA6KKMQeewcmlaPs7kTVmQAELZX+aUgqAVhUr7unnSY=;
	h=To:Subject:From:Message-Id:Date; b=cUuker7Xzfd1F3STEQ0+VeTrBdOTUKIcKLuZtrUPnacDPC57FG8SYI1dN7q37Iz/Bnrf5D4Hgsfq+iLZ5aXguMpGQpVJ/LV4Ym2bkb/qdpz/nJDMUC3wfONPdie7Boxp9fTPKq3qijJPPSyKC8JqFDi0ETqxRKgvBVjSsjYG5Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn9UG3ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn9UG3ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA63CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786426233;
	bh=VA6KKMQeewcmlaPs7kTVmQAELZX+aUgqAVhUr7unnSY=;
	h=To:Subject:From:Date:From;
	b=rn9UG3eetAi6Eh/efhxxKXoYCRvwqobkvKBpReiCmc0gnE6ynMDunMCO/UWfpux7r
	 whmGszV1a1m/bPhyd+bo8Db90lxlWNkw6rkZl7qwze5QOYPlR4ooEDNSceyH7lWweg
	 kuLI8iQawgEuu3CKCiMnIJGJZPGqt7VbJAW44ereeTU3uv3Vu+TD2U1tgmxLcBjV3g
	 m7oRu1JVq9sURgxPSs5rrPo3yft19UxxgOUR5gp7iS5MrO/X5nlIn8GYNxAWKCFBsz
	 USMUNSvwTqjQA9DZSRroDgVLyr6hiwo3zxB95JA8WIMasOzEbvHmDQXBSRur6wkL9C
	 4bwCHUj8PCkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A40C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642623367.27054.11353208608699202771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58cecfc2c7df7fdb96c87e9976a343c7ba1623f77cab2f3e4a39701e87e7021
Date: Tue, 11 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786426233

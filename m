Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D193A1C5
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711973897; cv=none; b=ECJXL4wW40j3FK6dBxgLTTZo9z7HB/iR2JU0naCbnWrVSQdKVBGiOL+6HohGfIRsD9cz1UsKEzxMtwna56igjDklGy8Mwb9bY4bnxNZXBLuS51nMGcWS89jwzqodnzSH8sqnYv0MeOYHFqYB/IxlRBHImthVTJUbWulY1dOtNhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711973897; c=relaxed/simple;
	bh=+WcoSS+hliB7YUsMVjVgzcEVrMA+rExE/zBKRCnK6lI=;
	h=To:Subject:From:Message-Id:Date; b=FnJlTBzI2w0bjnHNStrEL5deBU8oapsFD2O0mK3rLxdUbLZYHD6v8ffLY78nhe/OWsEvu+HNRW7QAKqB8UpTYmVScS8Jj8yoPcDgEacBPqRMD1wqjRyWI2GaQBc6WzAndcI+mYefcUjdRLjeIbKHTfclCYenepFm0+IDmtJPCYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLfKyThE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLfKyThE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF50C43390
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711973896;
	bh=+WcoSS+hliB7YUsMVjVgzcEVrMA+rExE/zBKRCnK6lI=;
	h=To:Subject:From:Date:From;
	b=jLfKyThEgtURr25CpbplqPSZDupi/3cwAusDcyIjSSxvL1VtrckQBuvIse2e0jX2S
	 qqOziTaCylJPjt07dRVqFCAHisubbA2S3Q0iel2ysHWLtWhQQknZ9ccN18a5B5b+U4
	 xXErVgYPFzGM7zb9KqHJBTGrnngR1vYBhUDy7AWYa9qdEdDMz3x6ic3PX3v7DRu+UV
	 IofjNMZ9rveAkqkwau8xnSyy0fymKPVopR3Jy/i8RbocJEaGOFMWMcLpZdgpNyg0Z2
	 bxvZx/OUduKPWgGsSyjcm1w6zZ9Y4gUgEKt+ZiiVpI7kZe25AOS2oP1PI+0ywGEtR6
	 FwfQf3DFfSFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69EC8CD1292
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171197389642.21413.13813686829824733231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb5f418d51665b548d77b99d325efdcb7f0ed902518c87e56ab5ff9143a5fba
Date: Mon, 01 Apr 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711973896

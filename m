Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30CD563FD8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788881436; cv=none; b=GTlzkdFV0pxFBkE/BBR+vzHnP0pKslaXGA0MFmONjKZiQDbDJYApcmLpQ8xY5ZUxuPPxGRzVKvwuCwWTtieg0/u/z3i8ZhQ6kVEvdKuRwOtIHRK6mXtc7mT/mh2jFSvY7AI7x0tRFnV5+jrFsRVm14Mg8GS4MLniLp9YzuK+VxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788881436; c=relaxed/simple;
	bh=g6jjIUyuhWl2Yc0c670vxP2LQjFuLuRP6i4YX4A1knc=;
	h=To:Subject:From:Message-Id:Date; b=lsfVFYzNa4C/y8g88azzbLAzWst8+i4irdgiv51rJfv7RWIlwne9G0Paoy+CJd6VgFX3a1HkzfL1WXs/nSTqtDobJrda9riHw8TwOYrebm6qVJwD6wluh2z2w4fps3gorEPdZKyv6oiklyza0YlpUGsNZ0nVcT3BRWf0G2kys14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6q9gWMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6q9gWMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D401EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788881433;
	bh=g6jjIUyuhWl2Yc0c670vxP2LQjFuLuRP6i4YX4A1knc=;
	h=To:Subject:From:Date:From;
	b=o6q9gWMZlAYP6iv8GjjeZduu12mHRA+rQUx5TRt0Rbm9Y6nC+irMdpLFf81OiwhU7
	 NaL5Wr+W+LIZNeyeRoxM3bTga8yBm+CJC67B9ZutdpwJXLZuuEVmHhVa+pFLZItPVK
	 BHjPUX8H2hGL9cBKmzA2D5opbZb/NIpUO+noFSfcWQF/j8SWBRh5pTs2Zmf6gyOTiz
	 r69d2/mcggn9yzZC4ldlWTcz1gx9JqeowZxkRAZIsTIpz4hltDpfJdDSNMDqFNxivG
	 Zsa+bezl+A1n6mHiMXmngs2YZsRQRlcHNvmSlb4eSiZmKQ/ncxS0RPQ6hsq4Bu2M40
	 raoTDRsfOywsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF358C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888143370.9718.2946686828930400005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537633c39df21e80233d99607bff7c4f26bf5d5d43d011c8dca1e4fc899ef596
Date: Tue, 08 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788881433

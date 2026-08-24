Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3506033260B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787539834; cv=none; b=TaFgNs8YfWA9+rLHD3+8MksM4+DykDVTDuOSBB+tDNhvCt5U/yY7LxAr5nNtXpJKAuLiD6jegHT83MA1psTP/jEVBCuxCuB2IdL8LACsLVn8jz988B6oZzEhM6K8wOTb6GMYouq88Y4cUAoT/RD3EtMcnu0PCn2YfNOcos9vRNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787539834; c=relaxed/simple;
	bh=thvwhRx3SzOvzZcfZUo6sBB3zefhj+NGMHjI/9NxjJE=;
	h=To:Subject:From:Message-Id:Date; b=PB25ex66aDIkC+3K9l/hv3dn3SgGAY2JvybBFBm/tY66FH9UOg2RvLxoSTSfepFVgIMJbKIQBjM+/KIeh9PEc8bOksGFxe/AzWA/rp9vNst1eUffNa8MdqRIbUA7qZBMLQpPqyJRR8NnNtSMJ7/Vdf2PsfFVb2epWZg65OKmSro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5weOWtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5weOWtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D875FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787539833;
	bh=thvwhRx3SzOvzZcfZUo6sBB3zefhj+NGMHjI/9NxjJE=;
	h=To:Subject:From:Date:From;
	b=U5weOWtz3zZBTnVhlcqiMbC0a5pz5vDchKWdjY+DnBspJiiypUUcMxUOK4CspIaI7
	 HWPq7Eso5IT4XaO5WPoHcUGOAt6HDdv7oRCPKHpPO8hREZldzSrkg0v7zOkWUeBSRU
	 hQNTI/z7Aayow55jfldg/u38L7a1OT6nhuKELL3duBv6VXR8EpSW4TUaGjxBVzIwYt
	 6Woxu42nyN9JYk5cuDnq+BtUPXEF5yzAzjZ8ax/k+FGN9u6MokYwuzINNO0QQNHctF
	 Gy8lU8MsPoFPecPbThZNl0x/cOa1GSgw6rgYEHEN2JoksbOhwfqfIYxmpbPcdWLcca
	 wmkG89vjyPJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B035FC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753983368.7342.1114984873718064956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380f8b1f022003fc3fee8465b78576b8c8bc9c0528e82843fc9a46cd6445ef14
Date: Mon, 24 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787539833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1E3AD24
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770152634; cv=none; b=tGtE8iOFgLRSP5SSzWFQySPL92zLWF0h7RCKf4/cS5JjNNPX5B4nIqP9IET2O/Y81vMVovg0hq1rbtVS1s/NvLTkIOM6LMEvv/PznuUecoH6VMeLI162rF/75M5kxDPc6X2wZJ2FmqNXi386OLX2NwKk/TprmBu1eoIXha/oF6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770152634; c=relaxed/simple;
	bh=g6erbEgNkAyQb99w99urfCBvr4l9NZG3ht0OOFQKPOc=;
	h=To:Subject:From:Message-Id:Date; b=g7Nn+VyKwXCDqlxDVocmFIi6Bly2AjFgvjqN43/67tGIrynoBS9ZR9jHUNSAhGCuZMxvbNySgPZekrGV0DwUPuznpU18N1keffXUlkwkQFe3l4+YHlGHEv9y2RpIeEt2AhNScQcud52Vh+8WIlu6cn/qNBW7pklq9Q+GsFr153k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5GyT1Tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5GyT1Tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9988C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770152633;
	bh=g6erbEgNkAyQb99w99urfCBvr4l9NZG3ht0OOFQKPOc=;
	h=To:Subject:From:Date:From;
	b=q5GyT1Tf8yGV2qxI8s6/UCr5qI+axRfEq0nm1640aX7XNOAvdnoYs7z7ApNdwQvyQ
	 casa5kAV+QU6zCIFwNv8MfzfDsdOsPnehnsRk8MxylmXFBMyRHybOJsrkYm7TrpK5B
	 BDnNfUdlhxss3CCRtrV26x4bElUO9AKYTPfH2dZI535y/sUOHQAiNFWmBq45pr/9W7
	 QfGnerEE9ZJSLCZKapqtsOZx9VfZOE1CMOZls3I4wKRGyee3AEjJeH/Dagg6tI1m2o
	 tCaez4dCcRBC6XJicR5OZftAGxSQ+7vfThvFD9K+ckdEy9pKxsMYNUCdjemv/u/l6J
	 PpX0ImW7sLDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A861BE8B363
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015263365.2836.12209550419078025636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb09bdb46e7c73f09a2b99a4da55e41530fed82d269f27dfda0594870eb49b9a
Date: Tue, 03 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770152633

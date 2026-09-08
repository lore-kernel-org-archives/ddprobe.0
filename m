Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C5545D8E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788873034; cv=none; b=lXrkgqdCiYqKZfn40iVsAYu1y7SZ/sMB70486O+C1LRVnQx2oASpiKvvIPHdyJd/XDD5UlEeDRAnmzUqvzV6YBqGMdonWCq3xhgtciu0K0DH4HIftOHrZrNRUOooclUckZcjCrxCaUooAjGat3YIqhXwRPMg0jVwr1g9TAGRF1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788873034; c=relaxed/simple;
	bh=uexqtTDzTFEosQyyt5MoELDY5iXxOAE6EDtbReDyvU8=;
	h=To:Subject:From:Message-Id:Date; b=V6OJkdJhfZ45zMtsWBUAfcW3Gu1kG2EJYJRHO9uEGxU/kzw+XudO3Z5122svgJAffKkSOcFChEF1cUyLBZY7xtIuHstyhOQyf6Jei+IQp0n3qyIqB8BP+/D/DY1wcqmu3ulE596w0jPyJD28JaDTnUW38JKDVEMEGGmQeZUUQJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGBuPXNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGBuPXNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4F7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788873033;
	bh=uexqtTDzTFEosQyyt5MoELDY5iXxOAE6EDtbReDyvU8=;
	h=To:Subject:From:Date:From;
	b=iGBuPXNjenp3cuLs8EiQBV/CCON8MizknMraT1n8kGoMABkYNCr42rKQujBVxPqgi
	 h4bIx+SDWKy5V8hfR06sRJsl+zkKTM4xPJ5vf+X+q4axnktdTbl5VS8jHn7r81gh21
	 sIts+NaUkQ9MjkcQQbnotI0fZe5VA9uzj4Z8xxvpu6/EvCZe662Sp1KbMpIjOK4tXN
	 UKg3egMiY6uIJJWXS0VINZ6hDphFHl/N4lZs8EQohqFh0r4IRMmoVfAqQsfzkb1qUr
	 vBWB4nKmJnUfKistoGOBm/zu0n6mYti4yWLG0M5/UwzRlZrC76vjkRQ1tRpuU15T4t
	 f9a6R9GHPRnbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA55C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887303369.6625.8715930602054105767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92c21023a805bbae358985a8c0acb7bcb0ebe673f10efe31d6cd54238d7ea94
Date: Tue, 08 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788873033

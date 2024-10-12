Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFA21B977
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728763554; cv=none; b=IDmxLy+e8sZKcIrYClEL7UmHa+x5danmmEaiqMNKradxzfnwqZP7tu9FLv0FPK0PEacTHT3mLY9+5bpXEIKAUQHJvapEllFa7oPhzxPrWDDbFoA3VB07wgOW+fl8b5HK+SqwB/WcVTXkGfD6CkDYEyk00thVtlmsMj9oOn+rTN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728763554; c=relaxed/simple;
	bh=ghZqtv80YJX6wt/KVw9ju0vuy5yjGzQyBG7rNoylR/g=;
	h=To:Subject:From:Message-Id:Date; b=ASkSOaSjL4oAfUO4HuWKM5zR5/AZ5hn0UX2RpRWE1UUeLB0rW09xe28q3O9ZDryIdGqdLLIt4BmDEvWZbPTMdbMVCojUBbySmuQI7f6g155EwFwh7qFPFw6SQlGO35SRnnJJUQ03vVwcV1/NE1IdkoGa+S8CcXET7IKSc0YgK70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ0l0Ndh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ0l0Ndh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1FFC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728763553;
	bh=ghZqtv80YJX6wt/KVw9ju0vuy5yjGzQyBG7rNoylR/g=;
	h=To:Subject:From:Date:From;
	b=hJ0l0Ndhc7NQsWBZfYM9EsgjnJ3+l7ZbPD7L4la5ufTAB6C11I3rNlkhG2kroyMT6
	 IB6L0yD0XEa5yfD4hdU4FzJ3eg5Va9J6Sky+rCIMd8JLu8jMbB6ii75jtKsE+ETWaT
	 XVhxqCWG5PI9FTz2M65PPVscdFydK6s7IFzf0rofrQ+NdUO91BULIchTkG8y+bXVA+
	 vcnSarXqr1AE1iyN2gC/b4dIqXHdhrrmhmJ1VfltHBuv1k3H8IONuLwW3q/eQkN/ts
	 aaCyEJXVx+k0tnSpL6qvdY/9Xwkj7kDvlEirWXc+SJXVSL46FdoNnv89FaPFNZ65gs
	 rB++gWkpxOXJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABECF2578
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876355359.24217.646213650587882801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f2bd1b883fbf86ee1d444c0824a8bab7d843dfedfa626099d9639565c65bb9
Date: Sat, 12 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728763553

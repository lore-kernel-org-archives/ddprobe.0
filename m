Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FB2331EDF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791346234; cv=none; b=RnnlwYT6sFnlja/bgkRUtl66TYpHrCh7jqj103EaO8THox8X6oNuVQY59yHBnTz5HS6+btKPVbcTwvSBdzCqahOit565Pf3nSDrfIfcqrWs2gvtJ1uR8f17AnGB+/en+XgUH6XdsZr8oYQnLuSHyD4MGOxyD1k7nVWMOiNV+pFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791346234; c=relaxed/simple;
	bh=AZaFMUB3yuwOsMpTCftIcFAk7U4xWPAtKdUPWN7PGMY=;
	h=To:Subject:From:Message-Id:Date; b=VnTaZEngYxIIcSweSpFUMy/8zy8RiX+ULYaJxGg2AziStQrQHvSGBRU5tDWJQGtTDsIDwTb7r1A01fCIO+0Av19UCmZcAghoWHmL2sGWIPhuFuST4UyfFre2wQv2O82y4KBMUrVG5r4wTEgXbSL4QiouHYPEDJ6XRbJbjPvkBEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEk8OwmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEk8OwmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D434AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791346233;
	bh=AZaFMUB3yuwOsMpTCftIcFAk7U4xWPAtKdUPWN7PGMY=;
	h=To:Subject:From:Date:From;
	b=FEk8OwmTChObA0hwsNfv8mrCNyspn6JcDgTW3z8N+zQzEykZ/JW2dL2ErVwXClYW3
	 cfp1RCgH6+SitWlhfMd0FBr4ixgUuB5n3EO6c5EOwlgTUKdCzUQnZ59NlbiSJr4uw/
	 DRShTCRVf7l1Pn8t4228mtNyHyRcSm36AmppmHlHSiS1oqzJ/hrwGPN3WRHxQRNLUG
	 oRFmSDJnBVxDrEgpiDBj5OfYMN23igfiaHyw3jPjqDxbYIRNOCs+q66imdeXZBwXQw
	 8bl34byyrl4ycHxdl7z5+NuoLBcxrRgaZ7nDIDd8GV9gk0n0ysYW3LRRyAJEKjZcCF
	 VAIVKYy28SqHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB77CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134623368.31564.15964883177787472472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99eb4c8f79bddc8d87700863561aabafcbef56ecdb4bac35e012eaea398f2880
Date: Wed, 07 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791346233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312853955C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791580234; cv=none; b=VeODD6rTHT407BE9TRtrmHqhAISq1mVSIdnt2eQZvCiNO9gCvNnQr3F4d2I4feVIsybI2yysyoqFxRYDdZdTQqmitm+4j0kYTORAd4habxYg+5pokD5yNcD1dxYkkFKRaB0cmVMGZYNVXyRkMS9Q80pc/8Dku0utBVWfKbamPZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791580234; c=relaxed/simple;
	bh=+Iri/+Pw8uFojKi3B+Pu88sA8nffRLXA6VdKdr2Lio8=;
	h=To:Subject:From:Message-Id:Date; b=adJ7e2uHfYwbmLlKuEvMm97LMH3AYtDCjdIDl+JGpmqEl+e2bLxEak6VIdap0lIPV701CIbrIyV+QBnIJ+AU/fM4z/JS9Z0KavyAsaSbyPHFUtSrJCRwOYBLevliRlt4aGgPI5c6cYW75mRScOHP2rWho3fHWr5f0j/DndwzUHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2YpC7X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2YpC7X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C84C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791580233;
	bh=+Iri/+Pw8uFojKi3B+Pu88sA8nffRLXA6VdKdr2Lio8=;
	h=To:Subject:From:Date:From;
	b=g2YpC7X9NGPskNBd5ePBxqr1EMepEXqhKP2WtsR+E3EGJM1nobuxMcNaPKyGAGyve
	 yctc97q7XEm9p+XBNfJ+bwiNhuB0G8NM2fQ1s30MMWxS4z1sD7O/KOiP4lnILUwkGG
	 mNeEBxERvbHAToATMCJKjypaKva/6Krc5Wyl6/QNTqYa3cgylenQVgW/8+nQxRjnVV
	 OaFabGWyACLMBDVQq06QzgKHMW2XGGSTt5o/9xQs7pRSece7Y+tF9MT5f5mXWN36TL
	 ogtBkjdRarKmtvrB5K4er6pkYD0c87orpiUgVxbByJZGpncfp6QAD/DMVRIRITk77P
	 rulLfyjKXBj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8DBCA9EBE
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158023369.26280.7498339767092350636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d382f431bdc48de80d3628e8bd8cf689891b15953b8b4632918218f61e4a856a
Date: Fri, 09 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791580233

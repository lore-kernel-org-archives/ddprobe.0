Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20E1D8E01
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756604994; cv=none; b=ewYOjleJLX97SIDok08B/5/UUfLNFe1O8m20/+si4vgeKCd+ryGME7GRqvrFsjnyVmKgWpYv+/X7KkuF4TVsxDWzqR7atdREnsE4UkiDUmAF8TScnA83wxzkHIkS++7FDl12OAT7FHLUU1ERsvNwl2WJHL09qhCXIz/cjYz39hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756604994; c=relaxed/simple;
	bh=8LfOGn0Ulc/+3Pce6ecsFlRdPIvjnXAeIRj/Ve097zE=;
	h=To:Subject:From:Message-Id:Date; b=Kigg7vjjMJn2lQU6UanWe8+7LY6VAIfV2YNtstUyXZIw5F/bPTuiLshhlcZa4oyBidH8NdI1wID2c24LF4jFR88LM+HNdrxe60iWYDO8PU1+elwV86sryhaLKHrwNxZJuIgm6fNIRTuIMHz4iBmZ5k9YMlZdDmT2GaOL6N4ZKGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3e0YrU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3e0YrU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB1DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756604993;
	bh=8LfOGn0Ulc/+3Pce6ecsFlRdPIvjnXAeIRj/Ve097zE=;
	h=To:Subject:From:Date:From;
	b=e3e0YrU1/37gtrMvOPTgix6M63YuevIwH0g7Ld+BQu3uZT4fVCZRgi7UjfH4JeBq3
	 T3KVqtKXiVcsN9G8SAFHBAHeOYxn1dJhZJrGMlrSHPgn4STgaEHav8vpwf82EsspPs
	 WfbyC11lcfpcHAhxE2c7Bx2/mysJ2A/CY+y2A7IQzgqPQ84IODUPooSYIQoEnPOGdu
	 Z5Y92aJ+JsT/3IBCG9D9EngF6rkYo5q8VsM3VDIF7IO2XnUcOcu2bwEZfH6k4VR7Jz
	 sTlfxJMWwNw6hDDzkNuCotkZ6XI23H6vfx9uLmG4I8WHMblLBoUQH3xx+LmKYpgtEb
	 CvQvCyFwTzWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1DCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660499357.27399.3472793662559559283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93312c71003d0db6a0671c1ded08a56520be091854b5e5fe5aeb5523025683db
Date: Sun, 31 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756604993

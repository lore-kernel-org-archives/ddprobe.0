Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B70746B5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776041254; cv=none; b=FVU4tIulM0gmA3y9CPLDaWVO3Mw//onFyUmL6ioZMIjJ2v1jErLkwpUwfWpsSmg2P6HnF8YvlDKESVE2ZL/C8lBkhd3NqIGp122aknHSGKjPbHRwybANZVRclScoavJrxtu6mimL6YKWBWPMl3W8CG9+KhGrLLbIfTw5T2KE3XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776041254; c=relaxed/simple;
	bh=k2Jvertv+DyzuOyE+eaSQA2xBG1aQz2jjglaBmV9Gog=;
	h=To:Subject:From:Message-Id:Date; b=j2wbzGO3TB5Tz3gYGmSAfYwSZ/U3EfWeDuD/C4WwEXNsa8dXSKYITieo0yJuaTeE5PLK4MeLgX7/hjIKthVgUaZldRe/BLk3Cxl9zfUR75YFw0haVgdLZw4jVTpiwEnNEPvDf3k3GUEfRzcGc7/XRUuEisF7dcnClxdud9LgODo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdOXErnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdOXErnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1678C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776041253;
	bh=k2Jvertv+DyzuOyE+eaSQA2xBG1aQz2jjglaBmV9Gog=;
	h=To:Subject:From:Date:From;
	b=OdOXErnLI6APKDvMvR+KUbgL2Rn9Xfk/jPDEe2AXa2gAF1Fuz7ZHRZsYd4ZczeA5Y
	 iq/03gu/dK7AQrcv3WpSgKzrvJh5btaAKN1eRPYIsF4uo3SmwEuMcSsgghvHRBs/Vq
	 gP9EyLCThpWk4O5143PkjWmvNvP65X6KLR/HCsSGl1ayL8hyUjBkUw1tWC+HeqOBpM
	 k5N+1PAXmJtWx3a+5rrednculsy4Mr/TWK0po88CG1ktfH7o3w6NUlEgfUyebPvvQS
	 O7lHr7/gLBu9jMKJ8u5k6ePUOM6xwJCoDPLyeGTI+NZnS8Sq6vPZVTfBFadQaIh3qK
	 h6mWFY8ImAuhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7E9E9380A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604125368.5953.15931049429126299451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4677466d4ab1b590f87a24a986234afd00efe555d3f90b650f0ce87539b64dc
Date: Mon, 13 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776041253

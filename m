Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E7349CF53
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788287434; cv=none; b=fZVAJzaXdwNCl+nrZoNe5jop1Xttd+K+IFO75zQRxxGuhDcW9mXJMCs5P4sy2AN0YWobLkRVY3yOvDhPCY4WgFnD91kTpeLwyvJox/yN08XsRWHVxlXGnWMt/mzG3zhFAJNQyS2U+esCp81DnfJnNb+yJ1goaQS4kY0wnpMUxrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788287434; c=relaxed/simple;
	bh=VG1XZbnKKqcI/r0LFEjAY8oXuK1cajaQbnQA//LgFAw=;
	h=To:Subject:From:Message-Id:Date; b=I9ojID8Qkau1TBcPDtMYKUmH1Sk0jL+Ashe8raXMc1rqTzO8mbPCwhgdOK9nI5Eddh1A5b/3zwzx540SKl8Pz7q0Y3oNCJjpZD+RlXQ48uLq2zNHO4fx3dJJ+C2ARUu7H/daIAxZ5pacr6+SXYvrIy6cYfjevUI3jZd7+mU0rio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRRzeRe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRRzeRe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF450C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788287433;
	bh=VG1XZbnKKqcI/r0LFEjAY8oXuK1cajaQbnQA//LgFAw=;
	h=To:Subject:From:Date:From;
	b=oRRzeRe8ny376SKffEZUYj2+i15NXNrHcLbC7NnXSONijxv8QFm0c50Uds1eJikMn
	 L7JQQyyUsMWvV4APRwvQJvAqOrAGU2CS3criftEjdITD+V8+uEvmDio0rCTiRyTyZQ
	 Gisac+YwqlywKIXj1+3uF8EpZ19shuglTttDGmyi9VB7obYGx1SuAu0PiwcRy46f56
	 REcXoWrGIJKzP13ccNMvBtnDqBa02y4DJdtrjI34aChr5pmtjqBWBdv0MBJN5gQZl9
	 TwuC6vm/58AIR/+1FVCVMNYY/d4gmQZi/TX09rilUhEpSqj14sulkDGOYXmEwNVfox
	 k189tmMJ9Y8zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA34C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828743369.1766.12114570394556926779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b6758071c08804b8ec517eb44a833f134d2b03f7f14e8eb158f7054ebdd0f1
Date: Tue, 01 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788287433

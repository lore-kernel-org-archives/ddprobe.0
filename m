Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A45131E2D
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743488994; cv=none; b=uW72g3aCzF/qWgTUiNHkcEYr5A7SA7YiEcWx0qYsSvSCJRVf2EyiLv8wdAR8hDgCqZKDJhWiOt5gpkTjyPqDkZO+Z/1yPflEXJPbw/TLVNGRb7s7LZ3tVaHdn1Rn5N9e6WbZHrYX1dS8JPzWhb8BoBAHTTb2fFJ6pj+9d1B++7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743488994; c=relaxed/simple;
	bh=m6LHTOS764JFXZTmfbVlM8cqi9ooxS2SqbYMCAG4xlc=;
	h=To:Subject:From:Message-Id:Date; b=HIa7V6suFNh5VdsVJfYA0sojwolhzN6V5S/7F01kVTIyMmuUQxFU+NaXszGUfediq6AK6CD0yaCatwku6nlzcNOt05MBA78O2i4j7LL1MutjuOcP0yvt6VI88ds2x7eIWrefDZ1A4XczXen/3ANLULA0nQPhAIYjqc0J6J8SYaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgAYj3Fm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgAYj3Fm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E51C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743488993;
	bh=m6LHTOS764JFXZTmfbVlM8cqi9ooxS2SqbYMCAG4xlc=;
	h=To:Subject:From:Date:From;
	b=ZgAYj3FmMGXG9Its2EZOtE9yc+7U2YtG3W9rzp3g/Rsq+WKpkJBBGDNp0ZoI5Eg3S
	 Nu3hMjkl1IUc/FGM6LPtznl/uHBK9/MX9Oxu0Sf52qAk4UfZL1frh9VwuaD+PUZoMd
	 SF82UXBaOdht9FCJpQnB1/CE92RMwH4X6Th2UCq6B2r4PgYtPJ9VbOAGPBEqoIgM5o
	 WQWMLC+/oxGZH7D0c8yO63GBruYKjN0ee5oBXKOlt6foKCMr9GIWbC6i2vLu7WeyXU
	 gFtrUOKD5oEAHLpjwDQ/wkoQYe5cciewjozpc2fiOu1W5bMZbAvN0YN9D/r4W1GUju
	 pYGLO8fb9mmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9321C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348899364.5090.16745436351379238579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fee7831ae86c0ed625eaff569f2e69937d6e9016f66e0de8f77b2769103172a
Date: Tue, 01 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743488993

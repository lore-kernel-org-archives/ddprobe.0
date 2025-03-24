Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437881D63D3
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742848794; cv=none; b=dcjFfvY4jPOEfNr7Oqcy+ensOdN/9hd8+G/aqRZfMnVfwzNVUsezuPTmRnQ7CY9VSBBy6PInmi6YfW4oC0DhGvGcyEqasiQmcgxzFoTxLNYAjLgjnxGAwyawJUTylPbqDRNOp7sBBhJ6wvGINEp6Prc7FtOnpHuMGsHupGqlR+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742848794; c=relaxed/simple;
	bh=daml5BS/lqtuCO0qYjFvseK+ga65fl4C4s3frsR46Ms=;
	h=To:Subject:From:Message-Id:Date; b=dlaImgmTZUq+VP6fg0zcw6uA/cY1KSjUu9Zrs6AtTjYBNdoH5zFlvRT+X9BP+378ceBSkTRVWKUXj1DS4LkMoElpC3tpI+4kDI26+wxs9qNlMmVQqVteWVJfnWIv8iQN9selGOTjYlZ4WYYW3XYBdQ+agAQmjZGzb7DkcrWA89c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u44ERHoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u44ERHoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A37C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742848793;
	bh=daml5BS/lqtuCO0qYjFvseK+ga65fl4C4s3frsR46Ms=;
	h=To:Subject:From:Date:From;
	b=u44ERHoj/NY7FngOb3vXJnKKn2/PsQXyPs5B7dgmLsONqzrQEiQtQ+2Pjxrn0bMDe
	 iBdUQiCO/78BFwtZeJZJMqS2ZrFn7mR11Zvynp+A20EGvQYM6awOwZOyhD4u9WxUzV
	 Yh7gePAdhhtb+o2oterztLT4eVKvOYAYl3hqJAyurr9QUG9Phw/s9jlrfGr5bgMPnD
	 BfJpuQ3hg7KuPYfGkKWopjYPMKC1/Xz/+rxsza8O7/X8PxOBeiwi/cIJGGKk0vWFSp
	 n0DVvuKwl8Oyuo9wmQLOIWWXiyLHLgJQCxNHvc7RLeIePX4IMGH4/dm34WBTiY3Xj8
	 dVWoNmk1xcumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB4C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284879360.30907.186538635212244891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae4ddb2a1201bea36114b76550233b4f14ba66268bb3ec690914716d49b9117
Date: Mon, 24 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742848793

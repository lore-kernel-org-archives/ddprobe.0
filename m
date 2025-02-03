Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADD320AF9B
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738600554; cv=none; b=jN0VdYYKCNpHzGpAbjNb+tj4tDTb1b3ATi+0wjQWLc+qxUEUXB+tAGwponSw+axOSI86bPWFxApQCU5ji1FS55h4taL0+lqnF7VK+yColsli9Qb3P32VOu75Nnh/RsKEczeotsL7crAVbo8FXhg2db+6LUG7xTf3KQoL/E3buZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738600554; c=relaxed/simple;
	bh=shYkJRwizuCcIMir8haGz3p5sCJqJdSt3nsf01ZjMsc=;
	h=To:Subject:From:Message-Id:Date; b=kKOJBlE7zDEe9eaBUoS6cqwAf+SiOjF1DpDWyFbL6P89sH4wALvYGJiRDEeKMBxPnwE+aFxT8uaIgzUpZYhOgTv2sNkhcRPYAQpKbC+t0CVrnmFhM9BPRr20HlZay7+LiFdzPdhzTl36VLkqaKtc2ZdpjN8mipoCiZ8pVxZnQac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlVFlMa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlVFlMa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D1C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738600553;
	bh=shYkJRwizuCcIMir8haGz3p5sCJqJdSt3nsf01ZjMsc=;
	h=To:Subject:From:Date:From;
	b=RlVFlMa0CZnbRcIF+m788rRuV6gLj6ST/dzhk1cMFs4FTmN/zVLZQuJ4uDZBjTYLk
	 9prO51ojpgrpItsn8LzoI3lX9+97KVX+GNe9GmNWZYm24hTk4ze4wNPZeE6mG6bgtD
	 xMVfquSx5N24fUJRPMm57mxsTopB7aZrSiCl55LrNeMEhsDvVMzX8y9GWjegg5fI2Q
	 GOvbdzOsiOpsKhSgFgdd0Zt1pnlRlteAa9rYgvbUDWRkMf7ujVbK48C9lJg7r+8OzV
	 uPvO5We7tnjv4OQUQGCO97qXW3B+uVo86u6Ql3NmakneRnprUy+ozQ/3heTHkBxBtR
	 wAUQuOLgkIaWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FB8C02196
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860055359.22743.8544664975352026289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ac834a71d75e856e150366b62c39e0893533a3509e140d3b2ec8c28fe44daf
Date: Mon, 03 Feb 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738600553

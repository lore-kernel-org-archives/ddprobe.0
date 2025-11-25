Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253651096F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764112374; cv=none; b=r7xws65hDlemshipp6pY7YhBF89qUXPTctn3OPLsqcorkkpxkIaexPEnZVedUKTRyD8ieekky0AodOLOmVkMvx+K8g0ERBjhTXcK5P6oQCPf4JOml3P3xZs21IjRXjFp3BBAizwCVcMWimZEefDnsHt1YTBkbRA8JT2ewTW0OKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764112374; c=relaxed/simple;
	bh=23mXWn3sENynOm6ZM/qez58dMPkIBOKfsPBCPI7k24A=;
	h=To:Subject:From:Message-Id:Date; b=hd1ainxG/bTpVuZLh/xY60sLkgDZv7zJ3AC5qf1fw1rt+HIU8HBqoyl9KYfAialo1V4U0//gL/Y8snWpP9h+aui0PLOCUsitPjoSvEbMrmxl/4v4ylAw4EN6YgqIC7x9PL6YhdqRbJk1HUp+2a6FJFRlLd5zXnCjwvS7+oQrIao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZApnlju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZApnlju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3BBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764112373;
	bh=23mXWn3sENynOm6ZM/qez58dMPkIBOKfsPBCPI7k24A=;
	h=To:Subject:From:Date:From;
	b=eZApnljuJEJAg4Eu6eCxGSzfD45aUNhBpfzegNRAossZTxKGd1Ve54bMB2nqd6iwm
	 RMEDFJc/WFsYAwcWB8xf0bJ4b5GlyLBBdouYcm+Tve0E1Dd5kjIVUk3/vW7mKi5HKE
	 XN15TAJYPLGRxyIcrvU5ZHeKRT9RlVs89pZmIjAFBZ3QIaSc0ETMT3zXnUaRkrmlAw
	 bBeM7a18B+h7F8rtr7vGJbxxDFIMtyOW4+NT3jQq5n7+0CY5ruGzAWI6VVL/uzHH1Z
	 1ZA+QdZCyfqgJhjdl6tWjB2hVRHQqB4NzF+snfIi1/XnRACgEODI/+0TjabFmc1kwk
	 A9Cz7YyWe6SHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99846D10362
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411237359.7478.13759629794678407821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf8b3b0430f0e48fd5371963f048c26030b3d9d94c9794f1fd6bd8331c293c2
Date: Tue, 25 Nov 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764112373

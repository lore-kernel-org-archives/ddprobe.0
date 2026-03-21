Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68190382390
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774092894; cv=none; b=MAX2bH5j9NSUiNeZnGwxfff1PSKRe5wTLALQCKjPTbIsq9D8NUCcN5urEzvOxDBNT8+9nTmUoaK+MW2aCajhsvGq/Da1r10/d7tOOTNDU+P4bcoycdmZ8FoYEQ2mSGnbP+4FL4hWfJsZYnl7ApaCyYq7VogJF5rKA8490hvoE4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774092894; c=relaxed/simple;
	bh=Z0tkW9WN4hO6fc61M6eKPfLif/iOa0rxp8LyTm6TbuI=;
	h=To:Subject:From:Message-Id:Date; b=ESrF613YiDfhzhyrl8sKJ4SV5MSRc10+ntmUDDyvHMKAp8d2yC9dsYdwSL55RkzXnhD9OQdD3OQtBdykRljZErbZrlGM+Z0Ec/tXgUXtGBMu7B2mfORHMqh5w8zwcVAMgOziWVQh0n/tHm1OqZrrbY56GEigYBvi26Mx3lSmBc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/+PyGnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/+PyGnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECAFC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774092893;
	bh=Z0tkW9WN4hO6fc61M6eKPfLif/iOa0rxp8LyTm6TbuI=;
	h=To:Subject:From:Date:From;
	b=t/+PyGnfToAYuMn3YZveQB4SLzKxec5xk/5fdWOm2gunCAYmKf+tf2gUsBHaj1c7B
	 bA7Shz/goOvBrPQUwpTLwCMGLHUZDnFEpjUhGg254DM+lgJB7UnKKeRqdKeecbmdR0
	 o4yslEvSk6Co7A9v0+GR7nNKLISmhbmGh2GIbwTbspzUHkxGcUgUh5IYLVH+TimwVl
	 8qLkuJiPEIMVjsyazGDK5SRFPzbyaX5Pn6BK4UwM/abv9M0WonGhzRQJ22tnivvlh9
	 oKwrREElZOe3zpJx3hOQheehdphYQKQh+qNfuWDTOkXgWh+Sb6lYGiZzyi5W8pOHZI
	 dB2cDNPuhSYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E834109446B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409289357.8983.2880006118637544057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae370611189cf9f1d682e264d9eaf296281f8c79997a5981f5333caab16b1844
Date: Sat, 21 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774092893

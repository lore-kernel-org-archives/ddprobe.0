Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E91034CDD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766705034; cv=none; b=nqaiC6uq5wGhZNxeCf1obtMq0wSkaZ3/eu1p4hUEcxIb1KR0oBTYR0ASknRogRFj0tv9y94mARSfQHBvDXhctFeY1pxOlI3fR0YjKOkEKciVPuYxm9t3JpTrJtJ6KDmzVp77HUpKgRN3/Q4p7Wg8lrWR7pW6icLBliBwdP/koxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766705034; c=relaxed/simple;
	bh=njZgyOBJhipd4cmfT2ANrGKGnHxJba0LI+RXA66xCTE=;
	h=To:Subject:From:Message-Id:Date; b=M4CDs0jeqlq/aDEFGKpZH2tftUM1cVEo4Unjn7x2Z6mpA5a+0lln228fyighLulu30xwyL3MzfCBxhnXRQjnXLQC7Ihq+bwzhOra/DSzrHKhPCx0/oRW6WokrC+xA3cZy+SsRIG1D+sRNZ/c1ZJFgmI7W886oZwAy3rGUJY7X7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXqdHEPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXqdHEPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A169BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766705033;
	bh=njZgyOBJhipd4cmfT2ANrGKGnHxJba0LI+RXA66xCTE=;
	h=To:Subject:From:Date:From;
	b=sXqdHEPNJEigc5mrbVVeRM+HFFH4DeXT5vx0LbwcqStD09cX4aWrX/lNUDU5mDVyU
	 oiAiIsK4ihh4Zi4IktHBxHzt7K1Gk8Gw6Y+RpL7ioqMkKo5hNhD2bAFYYstj4bhjqX
	 DsDUQQ/9xn6GpI5rVUtaiqh6fKLxDXHb4SrQ1QBmFcDDTipPFHauz5os4Sgque6AyJ
	 1pygwIBb94aQufWXyooG/di3IGdMB0YOve+TJKqdaxqzFOwWtDrpaQKDabEo0mw67q
	 pP+3triIfKCxW6dS/IzdR7qFLFVKY9Urw8yCM+zcZV8uH6Pajkn+rZoMQsg7Gbf9gA
	 jcuecZnp4EX8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90670E7AD4B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670503358.31208.1162621738889086583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b030ea777167b4d58f667eebe4d8dcc73c4db3aa461051d93caaeedcf6a83b
Date: Thu, 25 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766705033

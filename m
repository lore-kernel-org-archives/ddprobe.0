Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ADE1E9B3E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736266554; cv=none; b=L3A+TDFTJEDr5/bQv6dJbWgUd4iJmbv1q2KzdEJgK3Ky5GQ9QBGr4MVPza6Mv3FqRMqFypGM0RLYkFZMaNs+XH9xo3TXAR2ELe5/mnqBNu6h5RkNs+949t/ivgMkxFBa2dwRibqrcNv/7GcqrNRm2Aqjezn/9ka5y8QnKF6tXEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736266554; c=relaxed/simple;
	bh=e9TLWY7L1thz4Z0Yv3tA0IsYblX0X+uHQsHORTas04o=;
	h=To:Subject:From:Message-Id:Date; b=B0Y81dagY+UKRg5shFYgjYQuJIJPJAouZ4+vpzj23RKNV9uA9PyIEvQrO/gdV3CqgAEjSHvKPHWREdwUjYyw9pUQQEu24aZIEcDSTB95+8fj0GhYn97bM/Tc2xJLdMSVlZPPf2xPyZkDVxvz6mW3r27RCn6Y7ed1bRiPa80bcdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifHo6EeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifHo6EeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EF0C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736266553;
	bh=e9TLWY7L1thz4Z0Yv3tA0IsYblX0X+uHQsHORTas04o=;
	h=To:Subject:From:Date:From;
	b=ifHo6EeRj+H4c+YnY9YZGmENLJf4G9gqJSEB2ssINxCn2nmu/nTQ+o3MwB6u+BAiI
	 Wpv+WLDtSBJG35n2ntvK/K9f1GxJsjcuxTTCWGBlW9S2ybFGn+9nazuWuDCFkovO7M
	 5anfs5D4NiJVYhMrJFBBvsB7leTpSb0WPSUSEzbNwf19bUKlGqCfDBFrRCFVfM0Pox
	 S9ZXXckd9v1rQfoUcpHqmoO12ddj/IfRMNjfGWYYowdBk8KX6ei7M/zTlxcmfVJGfN
	 I4onqVVA0hnd2kBDimWcWGo7PJVm/e/OQO32TnHYDuMaZ7fBplmDEybC7MIPx/T55u
	 unh8+o0QAyw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDD1E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626655360.3481.8205428990515179217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb3a2d1d879fa3fd911847a9f5287569ec2ec41d9201aac93a6c85396c5d468
Date: Tue, 07 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736266553

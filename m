Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A59C32D7E0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762540194; cv=none; b=i7Lrmi0gUyCoETQOqkMto4bsGkDJD1r1KCkhzKj5avDQiz+z86ww4rJQeJTJaHKjBNH3JG5DGn/gZ+8qHeUWgciZsrqwUwH9GGD3uZ7T1+F2IEjnxWZkqPBpYtVvP+//wgNLlHkFsNU4nz+MhpjE9mhug2GJIMlvz2yqinBoj9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762540194; c=relaxed/simple;
	bh=GQLXb8aiMFmkBbVnlHMOjFdnFzjUl5Yw5qGXomcQ6g0=;
	h=To:Subject:From:Message-Id:Date; b=V3AYawJ4sGBscotuzgSZi+iNmpM/h46rEX1t9clHfkhZOcXKAFm9ppgxzQ6skYTzQUk2x551EGcQoEidslTn5utMaIk+mBOR+Ih40SaetlD+N93LurHCscrgloCQD05uxA8P5beigPK+Npctxn/rSDMu6GphJkje/lo1hUBKpk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxr6Ax1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxr6Ax1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9ABC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762540193;
	bh=GQLXb8aiMFmkBbVnlHMOjFdnFzjUl5Yw5qGXomcQ6g0=;
	h=To:Subject:From:Date:From;
	b=gxr6Ax1DUZAhzceifbFhSs1p+ESj08oA+OzWFJnyL46whUho/wYnnmpZEP7E4MSe1
	 s+vhcO/GPBTm9xiO0YTqq/8eWPpIzeN1uGo0aCrC3vq4mPEKVkr8HTbXC499ZHbL1a
	 1+B6fnDxOVGNIIAZAHtUsFFFheTXLyQ3cwDCfYR5vH7fs8rDwvcFgjB8Mp+knV8lgu
	 lcu1uCYX2cflH2j6EHzhICW28+liwD5WIKfNu2COVJztWmTZ06QNgyhwmbVM9gEpsX
	 HxUC9SS805vWUkPd012BBdnO6Fci7xh4fPTFz0kbMMNAt1XA5Wh2IwmkjYtsj2ct6R
	 8eZBzGN/pj8Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F556CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254019357.3284.17295210005469448953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709565f8629a697da592b0e9c5d43d152b1896c9ca55e2f0b339314c82b31c30
Date: Fri, 07 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762540193

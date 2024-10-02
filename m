Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3439D637
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727834754; cv=none; b=K6QkrunzCrYDW8vs6QBg6SEZd1+OknX8QEhYwOM7DMsOKCoT8tKQ7XZHhS0M223rHSovhohuA1pxMssAMs0pj5YdAnQq3YZIOhTdIGdRHwS65/CxiMdlR7roMWU7c5JJoBWHd0iwFxwvguZHVB+isu5LBJfaceVHX7ov4XVE/dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727834754; c=relaxed/simple;
	bh=wQ8MapfxqTz3xYsACJarwhy+pXZMkC8PdEWdcMFFwZQ=;
	h=To:Subject:From:Message-Id:Date; b=fhsJc9tL8PRbEHe4fN4F9lTRC6mZWNBUreC98gnOqYQ/KxSS4uwzQIjHAXYHZOjW18b27rCMjYP9XOxL7BtVxjsmmqQp1/XE4AIXziRar1UImBkQD1P7OQ7kLcvvaNFwNHjYZdVtBTCIF1NrDhwDesgyusFbWT1N/qPLS+zQgbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBzbZt1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBzbZt1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC6CC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727834753;
	bh=wQ8MapfxqTz3xYsACJarwhy+pXZMkC8PdEWdcMFFwZQ=;
	h=To:Subject:From:Date:From;
	b=dBzbZt1XRpB/3qXwgsr/vE48mNmX7JXl3R0UkYfpq0TRqeHghbpidByCjf/suzQkx
	 mjWJLJlnXpDdgHXnrZxzFtv3NB1ydYmMYgJw3ulOtbUCWCLq1PwHNF+nzzGBWstHkX
	 cj9FiXqMZmh09Si7D/vWoNVpy5opBFy+TMfg7kqx1ArS/Arh6sfXP0lu0VHkKEf+e7
	 nQWys2eU2R87vF9g+J3TyMcOLWSy2dkyYNkRH7iYraUloJyXERJE7j9USFpR6AvvkR
	 T4rqLWiYRDZYySp3/qOQSr0fnOMEn4kTN45U+qZooXi1KqbdG5AxMUcrcA8HqqtLm9
	 9tb0tOXDAcFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD58CF3189
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783475362.3191.12568948972077635053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4c752b889bd812fa0a2be491c76473ab003bd6fa6f1f4d84bb1b0871eae026
Date: Wed, 02 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727834753

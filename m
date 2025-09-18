Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219AE1D9663
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758188394; cv=none; b=pGBrlJoGXEVME/fheDKk2fN65u8t7DaaCndXZL9cROI5sqgSK4KKVSzWWfsDnRXIqoZyn3VEfbaboPXW1kRXkdwkN66r1FvoBSjZLueVao1Yx1Ej2Ouue0e657ElkTO2+ee3TffA9KA0CqYjhuwGMSpG7xNMzAWUPR0VYpMcf6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758188394; c=relaxed/simple;
	bh=FR7XLsE7u+Wtd3X1FP8yv9HIAKKBXzecR+L8rNS1HzE=;
	h=To:Subject:From:Message-Id:Date; b=duYSziWjI+Miwz8l2mgXmEKpJWZn3bSjuMcJj/jk6n8VhhGhxmh9OUL882wuCQZHQbHCnFnQuGMq/aTT0SFAWXqptQUtG18WopJZ3VfTXX9+aJ/uy2833qq2nQrx6y57AfoQPKWKnr378PZhe6nl7BCY4skls3uNvgxusPxW+9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgzUk/Jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgzUk/Jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A2BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758188393;
	bh=FR7XLsE7u+Wtd3X1FP8yv9HIAKKBXzecR+L8rNS1HzE=;
	h=To:Subject:From:Date:From;
	b=XgzUk/Jnb6YYQq/jy6i8ZO+1wCae10SaMMyE1cy7ngaYP+z7WfwoarcMjt6YY4htA
	 6m9ob2MCBM4k1swk/vvVhoiiC8pAX8an24wjEbniXzFn/bYLxWAsL/a8f2Tep0J/7P
	 Sef3QUpvZHdOgUwoibyRk4/KDZwUA1z3TBnPENEOjZ8+tost8B7UGUdo7R/LBH8U7L
	 7J/l7pfMA8mWvfKz0Eirw1adEbxscr5DLwooDKbkX8EEawVVKYxH6WIdoD2/sXdKRK
	 UJiz8zSn4K+zh5QyGTSVWng8j+Cmd76xlCDCts9aVRswwo56iknMqbZJ+cv5cEJPgR
	 r48LsoswKGdGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD2CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818839358.3176.10053527073615949163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af893a69fa216683194fa1350e8457f35d7b3f98cf257d1d48a4935bc02bab2
Date: Thu, 18 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758188393

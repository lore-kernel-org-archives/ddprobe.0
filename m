Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE6F3C13F1
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779036034; cv=none; b=nfoyBkCLQQFu4gr5FY3NYCQG2irSJNkrUi60kkSdeJtamp2kuSkYAKsaCpUSI10SWrBg02DA/6MzeFL4Q9CQzQ6hqJ1N/s/PXSUE1AdAUkg0me7cODE68oSmPd0xo0wnxrQAeulilrmBGrE3x8wugn334pyTQUK+LEyqs3SF1J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779036034; c=relaxed/simple;
	bh=v6jF6jgaMr0OfD7a9Z+PbZcowka51gohrCqmYMVSOCg=;
	h=To:Subject:From:Message-Id:Date; b=nPHn056NCSjtYCbr2w+G/0tqKNjm0Lq1IMbvN9cH9sBML0qKv6zOuMv8gaETRxhpfW6VAovwIzV2mRkM3vuXujigctyd2wzIpsGQmep13R0dpWU2dB16SwitI+a/40uvadIFqx5jy0Sn96oe5Uqp5opc6QwvDlpC/5f4OHbgpko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUhONmP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUhONmP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF169C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779036033;
	bh=v6jF6jgaMr0OfD7a9Z+PbZcowka51gohrCqmYMVSOCg=;
	h=To:Subject:From:Date:From;
	b=TUhONmP7iOxf62+LemeeMXIQ7pcyMd/VbSOZD+f40h9cdgICoiRcBQf1yT0fnfN7K
	 vhPKVVXOt1IOtq1URhdyVdcSW3by7YxLe3IjmIjcFV7f/D4ZuwK6rq/eABXztHcD5L
	 EtHGn8qNTH/gF8gdXAsDdsqf9y77totfyYRnb7VwNQSRh7ysgAwsjjj+PWe/927euo
	 7fIlasoUMYEwiX3syFJlop+CEAAgtXgBrUtP0AIca6SXZTv5CdN8P0Z5deGadqj+uW
	 kiOh5Z1GdnLi7fuFHqDfeSrYFJduhiqyQ9j+yaSr8M8oDMzC8iPBZet7OAaGrJa618
	 OuX/wyL9OH9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE72BCD4F47
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903603370.18668.14515247835800153191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc565cb710d90c50c2eeec408ae8265cd4dbbf7c9e9797c35ebd49092213a071
Date: Sun, 17 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779036033

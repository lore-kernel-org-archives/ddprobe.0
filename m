Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F931459FD
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726517154; cv=none; b=S9gWlhXTmeOngb7VEAORoli4TcfqptiIIlMzM+xrd+KoVIy82e+KOe4VqJM2nAqB+CH8URHo9qf6lMfh07ywe0joIpXTQBgBzqTEoff99m9aQnet7Z6A2BYTbb3qePJO8fvvzMt8zXU3v6bBGsE2/67K5G9S4c+tlzp4y/EfvRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726517154; c=relaxed/simple;
	bh=2rIIwRhLtvGDP1jnn77baJ8siqqOYdc4YPkT3U/tRZ0=;
	h=To:Subject:From:Message-Id:Date; b=nx1uVUu1RA2pIWKO95mYcDD4qE82izldo/kfSWVQheIpHk9cWcz/5KzM/QGzWBPj0UEuZu59hSNhs5Q5n5z91FJOm4zAUrOaFgr/ZznqjA1DYa4oUk+hkyNCNl7E5OaWegWttXkoOufjBMYawcek5QJeOiUwQMf3Pybbo5wKuJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QddI4j0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QddI4j0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4F6C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726517153;
	bh=2rIIwRhLtvGDP1jnn77baJ8siqqOYdc4YPkT3U/tRZ0=;
	h=To:Subject:From:Date:From;
	b=QddI4j0lfSjxecHKRB8ZW6Pdnf+2fb0sqawO8hoZGoHDuSQsbCcBR8Xr6DtOjHMU/
	 C7vV1I+08SZg7IDd4Q65a2XFcQ7hjSY3AYOa6n6LKO8VsWu7wwoFl8OcdsqL1vhq2y
	 7uw+R7Sza44zTwGvm6AFWobQfi3LSLOzP5JMYioAvtSmO6V9W097V8fSe6yDCopFbL
	 TNWSL0NtyDQvkv9uOk9Kmazc+2PJd6nxuHMEbiryMNYsdJNfZVy79LDD1af1GQWqn3
	 rjNgZZksOV2RYVm5IlxIAxMD7V3yr8Ci6X29triNo+TvSWCTSUpSmnRNTHMJO7di8O
	 z0SqHdSZzsQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F2EC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651715359.8052.17684064811008875807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f204cf228c04af8e96ec442061c7c35abd8a04b827d5b865ef2fd48cbd3d6b4
Date: Mon, 16 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726517153

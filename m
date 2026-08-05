Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D4A43A802
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785928234; cv=none; b=ZHVpbIOTrN9otGzxRu5AQ/MPWgz30UvLr2psR8UwIdyjOziUQO7Ak+PdQQisPbEcKLWydzNaGtmWGSOtDQfru/1oRlsvhk7NvMWxkzVh4T85vxvfEv2OPnTwiJ3v+iIA0+PCyGQZnK358eJZmrVHQ2b2Wah65u/Bw68yDxHGzTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785928234; c=relaxed/simple;
	bh=sJyVIDl1z00PFuudBsSV6t7TYxYc2StXtH+ZHrJm5Z0=;
	h=To:Subject:From:Message-Id:Date; b=pT4GQ8GyPCNjMkkuGutXIIKpw1N8fB3vRI+Q8gVDB6tf/QM7j+cBxSYPS6ynU00IaZWtt1MGLBVveB2lu4NqwFqZQEBZMqGDYA7kC/k7XxtcbpUKj+ZZros1d+KK9FCHFK5NcmkgeJ0giwOCMnunQgWzwauWnXsmeJ21lCYYoQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCHTTi3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCHTTi3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C126DC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785928233;
	bh=sJyVIDl1z00PFuudBsSV6t7TYxYc2StXtH+ZHrJm5Z0=;
	h=To:Subject:From:Date:From;
	b=mCHTTi3Znx5dW4X7nD/85COaDaqWRDjOGM/OGCeaN1sMth7xZ7aWZjGt8HZnGkPPd
	 7PL015wiS6vN0bq3eOUR5c4Hf6eiJT8G8990ZT7I7bs1EHyVHFfZNqWNwB2ffDQZFT
	 c7nmwR2hMsCUycN1+NMgGkwp8XqwGuEQYTDh+NNnkUtjHHvSJnwFFSEmFSZH9Sqrnk
	 /njA5Nf0Ni8CrbFJH2zsop0MbAJ+ndMckjAx/Z2chxCPVejf7JISUk1aSGkR4F94Q8
	 XdFTzrSL39QG03jU0C1uw1Nbm9b0mqmuFNdfUX1RcVjor3YYj220JT4pf2/llvFAbH
	 swbU5wQEhf2qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E6EC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592823368.10990.14815589670319200335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47adabda01d88f517099823a5f28079198cb3c124d76071e2d642ed27154ea32
Date: Wed, 05 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785928233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0F833D6FD
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791993634; cv=none; b=I07e9YM/7wemyULLQey9JWYtw5mdn4hN8kfNseR7mWsEKp1j5X3tXSh6PS0F1UgNSU3T1SdWwJNMzc6Y6+EEAtrPgkogSdgWtamj5RNUYE8TxFluv/qeHUMxmNtkyPDLeMS8j2lwJxbh0KihJtMCc7AhRtqf5wz7rMMX01+Ofws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791993634; c=relaxed/simple;
	bh=aMdh8FkU2p2gHHsyFvrZto5yxGPhUA2RQxrmBFQi3eQ=;
	h=To:Subject:From:Message-Id:Date; b=ckvsUZ6LZM3nlgfQ+I79clShI1K2Bbr7ndmu1VKP7H+OTSKJPz/Erqg0h+diBOzWlQJicx52+1qz6/o8Y4GlxOP9FBKO1OaAkoY1uXG6SbZ0hf5WwCK0CZiKt4o73Pz9KAyPKV6lxV69chHuBiZ/paCkIJYTo+quDhAHeAioZw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDKHn67B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDKHn67B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2955C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791993633;
	bh=aMdh8FkU2p2gHHsyFvrZto5yxGPhUA2RQxrmBFQi3eQ=;
	h=To:Subject:From:Date:From;
	b=kDKHn67BAr5/QaCfPmfmCP+8Yum2pN5TwA0B161BpbMwy8cqG0i3J6uCNe4HHIAvb
	 9yusDByqnJrP0E97wCEPVVzvzIQSd7uCXit7fFPkLPhTUhPCDymBUbef6rhFGhSMkT
	 8heFqwZk0gLTzIV/OOXEojgXAqHc7wbrU+xJc8aZgWm9zknkF8LrUKUovryDTjX32X
	 5oj8FU5ik+GtZw3UmxO/sAV0H1lU6W8VApvSz7iDQbyItYLT7NjMReHOtk20POFc1v
	 XYSNIv49X+7WGsvafRROO0WpePXRswQkHbSu9SJ1MUlxh7m1N5DdZeL9bpfk5KIj4E
	 +0IReHKcmt2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC3ACC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199363369.16916.5262026491745081144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c5188af132d80cb17b7e91a2259fc892daba5353b540d61a4af859df18def9
Date: Wed, 14 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791993633

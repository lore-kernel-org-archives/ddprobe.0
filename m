Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0777127B327
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756307994; cv=none; b=K9tc0dVWwt/CtmJm2JhzCEtO5gapN5mtfUNQAM+/FwpLMA28QbcJMiTHW7WOmgt8mtk8ECVuF4PP7v/9UoK9Wv2YOjf8PTAxGJwWaWJMiMAMd2xBF0IW2TD1la2/9+EBv6MkHaCAwsU/QzImCv+zFUNAaHD4XbVdu4bzF4BLXuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756307994; c=relaxed/simple;
	bh=4F/E9bbRkedqnx5ExzvKvody3J9OE++q0mzDhMsgCfo=;
	h=To:Subject:From:Message-Id:Date; b=YhANFgzJ4WUqEGjmQuHubf4FoFXSlS/W2gEauG+BtAE9hwC/aX7JIPIqKntuPPrOYc9epZYazZ1j0E+wcBLq5fvOuwn6m5vn2RbtJRQION5i1AReAKa0VnpsuIurb+rJe02t+ANpISHiiQuiB14vKZR2XLTVXeuDqAgd7EFu+4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esepZ9ZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esepZ9ZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6828C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756307993;
	bh=4F/E9bbRkedqnx5ExzvKvody3J9OE++q0mzDhMsgCfo=;
	h=To:Subject:From:Date:From;
	b=esepZ9ZFd02HNHh2d5rn5OnVH2Uwv/z9MPZYTKLGCTbd7aJh/JaqJPIBjaB1u3+/L
	 dGvVf5oXNA8YCqeP38ZTqzQ8RjnRqb7HCcU0ZBaodfPqiS9h2biKgGxDPo3vhZCAxa
	 JVvDubD+J1Jyu5sluL52rpKFm402OPhAbSjuCSk8LRDzFvQxzrA119ueZi+JAWw3Km
	 DaO7gsPGKYKCkwBqYL6m8gHeYrOrvJmtl77ykum8VlEYGT3NOY/pj0p+y5Ft7RIlp2
	 //irrzg2gTfBxMDL14BjvTibDV1z7VaL+v9b7HrJ9KVkBuUJLZfDUtXHcPM+N/wdtP
	 4FZEhHJ+GOSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95FCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630799357.26238.6600737334205011506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c711a7d66aac1aee906098a6240037e9033485cebfbf9d8276521319576040c
Date: Wed, 27 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756307993

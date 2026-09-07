Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5299745FFCD
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788777634; cv=none; b=rC2l8/gvXk2snsP0qXwuxOwcTKSHhZCOUpoppv0aS7SCDG7/Aue9HFr1YZFIvLnFdc+ag8YwEIHWusv9v9Mql/ijbwavtMDydPkOmUO9nKb1tZXtIuIBqOHf1Yb7PoiOPGSvSevBi8A7nwNthk2iWSfZe77rAliwLXAEJ1Qj94U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788777634; c=relaxed/simple;
	bh=QQKMSFeHxkaiVDBHkXlIrJvtduG/NTNWSSRTca6zRj8=;
	h=To:Subject:From:Message-Id:Date; b=bFQB1JdhlStURMxK8lPZRhalu4HocGuIRfdni33ZUPmqSC2fiiiJrfdHPvCI5T8aZMNwNJBlrOw/VgCfLPAF8L4T1GTjAWkVpTYCp7Oh2VJg5QLMiYFhpH/LqGHpJPCNylrW8c9mfC++Hiyo4x2zVF3dzlcCXqBJD4eQfPmwgjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLngZUtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLngZUtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01AEBC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788777634;
	bh=QQKMSFeHxkaiVDBHkXlIrJvtduG/NTNWSSRTca6zRj8=;
	h=To:Subject:From:Date:From;
	b=BLngZUtBYpCKEkW3SZz8upjIb6/aUTyPI+CRlvMQonrJnW8ytis/YPvMoKXW5sdZm
	 jzbEABecCn2DvKH71zH2TSeHXSBiv+hCDtiLOqYUVSyqkTXywWzt3Wrw6RxIMa3pVu
	 pBp6bY7pAV3sz/t0185Ish0DD5IJJxSzX7TuNZgXoZf5lJhxO4LnSqqjkAHLikfYf3
	 O0eP8Uf/qi4XtQ7qo17vyaZvCNLPXZ6XwWrhCwVVMwS1XFXaVmwIc1HFgpJqFlmx3w
	 GFTWw4e4U6VPTzmz5N0KMW6nRCtdaGi5VkTYR1uDBDNMxJLU4+NGUilYEMwBV4w+a9
	 L4+qGcJRtYNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D14C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877763373.7425.14607623664216027298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b749156eed28182df4e4aff213ad9228b3a1aab9e9072c1b4bb0b9d0d26df4
Date: Mon, 07 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788777633

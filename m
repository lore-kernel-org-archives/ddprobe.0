Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD362E22AB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770026634; cv=none; b=N3GEFO4aT8EBSWz6bRLgiSmIL0pC+3OU4dGy3MM8YwnRywJMYmNxd7IITmSrGhBmIpeOQdXJORH9kiZkjbZ/J0RrgPHAXvCNDstsqXhbHkq/0/ZKTkeoTjLg5YaS9hWxOeroh9yJ4rY9dzPG6uRtdDc3xlvoDWS8uUI4vidFx/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770026634; c=relaxed/simple;
	bh=r3iEvK1WTYa83jXtiY9WUSlCJAfWTU/0sgvON/3dPxA=;
	h=To:Subject:From:Message-Id:Date; b=i266NvmTOsCQC3SH5sNN6tHvk6Bn1DRBssHysXcp7LJGkvOB6iv97cnLawhIEohYQdrGAzarrS+cnbdrpAyDakS8W2ZeFS3WprIjXuRWqdy0ueC+blEpBGue7yJtQs/UzYBb2IP0VYVr+xexg/5lsJre+R4LN8ArpYvN2GDRVSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GghDIF4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GghDIF4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1ED0C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770026633;
	bh=r3iEvK1WTYa83jXtiY9WUSlCJAfWTU/0sgvON/3dPxA=;
	h=To:Subject:From:Date:From;
	b=GghDIF4Al0KmCX3D6FKc9/z/07Zkmoxet4/X3yag96Kj6Xy2v5YHYgjerbNtXr6TT
	 uzYoRUhdcBHwpYVYAwXU2HYGUnkBY0qqgCU+3CQmqgCGfzWvMc5TM4RmYnovLaBWWu
	 B44dLW1OJ/gO9Fq+9uSZIIKbrXcZzFaTPef5Erm52h/AMfPsdYKL5MEAvC1fW3SQ7H
	 BglHAljjdbJLHRxtwkpQ2MLRjSSOrpCb7jzTbj36sWhjjqwz6X+sN7uDWXxIUIlPII
	 jJrYxsC9mw70CyyK4N6Vx4cJDyNvmozkQSjSNXEJ08WnrpVKDGocAHbEqInW9qCFZZ
	 mr7jYsyFgj1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD06E7314A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002663375.27233.2701903006360460354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17d2142244df140a8150dbfab3ea33efac49f47b3dc5548ae666670674be71a
Date: Mon, 02 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770026633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49C101C8
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715815943; cv=none; b=GlufzSDiXnEn2dU79IqYRO85500Mk+qvSZSND6UPJ6bTf7q7tH/hJaaJkYf9nVZql9CIT8ua+sxKGlwagAPahSzkwWfxBjjgElpEl0rADJf+cg9CpfER977HnP9HDEEJCE2UjtmawRRYvTM7fmk7G5WFJly0sT28AUSu6Eulndo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715815943; c=relaxed/simple;
	bh=rBdPcP/zeGO5yDA7Ys6i4iusglfMrqIqOj9Giyrd2d8=;
	h=To:Subject:From:Message-Id:Date; b=qo79vuhEmG7NyW2WwDgsTtU0EoAHzc5CqWX512x8my57VTEGj2JuZgKIoFekr1XKxOghN4HZIO/jlrZmyLKWijTZ7K2P/RGzyG+FEOkh57bSwDhMQMpaogQOb7lgkseOkKOpbXPMa0JwxLvNl6Q5sAyXJC8s1zWLPaXZNB7lreM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgJIx68j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgJIx68j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0624C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715815942;
	bh=rBdPcP/zeGO5yDA7Ys6i4iusglfMrqIqOj9Giyrd2d8=;
	h=To:Subject:From:Date:From;
	b=NgJIx68j7zhlWcFwSFv1aYwF2DhByYxExqkwLPIPuynDvGH7KkzwSJQGkVpb1oxbY
	 7934B7RgzgLNXqn9NGICNx40L5Vw3WkJhcuR7ntW6D5ReKzjUhBrBKtGo5cxNzOjP3
	 2b6SkV2v/vkTw9BEy2YzR8M0svzdzBpr/8iMM6EDSnmTnaBtZ9xgPMj89qSoZb1CP7
	 t06jOp2Tksyiaie61/j1k2bpJ2qT3xMxwlUnMejsnmEdoBHL6OWzIldBiAJSdNL0jH
	 7bzYd/+obfeQUf2msmUYrrTYEqBPfLksVRxdev+yMKC4e8UWNhJ/0tXgl9R38Q/AL/
	 GTSIENe037UIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF333C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171581594277.25098.3150967490212515705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccedf4793c807afb31ebcf4de9505e761dfc48687fed3b09b564faa97a80db54
Date: Wed, 15 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715815942

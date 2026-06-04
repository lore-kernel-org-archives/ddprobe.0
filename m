Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340023E2751
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780581874; cv=none; b=lH4p3vZBHZb1cJf657ifWUvFIbNDDow3kvJK7JoyywIweGt8MO8yl/Inz+sXyK+2JvViYTCy8Z1Rnq0TDr8UxthWUwUMfi3ib4/mG0M0wSebLVO5fK5sIkUlfO6gW188Ygg0Nmc8vdCouEhmj3QPcWv3yhxZ3bZrlDFp+T9+cYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780581874; c=relaxed/simple;
	bh=LfVogKU+ixeFpNnOsyQeoSqyiGg2loTvl4YUl+AwexY=;
	h=To:Subject:From:Message-Id:Date; b=JnsLnnJtXmXPzpGNfhjEu5uMgFD9HRPH6NuDBYwHbha3l2y8oazT2JbfO0MthdKWOhPLvtXVsuJmmW55tFzBmuwO+TESuRv74MT4R7fm+DYJKwOVpXxC5htnqMll+tvL2xKHH5pR8s6G2K5JJm+RZ9RF5/FF6enSCDrndP8ArK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYVg5aQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYVg5aQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1F9C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780581873;
	bh=LfVogKU+ixeFpNnOsyQeoSqyiGg2loTvl4YUl+AwexY=;
	h=To:Subject:From:Date:From;
	b=KYVg5aQbp33up2lowW3zHMRU3jFK9y47YTVjy9ttDeXT9k706DEmEmKkfTakFpvXH
	 Y+AKembFpdE2l4oASBdJpSC77KLCHqaKAixxf8h+Rrc5rAzanedilZB52/lkz66TqV
	 SRM8D10O5UD0xLLLigZCN9tJoe+joD69/GgRsrzPk8v2CHwXRHIh1pKdfwXUJ17M8n
	 W6Sb0A12Tog6RwyQH3DL8cgGD13rBgFFdWOc0FSq5ZYjOApBFYrunZDLfUWsbXsVAL
	 vP203HzxqhXagzKWBjDifKHEN5mkDbizdQxKP7sAr1231Mk+QbZjazrjcU+6d8WWH6
	 rpQ3AYqSmijWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A58CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058187373.17337.12168941920608764066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45483718963e361bff2058e93d686b4cb375b02fd33a33bbb341b10a9252aa5
Date: Thu, 04 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780581873

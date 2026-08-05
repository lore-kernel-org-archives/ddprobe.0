Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3456547D446
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785945035; cv=none; b=qs6MPzuIZTScKNdi++DNkRQaQos6tOm2+hxhf5UGXCDfCdr2VRTv7jQi/4nuouqDilvE1zYmORCUP6WShZmOvo8ppU6AnoaA2Ebc3fQAbhb03WtR9ZzO6l6DadDu1CLdznSbw8tB5ur3+U/mw24yGZX5QdIztntFT8QenYmgZsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785945035; c=relaxed/simple;
	bh=osZkQsP7ZAOvQ6Kll0KsefXydQ1eOdOaNg6n6+wrNG8=;
	h=To:Subject:From:Message-Id:Date; b=RY2lpQL5okM7NtfFNdHsrzQAeLiG/InZw9nR+RXKddUVXwnNZeTcfXeVCJ042uHfIDO64seYXmrbdZpqoL+nLcIwrNr9JFdWEXBNZmlUp4gAYFc+DfHRG+TVM1PRQrDTRYSOkbQnJEOSnt7mpdtAYtejwXqv6/J4cJ9++MNebgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTDgDRyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTDgDRyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC55AC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785945033;
	bh=osZkQsP7ZAOvQ6Kll0KsefXydQ1eOdOaNg6n6+wrNG8=;
	h=To:Subject:From:Date:From;
	b=pTDgDRyjagItij9TvI5Jzv4V3af2rn/4hYiTl1BDYAIFC4qtuM9+J3mT8nmluDEsg
	 3UrgDBrCnf7qgpsmxwrTKevJiMQZx9l/OjprK4auU6m1ZwmtV97ItIapexJHhDRVdo
	 Z4ZQmfUDI3irHwreas41HtoSIJo8nAu2p36Hc4kAZylFZ9yB3Wcbvn5h3brkXnKeUP
	 RV8WlUipZTLIFmY2L8glOQ75DQLkogtRv3Ipqw/PDTugIrmuQphTeuno9nnqqqfkEm
	 1vpW4h2S8Qzk19dA50ieJ+bTr7ib6s1CPo7K3c9vlva/40JerqWbUHn8hdOsWfBMKp
	 HKydvhqoSJoPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6AEC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594503368.14819.11107583069149215673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd9b2dd88233d532cb5056d70b590896896d528c47a6317e7ae6d5f0b864f7a
Date: Wed, 05 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785945033

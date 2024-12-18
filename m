Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A27285C5E
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734545754; cv=none; b=oBmnZkzk1Z27qkOTNZmqXhQoggiH35SogDLpCjoLM3uEhqOzJltw1am1oGNidPa82uqXfYAbnVC/bt3bnAZUdKXEvHR8yKfd2iejm/S7bKIqcn4cck6HMFaUeci7c+ETAt90xS5RfWvnzb/i4qaPEuLp+cMP1UvRYMGcOxiVQPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734545754; c=relaxed/simple;
	bh=0IWdy6gwbr/Hi2p+avwI2o87PpfpZSg0g2boLbZaKrw=;
	h=To:Subject:From:Message-Id:Date; b=PqOTKIZ5Le4lBnFyLX8NJueJPzTz2lx5HEiha56y8GCJyer0JTSIRmsxgYLg0e4xam13DHijoCqCI4Ftn81QEIZP1OPx/9ziIpervmHFQbO099jns1UjCKCIt867oAH5zeoV04XkHNSBjf2YVDGcvOMJcpJ8xEhRH9dnEOxP0tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqi5ok4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqi5ok4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5657C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734545753;
	bh=0IWdy6gwbr/Hi2p+avwI2o87PpfpZSg0g2boLbZaKrw=;
	h=To:Subject:From:Date:From;
	b=Yqi5ok4Eyfp6F9oJT6VqlTk0XTWmK3BzkjuAn8UKZTMmiBklr6Ms2LaRNNjcer3dP
	 zaaBxB/E0GTyTXnrO3NJVNrQYIcL+oCU8lcV6F7zrAAHOWLf0lZKjvcY9Jdzhug/K3
	 mEua+YRsA7TWwzcoAd9BbgvjSu5BytjxJtBV41rX54JM11l7/e448L3Nf+rW7y9uSO
	 +g3cnITzYdtaj+s9Nmhzjga2AEOGe4UxQGH8ZE2YNwTrufeVoC6erIxr9Y1v9Xdt5Y
	 CaGt1oRNl8YhaYBlsuG8X+D7BWZuNlXTnnrN/mKmy1p2Wn3DQeXy6RNMuBBpow7tdf
	 tqfc6/K5s4EOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5EE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454575360.17656.7278425502399271928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ddc2aa8151389d30dc234b10dee89efe6825719c60a8290346b574817bd75d
Date: Wed, 18 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734545753

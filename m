Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559173563FB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779698554; cv=none; b=doJji9TCJdu9Yu6lvzUpPRrjJoZKy+0N/j7p2VNmYSrDdwApYA8nc0FqScRvYg6357NdYz2orOOdis/2J3LfdSrP3tGcwyMAIqly1QBqk3BN3jLfxb/YZzPCemkkbUkffvpFU7FWTPmtyDvEJ8ShLKgqYdO8CLw3ich8MWzA5ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779698554; c=relaxed/simple;
	bh=HcJftl78nkgRi20NxlCjFvaUONHC47MFUQ/tZKy6u9Q=;
	h=To:Subject:From:Message-Id:Date; b=q9bPBlksqSuOMNWSd7jxvPKzniBSFUrG/Wu9iPsBqeO38px3hqwoAhlVjcnHM75M2hXjNnZMo2UqZ0MzQoM8CXBfg3OiUwgOd7nZYBJXR/48lyasDry9gykSR+KEA0M8vp1Ms3Yj8Q8QEnD5y+aNJZKL7sKLuMunLF7akH5/e3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCJbU4TX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCJbU4TX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BA2C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779698553;
	bh=HcJftl78nkgRi20NxlCjFvaUONHC47MFUQ/tZKy6u9Q=;
	h=To:Subject:From:Date:From;
	b=sCJbU4TXlJJhb3ltSoQiaLWClgiFB3M0ZCFq57PDCcFuKnN/CYNv8YmKiX7uxGowk
	 7zC6qIA/FAFMyGnqMX4/BncAKCYfIWTx3P9m9nRG42fudkk6MTM50CKJ/G7b/bcc8m
	 N7BY+zxb0ogzQNzbVmahKXvUFYGxJwaE+VxqXLLukZhKcQKgD+yJ+qKjdH0GDDsklv
	 iPqb6AaxUXsK+h3jWOCjdccZ+6F6H55wvn1iCSDVkDe91xLlWmEdc8crQZrKhOvGYc
	 muvzmPu26yRkOa0qZlPm9rpLRP/9BoPxARy6JZ3SyTxW2oj786pgNvB1rLJig4G+AV
	 RvlLnZx9QT7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A23CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969855374.3500.7443354357672637301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2293b85e773c77dd5a6b7013bbbafab58dc6d55c829b1709198f10c3a038f3d
Date: Mon, 25 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779698553

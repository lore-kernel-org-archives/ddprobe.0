Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BD61FCFF1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750834194; cv=none; b=mA9FbqxSc6QK3tfo4ex7Lg99jiqfL7bKvAjZQ2E3jvqXsYkkue9CoICn0wkms2siopRQtw7ta3f0YDwiYdYq+9yxVmZ6NrMBH5hHf5/OwK1x+SUHAJKLhcVZi2FJaAsWfvJe89M+zSz/07EQvpDqhhnwAsymIT35MjDp7pR5Bdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750834194; c=relaxed/simple;
	bh=OxhOhb/zpxqYOj6q+G9R24g2pvnJpcFsEpIEvjkScVo=;
	h=To:Subject:From:Message-Id:Date; b=q5CGWVpPNxRyJMOA91dwX5hey7dXw34sGXASnFK0gou/65T5hi6RYuDE2kqYrGO5O1vZcmzIDLobM6v/ZvVdZOB4IDhXNWLKE1aO8no3qjplLQkDHrehWqEhf18qIavDdD1/mkJl0nuebRq7W7+mc4DtV528WatIKzmpaJBtxNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNOrc6s+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNOrc6s+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3D6C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750834193;
	bh=OxhOhb/zpxqYOj6q+G9R24g2pvnJpcFsEpIEvjkScVo=;
	h=To:Subject:From:Date:From;
	b=FNOrc6s+dMtHfwgBEVzV9F9XxcwAcZ91ZgRIt7e1RyQfnNh1yfK1bS+8Zeq1EbN5s
	 LvXaMBzAnRcuaO8iPf/FU0h/IxB2mpQ5HximTkR16SEt7LWOjI51binS2DvHMVz7qb
	 L3khi6cDNel4mNWwnNuPBhM1Q4FSDhmT2opKqjiAYbwfVPka7cqhcAAXAhDrZIyfPU
	 ezSPr1s/TfWdPMWzbfi8WLmhZbvM51JtQG8CPMrEaYOVUiQmtGqHNtkcpAiDIHXtXM
	 1OyOelUBDz8ZE0UPB4uLkJbhlnC9b74o2/C+s5ojp9/IVF7pNHhEWaskvraWm42QdI
	 1ptcrCyBaI4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23FC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083419357.26091.4708773100836727966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43374a38221039e4fb68883353354d647890c774ee3d197ff77b1358fc57fa5c
Date: Wed, 25 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750834193

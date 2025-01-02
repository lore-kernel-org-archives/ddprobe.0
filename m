Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C65149E00
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735797954; cv=none; b=qKnY80WYvHqa7wmqb5e9CrhljOWJFxY4yfsX6L0ayYFjuqaIoxh3c/bsePvAdzRzGkq6X9+VfGibdHqWu+1QPEYmHA+XTyiZpe+BhfN6CrSD9bxhudBOCV0xmx8nJZH4rUJQJ5fhHWOE+qm/yE4kakXmaOeEH78+KQoiejLglkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735797954; c=relaxed/simple;
	bh=/M5/NBOjMsgykAoa8Fs1MFb267/R/GonoPRoqDC7j3E=;
	h=To:Subject:From:Message-Id:Date; b=rv7OxI5nwYaywkLQOxy64jhjWsXWZkJcQjYUQ0RqCwhNaGELtxX+j4u1nzXWN2YRLj+PYKH3uq6TDvGLkamcw6QAafzufDTDi51EfxR7KXyYFMxjqMTjRYgHyBGNQS/njBMjrmEbXszkQDQq08xDM0bPu6L461DiV2mbOdY+Ex4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6juBtPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6juBtPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB09FC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735797953;
	bh=/M5/NBOjMsgykAoa8Fs1MFb267/R/GonoPRoqDC7j3E=;
	h=To:Subject:From:Date:From;
	b=M6juBtPChVaakwwPBS9dGr4IKESFWYjJPytowdIR12U98GWLbGZolNsdFZZNWWW1r
	 cGiQaCBqGxCmFRi8djdP3nwLPIoelYsezrBX3jZzukF1DVLmMDGxK0TZkk1h6qVnPy
	 xcjaXDcf+FugSxlDG+g4ABQ8fXZkYSNjtYxz2I6nrgqnisfEuhIJOm+HbpGLvSr4vl
	 f2AXlTbKQEk0OTEuEdh1e2FZXCSu/PebHTxIc5NfLQ2Fi6A6CWzDmFkVyXcpBtdUBH
	 i3B16w1sXpD0Ec7XpSBnMW/4bgWAq+ZW3uODfl1NkafuFHvNFo80dntgpeOapa5Hdt
	 whmIfYL/Qfvfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F4E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579795359.1082.9289522845782662165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641fce1ddcbc827651fc867d96e99a4ff0c19928a8c2d52a065f8f128316a37f
Date: Thu, 02 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735797953

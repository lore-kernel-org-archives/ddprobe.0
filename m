Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADF918651
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719079343; cv=none; b=VCjlYB5Mcx5CtUJlNoAuooTokzzSVuqM2/yBDM2KVB7Dv7Fv0cxk1ADnNoALN0u0svniPJUhdbtZMuuCZUNZRyIhByCeIOJgM6JP0Wo2Ri8nxLPI59WSQTNjNcQEm87KJapNV/q16ZnFvI62KbA8RDhk1GGUFdTIN1MNuiENvR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719079343; c=relaxed/simple;
	bh=Jc9Kkkc2B/hgbtr+fYurgIAgdrSnZcYnTI4L/mTlqYA=;
	h=To:Subject:From:Message-Id:Date; b=IN1KSumW+osBf5ozA3pwpHqWgya/ugQeNyE7AFQQERnsVtazBDZrfznMliUZUs0/QlFl6jPti0/gzfY2VxCRrxw9alPXHKny0lpoxlYAa9gqlyLRSlMaZpKW4zi4U99OVo26aWd2u6+Y6OecuC8hzWek1PSCZVZH1TAZZnVyW98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8OdoBR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8OdoBR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD26C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719079342;
	bh=Jc9Kkkc2B/hgbtr+fYurgIAgdrSnZcYnTI4L/mTlqYA=;
	h=To:Subject:From:Date:From;
	b=X8OdoBR7gV9dhMYmJHHf8VqN2cu14o2vEtu69QjxA8PFL96UTGYaVppvQWL4qQBBH
	 dESEiOFd887NhCj3P5Ibud2RQzjAddmm4bu/aObL/rDv44NDhSrZee53u7UPzBAqEh
	 AJR44PNnISy3G0lSuk6iVIMwhVAuj2rdNDoGBVNELaKJJZ6I/10CY0hVAaiv6/6bNl
	 H6GIYw4goqRlT9yJp0myO0JhmD3aVxBaFMKDtMcDLr31J2Dsj5LXDpez+8riRvkR7z
	 ysOzaQs8SWK7s/6cwQKniM7y1+uEu9nqLJ94/97oGu83CL9E4mhl9xjsQB80o3PFpK
	 s5vbAequa1VaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B22C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907934280.9132.9813576517407304327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278dd423e3d3227163c088d350b8228776faa003cb78dc340a426dafcd7a192e
Date: Sat, 22 Jun 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719079342

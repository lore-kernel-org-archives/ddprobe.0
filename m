Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C419470
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716363203; cv=none; b=GqxdlnG8gTE/3G16dN39LZkm71UOyq8YD87D1JKZwIsev1+SBEVXoAeO3ebOij80jZF6cyLVYqX8mEMuKGLp4U8fQn4IY0+EzHx4UyD2/VZlH82mgC751ml3lxcRHEoOQRzhh1BwvXGk+ufNcanUlGepAonRCqzr897WCPdRQy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716363203; c=relaxed/simple;
	bh=3AE1S1WTdPj7jh8ZiAWUactvxemxECnGpuswaGAzoSU=;
	h=To:Subject:From:Message-Id:Date; b=fFfZwv7mvXWYg9oVdWLq/gRcBIYJklcNqW0JMlg3aPpEvmGIQCaeaGWbpDw/O4t098TTclV2KJVwfxgdD3swcwNbpfskOt3mmqWZfldkjDj3bt0KHYsRJxjIcvOQbbDq3MjZBmPzGK+umqJHEX+BhYGh4mvXu5EvEdb4U6Tq0QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIex3Gro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIex3Gro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1823C32781
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 07:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716363202;
	bh=3AE1S1WTdPj7jh8ZiAWUactvxemxECnGpuswaGAzoSU=;
	h=To:Subject:From:Date:From;
	b=uIex3Gro/M6EhBFy0N+i0MQjCvHXoMkhpHfyN0hBaw8IKCqOdw5BLl7sxyO8vST4z
	 7bNpygrwdm5lbdCKqqyhrUG9eAVATEAPNyI5MtvwF2awj1oDPV7CVmAM5tP7G3tXzj
	 ov0E7iRqRqH45sKaeAkEiWI4rLaxEsWdcZ8JujXAUMJZ/mwleDhmt/wbJ32ilXYlrd
	 tP/GZ2Q/CbPK0NrD4QdaSShCOkrJ8tojuW1qjC4g/2Tb8MgT6pvmEOyGYmDMLMfk5/
	 5iLpYfswRoszSemGQAaovtl/tcQ+t26CiIC3wUKx8u53xCJDaG+Zky5a7iqtxtzYzL
	 d/Oin9szXIOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDABC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 07:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636320276.25010.15367493017069389196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25634372e2c92c3a09fad97d506b8729fd9be19cd5f8b13c8f2d821598271c94
Date: Wed, 22 May 2024 07:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716363202

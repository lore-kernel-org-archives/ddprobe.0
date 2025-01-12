Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354602941C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736667954; cv=none; b=T4UoRL3DoORWWX6B+htMIvRoE4f5Xp6TbKD3S6uuKAWd1Db+bMX+GpzJG7hq+wOw3m7Gwl52I+YdiPz9ScJVQviRq3Jrgg7J7CW7TWtyTQIR2og4JxZkMpEZD/YFuEOKZhGM9YIECIEZSJ0sH+zxln9h+nkIM0GRai1XMbux6VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736667954; c=relaxed/simple;
	bh=VYqgjYwsALbhSs9bTQ8uUGZVFSmKwl7mK9HFGC02jVc=;
	h=To:Subject:From:Message-Id:Date; b=Ehi4a0qUV/okEQb1Rm0kedVQ3NUlBjua84w7jhYvxNRtcu8CAnEB7zKBbVdLx6ujIi972fcrXwB+iELUeMg8SCBKkZ15njcOijrjEO8iyOed+gkc9HUDa06RE28iuSGNjWwGhouNE5+iPbsc4yE7jUJKGLlTKXdxLcPinO6l6e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQlfkPBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQlfkPBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD19CC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736667953;
	bh=VYqgjYwsALbhSs9bTQ8uUGZVFSmKwl7mK9HFGC02jVc=;
	h=To:Subject:From:Date:From;
	b=aQlfkPBvzTtbnxDjlojio2+ER8p8Tuq8K7AN7yNsfWxllNRsAomCQTHzBrOAf2Zbv
	 64PZlnNu/flm6DXC3nh3oD6mDeVbVNOWPQB2IZ8tQZr80aRxf+1QC04aZtfG9MSABn
	 iHaALXqd4RZ22ixwBcmrviMJegRZJbY21waaXMkoN/xQxTOY1u1qwKrcJHz9S79Mxn
	 /XDCr+iYwkNwZ7zQ5lxAKHyreBmEPpdEArxi5ZU1k7Vh+76iKlAt7OGeZikvEoQi9q
	 v17zacngMTh0/R2oRmcj7muSGQS4oCYJCpPKsb6YU8aK4DwEz7QLCzc1pqQCB8afxd
	 NUTTJt2+subVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602FE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666795360.18411.15734423611613943961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85afcf7c3329265005f73816f2c6c1cc59f0f28b8f3edf71bb8612255aefbd0
Date: Sun, 12 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736667953

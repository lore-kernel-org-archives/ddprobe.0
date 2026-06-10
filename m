Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD013F86EC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781092534; cv=none; b=WxAju2W2wg6tHi4405Kd8IRV3AozLsUKjwvhOS4zK6BjFqCOEBLBNbiyafwxrJ3aq/kg4OlfO+0knGPGCSs6wHgHcCK4S4PVOZM1gpQPqre9YEhRNuNQgzpQv9vl/Ceq17a08mBB4wZ7lN8LjSm/OFO7WKkpgQ1jOuvJv75yEoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781092534; c=relaxed/simple;
	bh=HOWpypPCmBG1UOo2BPBfZLu8Liu3WRswZl1rwZkBHNk=;
	h=To:Subject:From:Message-Id:Date; b=HC3n23Qk9WejC1/Z72/Bn/2sHecUbH2cE4pLkCf8lJwLR4fbhAm+aX2stOCfgJenFQ6F9rmIfb0epPSvRFDhwwpjzndahEYNYv58ilOFc42DsNnm8dtDJIyTw1BRji4GjsudCJd918g0N/tqiMzHZDM5kQNYhsTp5ksYxYzW0jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Py+fLJN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Py+fLJN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A51C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781092533;
	bh=HOWpypPCmBG1UOo2BPBfZLu8Liu3WRswZl1rwZkBHNk=;
	h=To:Subject:From:Date:From;
	b=Py+fLJN6ibNV5pVJnn+QEKf+9q/vYMzHDl1ZHQ4qSf7nX4+ujY0IM+IxB66g5VFmg
	 5Q+/MDXy+NucAEClJM0EX4IHImxuUocsfOcTtCQB22srRRP072TkqsHI0ImuRBfYsB
	 LcwsrxrIZhUMxK4VTR7fo14M6fWoHvyIRmwtO2w2t+rUUS/9WTpWqsWmr5wtBFscjN
	 iMiYGhWtHPNqXZ9IPzXpTCGl3mY7tKM+64jIpfTCf9KwDy5R0c58lF/H7wnDy5Llkg
	 dbKlxq8kCEPialLv5KyXKf7CJIQdsUUU7tNkXlGPwF7lsa5Q99Oh/g9SLzpRF5gWJI
	 /PnMTrP9LZ0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C4CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109253370.17889.14032427592884746345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4163ef690955168a244068adf983c6957c17df6e5a56aeb3aa23aeb9c910e9f3
Date: Wed, 10 Jun 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781092533

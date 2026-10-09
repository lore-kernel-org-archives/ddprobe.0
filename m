Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A593F3289
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791554434; cv=none; b=lCWK4ar2mV+5qlqOjjorvIm5J2BbzIWAOq/Gh5UArJhgRTH9vWaKIFydG9qfy1S6QXaLijQe4ybZLMPuxLX4BQwdxYjyqw/CQvV1RiZK6SwtE0HmsdvEhRvFZx4FlOQzKJRricE2x9EkIRdkoPJz4K3Jy8DePmzCM52LYwBAOaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791554434; c=relaxed/simple;
	bh=AOCgi2+XdpTpwD8OVIdhyrdnHHP5sL/Mv6zItBbh5OU=;
	h=To:Subject:From:Message-Id:Date; b=ZxZD433iHlr9Mifjr8TNNaFIUJpS8V8GjCnFT6tRB0zN4ji2oGCCmiXAcDC0PJJQAM9vB0UXDreRP9iYVdPIblIDlIKAXjfnqQiNJjzJkh6zgJHGkZxxYzK8BPjWDYxuY1ASZNkhKkyNuth3ErVZd2gvaRgn9EvE2JAK3KWgAYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVjKS0c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVjKS0c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D072BC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791554433;
	bh=AOCgi2+XdpTpwD8OVIdhyrdnHHP5sL/Mv6zItBbh5OU=;
	h=To:Subject:From:Date:From;
	b=GVjKS0c7+OWTll9ytozbtrGqNFjMOJLhNLl4xDnpgtSuve1WWbSMCA+vVrDAvBEqO
	 F7Og35x5Q7ZkHMA8oSLQuBHBKgQN4RYsFBJXTcilKFtibTQXxBUhZc5BfiE4XtC/mk
	 qZu1NU/ik0PSqHsQdHrD6dzsnVow5z7FJxKNF2AxkOXL3x/1QY8YoIe99vjqrhwSUM
	 svh9V58XW6nP3OMcQzZFcTsDyfiSWmnuMuuZmQiOiixWRa3IeM2o9Rsjjcp8WGYcWw
	 z9s2iBuZhgmOkFicVIH9mUePLf61nW6XLp9RYU27C+2Tect3lX56oN4lN27naIHk/D
	 KwJd++ls2mF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD91ECA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155443370.16119.8810947779673040222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04500a8c9bea82a932bcc14095612cfcc0bbbae37f80e08f6bffe6428558e1da
Date: Fri, 09 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791554433

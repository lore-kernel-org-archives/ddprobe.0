Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F4E28E3F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753036794; cv=none; b=r+X2GQIUB6yE+Anz7GVRzwraG0yLEY6c+K9af1XmeHKEfj0TxddZR/6Ow147Ui4k2G00nL82OC3UXavWHhZRBiv8NBA14dj98f36bo/0GoamPHeMTgtcKeMU7XH0+nrZIPLKyj7J+bG9jBTlb5F5knYarl/qGAVpvwxgJejwV/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753036794; c=relaxed/simple;
	bh=n8A5Wr1HXkdyQFE1jF1C92e/4lJsjjgxwiXRkF9e8RA=;
	h=To:Subject:From:Message-Id:Date; b=Jx3kwjyIVRgTkqhPaMkwgZjjGDKKc/Yqm9Lhkzr94eEc5gSWZo1zKbcBf4zzKGU0aP8s6nZnYL7wKJTRoVK0TW1k9G57JLnHrx3QwS9fBFFuQEmxEKu6Zx2lEr9d5DHaLLOqd0iuRb1HGOBjGnnVlies1PMWqe0LHx8Ore86AP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWQBdLkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWQBdLkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB59FC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753036793;
	bh=n8A5Wr1HXkdyQFE1jF1C92e/4lJsjjgxwiXRkF9e8RA=;
	h=To:Subject:From:Date:From;
	b=AWQBdLklOYzi9Z2i6BAMMWPCVWHuhbEU6jFsOpZ+DcGmczbmRmvH3XA5lippa/oIF
	 Z2uWcDmVfIeSy4d8HGjC6yjfbEtFPPUK8lPUVlaFb9jQ4Sh4j+wPmEmjqTEpGbf0+t
	 JqtXMh5b10+amLQRyiq+DrojKyLeqRV7fOuzqThyRMAqjuUvQUiHR2oW891V+gMlq2
	 MMu9z5Y0Mbk9Q6kF1ptBQwq7STYeM6irg5gE4v/XKvPwXkx2y7mDYOhb2dlt5tq0IG
	 RjfmYiWdpm0eYC6p0CjE2kFLCSewk2PUV9PxxpfS61qtB8H7WIv7rTIdu2kOQKqjiL
	 2Z8/E2yfGTzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95603C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303679359.24949.8681707837410878030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dbb0c2e29e514dd7c075019ff8daedc2ec44d57bebda0cae729c5d3aa65cdce
Date: Sun, 20 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753036793

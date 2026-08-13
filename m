Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467483B47F1
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786612834; cv=none; b=Bklnh7ysTuqLRW7Y3sSsi81BkIPnUX9x8i8hSSrJAG33CsxuhdaaPYf/WFBACsa3aHQUZs4Grpp0mVdONxwUT1b4z5gm9WaIVwtmZioLWSAP7y/Z5l0ELKKlr7B+Av0r/xQyiBhFcmqiAmRrn0QuFVPP/CDAEX4QVvCKrdPF+Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786612834; c=relaxed/simple;
	bh=sd775+XKigoorls5HraP/HlrZWF3lrZzSJah2Fvprio=;
	h=To:Subject:From:Message-Id:Date; b=nBPUem+kYWogEUgwbJj5VBFpIGrte/QvNHmqyumA+bPanEVrU+VusmnIEhc5Von10gbzbJGntnpwG3MEyg+/0z0LKvj2rgIp6gtnY5V4oy72d6nHjWywD6R96D0xxU8yASuVL7fGZlkR6so14p8TEKV2BOBoIWxCSxie1UW4N8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUuVJYpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUuVJYpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB406C2BCFA
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786612833;
	bh=sd775+XKigoorls5HraP/HlrZWF3lrZzSJah2Fvprio=;
	h=To:Subject:From:Date:From;
	b=PUuVJYpp4A2oC4GS7ZleD4kS033XN1VzWQJkwbKfia446ksx+7xr9DEvu1DnuDCv+
	 sAILu38uFjKlvjHuG2Z46PIfdDkL/vJvqDxi4iwJBDRb8nJ1XOo+E6YHxLQq9BNqcu
	 FNue8s+1QUq26mg/QO4jzaCt54NJvJsXDgSbzJfga+2eeRg4XpkMu+ZXuQK1ngd+Iw
	 hUqROwhSqsOERP3Ih1q8Q6GSPbAiKmtWbpheM2teEkE1HwkC9qfxfWd/OYhDA6RLVS
	 G4OJVJxFXVvr9pzq4hqsPVCWBP4Y6/xhu7UWSbumwD9TeinI8N/8uaamGPelQAhHBt
	 orrThsYcEWccQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9631C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661283368.3129.6090248482711753766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddaf0b54aead2d7648d86f48fd9c4593d6cb54f24bc6a9db035cd7a8c94bf35
Date: Thu, 13 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786612833

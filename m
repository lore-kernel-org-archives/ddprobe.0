Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0BE1A0728
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766290434; cv=none; b=ng/oxXoXklUwVFvzK+MXSJmTKxHHHw1rt1SrAe92CY4q1/xGciiYNo3Xg+yOErjLUIJStdjg92pATNSv/cXxsfbt/7Env2Czer7h7O5csDhgTg/f1dCW5BThRdoNe/cHPsv/oV+PhZAKd6M0EtDXwsUhlY4GUGXHsyWEm7H2/NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766290434; c=relaxed/simple;
	bh=I7c4OMGDAKTGuB1gckQs9c3iYK4TeXGERtfQS1rYeWw=;
	h=To:Subject:From:Message-Id:Date; b=SX5Tujtpm6LTjARI7b3TIsasd0gkGf5/slTG/0t4FkWX1egzVZRerPY0gVysGBC0ptjgKOTA9FTFVvdxtu9B4KzZHrdP0aX6PXuZsAyBABwwjOOFLR6ZJM0OOu/KIbhpqP4gGXhcFTH5evNxR2Uz/Ham2EmQ1Jf8vvnA6hVRzSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXpCUEHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXpCUEHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D66C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766290433;
	bh=I7c4OMGDAKTGuB1gckQs9c3iYK4TeXGERtfQS1rYeWw=;
	h=To:Subject:From:Date:From;
	b=WXpCUEHMlXKRRPU/nN4FpULmad8HZzTyRyRNdCb4YhQJleUzvM7D7qwe4RYJWH4OE
	 dL/Sm/rmrizEEN6C5t/9J3fIOdHCldYf4aCNyaosWM3aVKHa1vjGBUu6818GAJscCt
	 BhtvIxLctCkqsJ8ihWd7UPZ264WK/inbrKqk3fpY9BJi6EGtEwDk6JRl5uWVJtSNR4
	 d+R0hRgPcnQgthNEO4PIWMNaKaFvB9RhFlGN63HLSFiAFvrMFkrqDI5f215YqB9uX4
	 dGrybnCQr7g2xpL81F6kgq8UPh4Fbs+OZMWzCwbRu97RSSyVtwawbJ+r/e7j6bcbsM
	 4N4xqpWhZk7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5FE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629043358.4225.10485642828930000129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96e8b5079c13aed5676a5a78e96d55fbfe7b92acd548242bf1547b79f488bda
Date: Sun, 21 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766290433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACBA8460
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730010354; cv=none; b=NtiafT6OPtIJBGlG3SjIbk+UqH3v8Nih66iL1wFT5VPOq5UiQJoB98E2u1dh79KOZtf994OdJOHSqykx25byZmD4nrf107FflKXibs3P/b8MGgCvUIPpKjeXht8Si1m04GpbpefSP9dJOApITHOv34QS4RiYahcFfodsZjoiCHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730010354; c=relaxed/simple;
	bh=F7FXyehob1a+acdPfk7kshZTDCJN2oQKZLvIXOTUMqw=;
	h=To:Subject:From:Message-Id:Date; b=ulebk+b/gcXoaXgn7LKGpnVwfRKgH37bVE+C9bpbzjHCCgDb+BzHp92UFNacMyTfJdRmvyRd13comrXXZgP1Uxb4SGKHluaNyx2IOcf+vclwvDbBc6DcHgH9jsHO+nsf5cA+hSC2BBFcOupNNMcBMFChpF2LfIZ6+Rn4sGcsNXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRcdLOYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRcdLOYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EBCC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730010353;
	bh=F7FXyehob1a+acdPfk7kshZTDCJN2oQKZLvIXOTUMqw=;
	h=To:Subject:From:Date:From;
	b=ZRcdLOYJfyPglRzLUSwjOFn7b4eZn85MrQVCZ15wrcS2AUmqCIX3fD6ozZISUTrie
	 y3HnrK0JBXQbOLVTl2KS/a4WLppaoQHycU7+mTp0LAuweCUdNcScnt5eVEpmztyayK
	 weIk4LL0/9an4kLAeRCqeWRd6Luz813prRHdz5o/rw03jp7xkdxJkasqLIk1AcFkoq
	 tW5s1XOJHTtRd/aXmPVJGNsw7Xjshd3kxtr4ULsPfCy/pekix7Ce4j6MDvOmKGu9Wn
	 K4sVFq68KUGtQ/1erxcW4gzcS1z1kPtVveToxiAguuXBuUg4DdL7nfAp+pzPth6aGO
	 VYEnvxHs6T9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CD8D1039E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001035362.5445.5268418811853960484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b5c4b4afdca1e49cafb2f6a73092cc524b8b3ee4a40a79b22222a664c201bc
Date: Sun, 27 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730010353

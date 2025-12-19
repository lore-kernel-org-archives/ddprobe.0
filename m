Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBB52E093E
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766177634; cv=none; b=gwky87+t95I24bZpa6Ps3nv8T+kGPv0GQ7MGrYikgN1cRuO0JmQSmIpc9kijhR3QPTsjpSL+AzJ6sC8lkMh6+90lz/Y/Ij1FCIvGs42Qiw9BTAnudVin81t7CfxSdsHcj8Hr3DXM9uk2xJpOXMNWuFUyAihmN5qT5PWzDsAeQaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766177634; c=relaxed/simple;
	bh=Bc5wlmyEPyFkGbSoG1XP2YKfvxel54TwHHYR+1gYumA=;
	h=To:Subject:From:Message-Id:Date; b=luEq+gKKKDm2dmFZNMIRCFIW6ablOlY1FcLly128pEek96+HS3IWZ9qyWC4vvalAD9Qc1GOZPVg7p0rFMBNH/8jMlutCpVVktwMRxMppGEbGtvfMpugx3//mOz0bgm9/6yqibpL9tKY3d4rSLAfcD9Lo1/PH2T6cLlJS+TeiuIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcHb9kpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcHb9kpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B18C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766177633;
	bh=Bc5wlmyEPyFkGbSoG1XP2YKfvxel54TwHHYR+1gYumA=;
	h=To:Subject:From:Date:From;
	b=DcHb9kpYyT/pufLcyGLwV5L5FP4f2Uzb/9Lse83xngImCygqa+WV9tqMMX/RpDbUl
	 JPVnQBnAg2uo52Gj8VUJcs6u0DFeK3DJBtfE4USO/Upi0yUe5ht0/vNsKSsLiFo1X9
	 +R3koQ45i+pCR5DKuB+DCd/HZ6WAVNENAGv+DCmyFHZ3xtxeFJkgPxYAlLLFBPkGNf
	 meVsg8VgYTWw9ywF8UPI0L/srMHi1pd4uATgM5qjbE2moZFKbV2GHPeTzuREja1tPS
	 +q3Fse0phIDrE8i7c0tNyuREX1qbIWjPpPeAWa+kpUoT4h7NQYGKc7Bq5du1grjUCg
	 0CQNmQt8aCCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B11E66882
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617763359.3635.14355801983081141076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13dea0b0e5574b8b1c10cd53fa9e0421a9e6a47450bda5e8f07d7d5ecbc38a2f
Date: Fri, 19 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766177633

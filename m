Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247441DE894
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761616194; cv=none; b=RpLnGrH7UUG0fw/y9DhSzK9k/eENNlvCk3sGEUvvVH4sJsDkrD9g3rQ7hwbfU3uhJ0wKVKtYzpBzxiVYq9nPxzHfYD92R/ZF4RjxjJ0pPrOqBTWOkniof5y0OQXPbKCZK+UE/aMh5qVEuZ9Dy6JP9FwjkGpUrvgMA08VMFO0USU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761616194; c=relaxed/simple;
	bh=HeWLpCEamIUaCLnqf2O4IzE+YhinKL1zyMZiiQ+qhYc=;
	h=To:Subject:From:Message-Id:Date; b=m0RBYRUO47GcHmvb8JwAbrgdy6Ks8Wvc8TLh0ylXEE/wtF9gwlWZKlOPpcA1zkGrDfU1jdSRbP3GIdMeADblZD0DNTE9gJ6U9mHQwNGJlewdPFAtfeffrMXGGCNrl2WFZzuBFfKeKxAnPaP1bpTZFuyEFt2K/GYh8zja+evNhRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFeNooDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFeNooDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5370C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761616193;
	bh=HeWLpCEamIUaCLnqf2O4IzE+YhinKL1zyMZiiQ+qhYc=;
	h=To:Subject:From:Date:From;
	b=iFeNooDAdiWSVd0sRgj4hU2WAScDb7BdSIMBKmOHuvvnLy88YTdm7ebWRStJUqrzQ
	 tc9StjRLbqZLgAOWB9rgr7+rc+mxk9kCsunSUm8UtUism3H/6HasM2xXz2ocP8AJzc
	 g6Sctzqi4KtmmKtiQX9X8o18UGiNawEj+V7U1ggKfx4AXjqQR9+UyzVnursugf45iv
	 FtwKT/bGZeFeudKd0OZoSQKCIgQiuniupbSRMlx1PLPvdB/WnFI0wVXSzSZVngp1KC
	 VGE93Yxz/gfyqO4yu3qcsR/yYRTCXkKCbKHOzWY1iNuczF/FehHTIKy+lNaQI0cE/v
	 L/iRzjBSokeYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A2CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161619358.8088.5511696948147220794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec083c55bd7a4c66fa554df51b4f3f087b05ec467d8a81b1bef5d0846026547
Date: Tue, 28 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761616193

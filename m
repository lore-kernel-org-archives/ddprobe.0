Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3482C0276
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762891194; cv=none; b=VOJECc1V+8FBhBL1gcccJbJ2GFLPTfOfi0N//IqxBov7QOx9nCZVfvdjzs9kFO3Hn97O8oF29lkJvOARwk0lH8x7M5VZFrNpX5waUKMys8b9Nz15iarbdKUU5bJxrIFTc6V8C5LvhyvPHy5fhMo/XvlE03S0fQeQsZL1wR8J4kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762891194; c=relaxed/simple;
	bh=TrzQhiPguPNdq/B+vEr34oJnttT2oVwq15HTCQ0c4uk=;
	h=To:Subject:From:Message-Id:Date; b=QqhSWN2ZN31FhPEiJ/qMQUlzdoNhAlIxrUcs8zowK7nxxS53gXXma2BBI9+U0OsE/x1Hj6TOZXvNk6q/FjbmHdBTuRStK/epgcn20dKBjcoPg+8h+k23DLnKGGYffvOrz/HCkby5Ru5txeqsKqFA2jGzUB0bhnu3/PDhoGZlHWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIna34x1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIna34x1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0DBC116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762891193;
	bh=TrzQhiPguPNdq/B+vEr34oJnttT2oVwq15HTCQ0c4uk=;
	h=To:Subject:From:Date:From;
	b=iIna34x1lK9Z5bw0F0JKt0bElJYYuBCysn1Svw3TqUhXuDuCTHPxQZVmT3VWP6KvI
	 NYa0M8r613G8MHfbTGH2bNTibJbjB8c9IzgfAlPZ+HTmep6B0ulE1iTKmx31YAgheI
	 J5T20+i4RO1wSLG1Pqr87+IIkH4IfXbhe0V6lFq6ds11hR6su+9OPrdCUpB+lald7r
	 BzTJcNyQldopOgojjJsQ7TNnen9cWPqFuKqokuiVZWsGMnGE0JqpBXB4pUQcqLonv5
	 De9FaNJws1x3BG1hGahP+YujDX05NPGU6lurYFkuz3T/1+ee6/5IPOsEWZLtLQV99C
	 2toGraH1bONSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B6CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289119357.28031.12212994744107860206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d57a447e5faf5491d7d5965482bdd0ce9250d58dcac2d731735b26c4a8efbc2
Date: Tue, 11 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762891193

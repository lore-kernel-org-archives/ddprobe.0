Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D1522FE11
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758191994; cv=none; b=TAP1VFKA+zb/pyYd6k2jUIbqZuB/ux6Re8/CilD/9THf7fbo6qMJaqJJa5suYi5q1Nn5FaySZGQ7aF7PkxYFzmRxiaoodnU2Hr9OARXATh73Dh9S6FohjWwfA+Ly1eQAZoz5jvURBrMDIyPObS79C+0CGwEkrXltuaS1RVJwk/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758191994; c=relaxed/simple;
	bh=k1TH3mDml9abqeplUD7ACOhQmD51087BdbWizlCtrSI=;
	h=To:Subject:From:Message-Id:Date; b=ZebOsElJoEUUTpMNRiCXfYIurqJAjJJmDN751+o9YgyPLL5oKkCsBokr2fQVaOP+/ZWT8Y8b5dJZqOaEg3ARPMBe0DuskRmJ8ecNTSg7j2mxYDamumUQH2i+8vnOeZwyqALuMghLihboJT40qt6otQT2dQvuYYnHtWL5Zc8Xqok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7ldlr5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7ldlr5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EECCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758191993;
	bh=k1TH3mDml9abqeplUD7ACOhQmD51087BdbWizlCtrSI=;
	h=To:Subject:From:Date:From;
	b=Y7ldlr5l2gVPItKnKPpSUBAeLwJSic8cov355cj+gURjGQAXf43VVjK0Wy2Wbbtum
	 ifb5izAsovK6hLcV9DkpXlry3zS4lvv76VE/3BeOxMA5bSIebybaKGbil81ORs/fmt
	 FoHgEmNOKI54yvfHuXjmKOvdSfzv5essD9fM6DlCR2YKqj0DBH6PdApm+nw4aMbRgu
	 4p5WI+eA18GVyadLmEHhxOzWMa3Zu+FgJTHDOtERJXkWkDFar6dUs1aHIrkoWtrLMg
	 1JxuNiX5txRUed60GzNx5mCfgCj3pL/v0fs22N6a71ovw4OJ0ghzqcr+AkWAsp7JtV
	 4TdvR6MiGzo/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF2CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819199358.30247.4436604364253332868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18836537a5c04fcffecbf8a4fa4bc61da2aff378185ef1d0e6ceaf9a72e8be5
Date: Thu, 18 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758191993

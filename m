Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DAF221275
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773715494; cv=none; b=gZ1ybpwJqRGhWELxRPhV/CSViMPvl9vBFPolXcKdRUkw9e5PtnI8MqfXbi7Rl6PI2YTlk6bMM/zSeD4ZHTIwppZKlejRWE2nhG35Mk0JQfNyJT8itYW/mBTNdriHGivgDaD6jNQmixFTVx1l/KXemi0Aj+VAj84fvCHTEiCRO1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773715494; c=relaxed/simple;
	bh=TslIN21Qfnt4om1T9FP46lm7NtOo/EylrhYGWA7FJRg=;
	h=To:Subject:From:Message-Id:Date; b=pYJ6+Zaq8S0Z6s6rXwj32pCCUEaW9t4F9T/bn12Cwmc69xWro743tFZ8hl9Nu/i/mNGyLP4YhSiVk+Bnii/K+3iJ9MQGDvgU1GB8SD5A2zWsgp9/apv44NHSZKxMAydZfGR2yl2nIg0MOQam97SgrrmwTHLskjjHPmIkmBfJb0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uY+Ecw0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uY+Ecw0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA88C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773715493;
	bh=TslIN21Qfnt4om1T9FP46lm7NtOo/EylrhYGWA7FJRg=;
	h=To:Subject:From:Date:From;
	b=uY+Ecw0OlkIkiOIfVqnJxsjxMFikiHV66Xzwog4xjExBn3s5yAqPfqJucjUZZRv6D
	 UqgO0+FcaNoRpLruYclW43TU6xtOTkihSCHvvx9rUbFrY+EHTG7RSyiJoHFpQ1D9Wq
	 WfM6SD38QeXSZftwnmrcWDBgbxBMdrIq+oC1G64w9lLrJpXCnkQKlVwIaG+fyjUWyi
	 vGdaU0Wl3JZlMxaXx3usbGRvrm/yTFPGE8QXYlsgmX1cucTBRRbNUXfg9PijPLhhxL
	 mDC2sOwJsZHENDOacZma77FZUNmBVqteovGMsclzuxgIEbL1iAKbk9pe2DGjeXAqGp
	 R+hX0roN6b10g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB2FB5EA4
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371549357.27516.14196029238279335346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8c03dd82842fba8fd50a721dcbd05ae64b996a4c0cef0f7dc8d3dfa74409a6
Date: Tue, 17 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773715493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A45326924
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785925234; cv=none; b=BOq+SkWPqIYTUuR2gmn6OEo3PiAX1gEpABnhYKlmFifB7OqPd+wsd6T0TOT55OKYw5Ed0WME8fP0Omoad+zC94+rUmKZQGlc/YeV0WbvzGyzvIDO+fI+0PTfIYWs8BWdXg2TPtvcd8QBNRGfjZLK7B7/ixCB1rEAmu7XuzeTZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785925234; c=relaxed/simple;
	bh=opOkdbreHwXCcP1DkVjgYQFYehR7Usg+TmsWsnEUiBM=;
	h=To:Subject:From:Message-Id:Date; b=uCoEtDgj7NhUQUrFFCSpEInhDw7xQOQOoCATRe6NnIuP0WqnxpvGjcqq4CaCzcVltaASzlxhZ3DeFESY4UmTkdHzOV7bqficllZ89/NBkP7YrakwNcYNPEvgaHb1Mgd4nihsE11h505L2cBPVSTB6xT6LXwrJScSZIIpSaatpIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbaTBDfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbaTBDfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA5EC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785925233;
	bh=opOkdbreHwXCcP1DkVjgYQFYehR7Usg+TmsWsnEUiBM=;
	h=To:Subject:From:Date:From;
	b=MbaTBDfnAGxv283HIi2I4NOjO/1nnzurVqwZF+RY4xgq1fEwmvT4X8zpIMJCtyKVc
	 pH7VvFnYQND3xAZ73GMu+sG+coNO7+mIr9/vTh02KXBz0CXotq2reopbQnbYWcOVCs
	 wNNpw6UKzFV/yekDmO6kPSFCiz3/bu5SoHEgGuUg2GQCdqULb8+B5cd7PzesBmHw6u
	 DaU0D1D428MN+sXOwUK3fVj9lCCGS0uuyhdxWTuGecv/2cHFBzbWV05NbhdXgw4KHE
	 372tb2CACeIAlAEJZwgYYFl6db0f62xk/RoLozRrAgHMF35kJqmwzeyiZSS4UgtkN9
	 y9mMXxY3RROkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB073C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592523369.21205.16641905724674833835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1a3928222918770ff9d278ae44bedc5bed6fc8c47925257bb14896ceb27321
Date: Wed, 05 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785925233

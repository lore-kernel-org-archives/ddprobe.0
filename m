Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D49267F79
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748934595; cv=none; b=urCmO/kI1TFuOfejaK2kUhSFNUE7OuSPvp8TNJMH/sf9xDx2CA72CcThwj8X+prTWgaomVIZof4WQzDfE1qxpydXEHpdwZV8fpfb+HQXdccAj+vYeAb9TK1KrLjAMbYDAqREtAxOQWqzRWuPPftLUk0QLzd2RsnqYUHShr/6l20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748934595; c=relaxed/simple;
	bh=z26Wd2/BrCpEJRffQxhppho1j29Faa3atW1noCDh0PI=;
	h=To:Subject:From:Message-Id:Date; b=QYcsPZGWvaY/5LD9xSKRJrqUkdddxpTQKYl0pkwMKfnR317tC3YJ1wtEqP8KyTEiviEIMJonziaiekBUuXb04iHnqQXKrU2O6cTRR+7PWgKa3SsXqOFS26J3vYtIuzsZMem4Ca+97fHFhAoOebhXqSKePg7SHdSbqXsQ9XEi/8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGPR7fxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGPR7fxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD9C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748934593;
	bh=z26Wd2/BrCpEJRffQxhppho1j29Faa3atW1noCDh0PI=;
	h=To:Subject:From:Date:From;
	b=SGPR7fxhHYhBP79s19JtJ496TgjXoNFXNyyxxnUPHLGUjQOtJkBTTdEyvc8PDSa56
	 yCPW7DuiCTe/QXlO/qHEuZHSY/DlNq3Md6DWGXGYq4pYpMHgc0pCwWJU9a96PW/dT+
	 H+RZYrPfVSgtxUTXkiL2+AbgvmsxXTXtFHsI3p2Sh6l1YLUtK7HOWFiCVvXCqiYmLp
	 Q8IBEU/++SJcLKv0vcXXUuqGD0nXqQbLLxMYWnDgYX2K6BrmDCRuZr6cCduW2MyKLt
	 KJXGx0rbzBX9sq3+uz/N3ORI+fOoGChRYr8pQEIE19WOuwfXIZT5du1PSKfVAWU8ze
	 /rlKPJfMobWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F754C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893459357.1070.2328673098852396612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6d33d752019453a6493f0979b8ce180ac90584b00967016486dd73e729259e
Date: Tue, 03 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748934593

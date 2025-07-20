Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5337BAD23
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752995394; cv=none; b=mam/FTBQPRtCs7f2c468zKdt/yMFO1kK0dXSdXqw4vOtpE06g7rnpVR7ApZ97EBHSzyd1SV3WTkr5vZ53V7QcfKgSPKz0i9gVK8yvTrJ6LNrsa2O1nkyVgWXkuMlUiRW5jdjn8Bo2VludKpPb8jS95fUSo9xZ8shZvxSrWfzI3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752995394; c=relaxed/simple;
	bh=GZ/kvPUxGugsFbqgR5Hdu6SZenZR2iBk8SaasmdQ8yo=;
	h=To:Subject:From:Message-Id:Date; b=LcuR7mRf1HXvm8Apaq5nZftEK4pJdvAQXb/BqIIWCDkAOwJAVDcaL5m+VHR2ksh/+qLEfg1cYz/A66jzCKMUnLKdoenbyj2bU4jZdz8+1bb9DSE60BZjxwshqBt1yPJB/AtsAx9VRSaqa5GlpV0/lnNl/ES9HHi5ELuW6ufV8t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTh4uwHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTh4uwHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD96CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752995393;
	bh=GZ/kvPUxGugsFbqgR5Hdu6SZenZR2iBk8SaasmdQ8yo=;
	h=To:Subject:From:Date:From;
	b=WTh4uwHQkr8HBoNCTBwVv6YeakPPODoZlQKvF1g1aHgVZ+YB6E5a1EZD1dCKzbrJF
	 Vig4JvxZTVhCOogtm3H0yKcq4rj5skBt2l5g19anocoTNPUNHsV4d0KRNFyXjwjIJO
	 fnj/BcWorDNwFl/rCl8/LRnEJ96vtS3VfvKgq2dAv3WmFeyAkHwazeF3j05NtRkC2U
	 Y7k1aTuaU/dcA3yeoGhgQKoTN2n+Iv7WNItdqWy5x7hbtK+nJhvFtp7bCxg9CK43ns
	 1mURRhr51eGFe3z9F3x29Y1YRu9kNXg7xJ3WQlgqPGpiz5jd1pZs8zWn7zDhz0bOoX
	 K8cAMtxhV789g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96760C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299539358.1544.6699792090928739149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdc007a32e84928f8977632bd941aef976409c4d3c382775ee701264485b340
Date: Sun, 20 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752995393

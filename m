Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7E82E719B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770230034; cv=none; b=HEEKfBBsVJftnpA+M4JuKXX0sKGAZ0RyZDVea0LMeGZLYE+qa53dnEGGsoEjnLA0aKA06/X9egyfrtfMpHE+cL2Nf1TIhvWMv8cRGD55SuxFVb43/Y3kRTak9lzlyueZUOG3nFETOviJ/Uh2WKCcySLnqnRv7Kn6sNL5NLhJVUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770230034; c=relaxed/simple;
	bh=RqaAYZl78jd3p1avldXpH1Kh0R5KywgFFEiCMFk6K9E=;
	h=To:Subject:From:Message-Id:Date; b=SUvaEmDAYs2w971PnaghzOXv08qpOJIfn6UknZacf4OBeLkDzLQrGrkaQccAN8qFhzRIHcUKwbzrD20E2Jicr1fj4dA1SxgmioP/5Gdzrqj4RWVqmGyDNOyz9JteqmzhqXQHcVciQ5wvHTB/YhfMt7lOZt3m2lEm8hGn9ByRvjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeS4pt5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeS4pt5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC798C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770230033;
	bh=RqaAYZl78jd3p1avldXpH1Kh0R5KywgFFEiCMFk6K9E=;
	h=To:Subject:From:Date:From;
	b=qeS4pt5MypQLUzp8YsgBRilKdPS8XZ9iQnyJF1M+EJWGCQiuxny2Wi84/ZVGpQR44
	 vwuL2O9HmA/XrCuq3Rl7xTKYn4UyFcyKpLqD9uxdzBGEbsXI7nraHubPn9Gvd5AnLZ
	 vSUmCs3ZcXIU1lsHsF49FI4/hT0aCXxy6ycbfq3RFe0pYkxqS1LwsFtVnX6WiPx8GY
	 doRsnO/7asAd0lwohqVPKx4jjJBHMeqMt4Iw7RueDv8mSFLwBfkaP25WfrzoQnOR5H
	 4zBlwcVTiXTSwmmWmxhAggg8v+A690iL5VbiP64FjflMwyH+nWQ/WVpRhv4zrIGhHx
	 gpouUMQMWvDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A462DEA7942
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023003365.8932.5744833147620943010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976252a0ba63c0811ad35ca6c078d991930969cbbbc4a334844daceb237b66b4
Date: Wed, 04 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770230033

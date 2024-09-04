Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCB41E0B93
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725469554; cv=none; b=n+W8jcYs6sfECa82qWfJqwkCvn/2ICUIK4Gz3uWQWM9eQYYeD2v2wg4yOI7CkgjM8M2S+m4Fhz77TrpiXvd/tGBuoOSQw7vGGn2WaY3zk0qWFOD8eNGDZFO2ZybtBTmH/6OS3/U9teF5/vGSvao84u0AiN8/q96yQa3xHXZzcoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725469554; c=relaxed/simple;
	bh=v1fiQO7FSKsq8KeKwkMureUw1DUoXm2uRuwn0lVPpTQ=;
	h=To:Subject:From:Message-Id:Date; b=gSqJ6xocnt+91HkMWClJMcao1ZKMEq6QCPlOhmVhkN79EHKGFSPHuFiHtDziBbE4rzPutXRP9OEp5HTA0SFpXAyGRkx3FbgSe2w+lvbUsNKrmxGY9CS9zfzR+2tzF9Uk/Ewz5PNq9db0FYw8h7Q8Ww095L02wcyZw5pGZqKuckc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoL1Z0/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoL1Z0/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0154C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725469553;
	bh=v1fiQO7FSKsq8KeKwkMureUw1DUoXm2uRuwn0lVPpTQ=;
	h=To:Subject:From:Date:From;
	b=FoL1Z0/dbIxCbhVQUbj0//qZeumQ8m4ZboEeVCmEzhCzZ0dqzCzvvCIsE3Xk5wN84
	 dG4AmjRFr26VmJt3gpE3wUG5k8WtCsDkvvhhNnIxXvjnAtORGFdBjJ+/zB5Ao5lQHn
	 UdYqE9C+0SChSbnLTzMXJufUEslVcZFQPnRMPxyLbdKBrHXi7VqryaRWtD0LEi2GRU
	 DEDlmmq2Tkv9Aga3U2LN1iZTalhRHntLC0lZfPN4TA7QF0NVD6+QreJbsyouXFWhGX
	 Jvk+LPUCWd/UkPrVhyYHCr3Qh1+X8x50PhzIRts/YH+mbgfJrlz0t+HFfgeU+Cm2Po
	 S6CbGL6ytR85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBDFCD4853
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546955369.16089.18173453064890581996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b0eaac47b21261b516a98dda83b086ac79120588ec7f2b3a30cc52a8f50860
Date: Wed, 04 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725469553

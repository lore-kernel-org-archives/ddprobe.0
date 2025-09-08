Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B78DDC5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757369394; cv=none; b=cxlFAU7zX5UkulCOIZ9MlrNAFCWZ8BNgVDouuoukdLkoCUOdjhJV9GcmrEEMc//qqLAa/H9n92IEP2XLhgRI0quC9l+vyQXRFDCVBZmRtPn8ZH0zsXzTHKcH6ML9Fn1DgLN7KGDh+BoGJupNHE9OV7bs6n3/NkN+LFA5cdH16Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757369394; c=relaxed/simple;
	bh=Bfw9yawBSwkub8LHgrWrMM2naUoobbmNbwwtTFDHgiQ=;
	h=To:Subject:From:Message-Id:Date; b=YVIyz/oXtju83fg8JaDZ5EPgRfiCsuVdTLsLMRufYp//waJ7TTDo37Yf9zwycEtbXWAVTvHfMVV1ObkghHiHlI4dSdjWjTkfY+iLWf66d7LjVW1PUmbQQEYmNysrtZoxej2n19p89m1mBJyHTt4A7/+8CKMaquRniPc7a3/mcaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rA41gCKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rA41gCKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0887C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757369393;
	bh=Bfw9yawBSwkub8LHgrWrMM2naUoobbmNbwwtTFDHgiQ=;
	h=To:Subject:From:Date:From;
	b=rA41gCKQH81bzrzVRi7VZB0vbQidSiGLy/DJKwMModW3HmNOArDaqeWYqT3hGZ89d
	 rEq3s0W+fOzOKBPEInL/RD+2F67c2kCdAH9C7sztVRvkqZ0Q+jf+5afWQIkbp4u9wJ
	 GSc22NX7gy6+Ky9mcYr0qPMZT3Wf7qPMyhulpC0O4R9Fzez0Lnlbb80pqsUfHmhUDb
	 HBp18kViqJMLGERuehuNrbm6gMvJZVrWJkGKjRqy6H3A9r8gde2LRkGmWmTo/4m/SA
	 WImTz0GimPYinfB2QpJNYFN5hoOSXOhNNC2KJ07v4Q2oWDzmIUtD9CJ8o194XPmg32
	 rkmQXZcUKofIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00FCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736939357.29023.6183603773222030498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ffaacf2cabb681cd80f0a6409bf66594464e57b9282dbced7a193c046d0c01
Date: Mon, 08 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757369393

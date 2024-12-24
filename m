Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38076190688
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735078554; cv=none; b=dE3GfXVrnhRT8kPW4tXnm7fw985KsToHE+JN4RzNHfEf1AXkaQB6xtSwMqv7+8bnTDkBZ7r8xP1X4BhWqVic0OvZuNF4w6cS3RsqcAfkFthM8bPU47MAbJ6AzQe0iDXkl9WN4FgvAqpAgv28T+M1sRkg0IQ2YcBoTKGEO9/VFBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735078554; c=relaxed/simple;
	bh=0DWThUJaTAMUGVTxzsH1FpTLr/M+vL8vbGqSkcRmoxE=;
	h=To:Subject:From:Message-Id:Date; b=uAUMjzrE8LtnUhxAYt8jFBoQWrIkRyQafLSeV9pWM8pxsXvD4ESoCjRf7MvvquLA+WJKsHNBmBmxDsuBI34S73v1mVxfaRksYCRMaf4kS+2OkEFvMnwEWVkjOJWtBt+hE9wy12BhMxG1SlJSYFh1U32dnmlIOZgFbc6suoc5ncE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqmiOB5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqmiOB5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9229C4CED7
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735078553;
	bh=0DWThUJaTAMUGVTxzsH1FpTLr/M+vL8vbGqSkcRmoxE=;
	h=To:Subject:From:Date:From;
	b=lqmiOB5MLa3ZHRPFpJmuj+m/oMOIw6VhijovUspxh2KX2y7PyMyxBroJaAOldPC+T
	 GVII8mdMn3BCutSlx59AZJQn0mxWaBW7T6+RK/vk4tRW3HhXBqKIjscMWhfHAVGFYy
	 wxDIzxEsMuuEzEkk2F6LRtF8RoXEebfxUjlrHhdhDBBo00CtMr+E4Q8pzbWt0+a52g
	 Gge1yzc5xGNaOr1qq9lAdOqMxU0TKLO1ezPf/SC8Ch9JzQgEj9317ch8+qs0hO2DVa
	 sBpe65OfVLX/WNqtyzHCXe4yJFXEk+woc96Yp+Rl2H1m/VLktsZMHjfm6Xbb2S0ila
	 V8xUd21bj0Q9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C7E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507855358.15098.11354302181709061939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbaf54d7a3be9e62679ef5063ba382a8897412d6f3bbd6a1adc7fb6e8c05dbf
Date: Tue, 24 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735078553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DCF16FF48
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722504954; cv=none; b=ag4zuayYrpZY1ACZuHRR55metxzYMke23QoZ5VRac0fweF7wE4R9//YrzwtkZs5i8lgJ6jAWj+7gtBTN2Mc3fFedW2NBoawxXzeqnMh9kUzTWWJr98Hz5KFadqQxMyykvoLnr+nUseH5s2BFWtMdWBYJmYbs4LcDav4QJ2ro4L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722504954; c=relaxed/simple;
	bh=2avD+KRinRg7sbB/vRav3Zeagv9+aIG4H1eiuF+/uq4=;
	h=To:Subject:From:Message-Id:Date; b=V85y4UhgVc9zX2PLOZEdMPLz3sOCDzWiOZ2hDnTTpSSzZg4t/8grGvCpp35zhGJjkfso5Iokh8DOsdT8mGwqwAldQp2r2eTkZOeBNXknFYd1iUt0rBGgqvFRF0of224TzAc3EzN7k3tmm+8HlPC/374lvIkxvvPuYikNRpepPR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYKQIRBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYKQIRBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B2EC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722504953;
	bh=2avD+KRinRg7sbB/vRav3Zeagv9+aIG4H1eiuF+/uq4=;
	h=To:Subject:From:Date:From;
	b=jYKQIRBDGo2uDiGDSo8KFS9Wds90ogObKQB70IdinGmbRO+wlALM6L18lQXaW+H0F
	 LtJzWDQ84jMJQX72m7TTFh2DRza37ykmr4hXZvyNf4c4kLkBNOn3qYK0H9hVM7dD1x
	 A7L9NTZEkcqfLLYKQYC1n+tMb5+Dk5go3nxiL1fQe1pQDjdeymsPI2vH5JvOyIzgq0
	 HOl30yxIhx7udbMuUHJFNXunAGfq3Qzc/2CK515E5h06pQ15HcsAj0cgmZsbA94T/s
	 wh0n90VPufSJ77WurHEknSGbJ0fGYXfC5b7bHiQPThS3RQtHOwsQGEaK1lL79PQVGA
	 H1KIuhMZY2Lwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943FCC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172250495359.27663.6863920800908709620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034c1f308ed420da1076a2c9afd0c8c2a58252801d0eaca2cd402eeaed9405e3
Date: Thu, 01 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722504953

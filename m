Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCB318DF77
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730142354; cv=none; b=cXM2xHHja0PGepZyKxGk2vONOhvos0Jyq5tX0K+uDrA5eiYzLSVmmyATB46pp/EeGhB2OkPXhKgdoUKzBsL1epuEIMsR7w1ZWcvgaoLP4bWYKfWRTv5086n6KpeiWXjjZpt/OC/GA2qamz23eLLGX3CuIj4s+VyR1mRSXUCLkks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730142354; c=relaxed/simple;
	bh=h0Y3bwCkA3h3d0ClaGWNGwFzNi/906ph8OJIKvlDVtA=;
	h=To:Subject:From:Message-Id:Date; b=KdOD3+g+8g/FPcGM2lMrdzHa6SfPy27tS1pCUQ+KFcBPW9YhD0mmFgEDQQL3scyVWHWFd7qjiRaXwVQhl2rqvDXHaX7NrpSsuj62lFK6vKREGoqSiXj6gEMUQXoZTFLwkMt9T7oYlddHFNzgqZIvSVb/auSpT00RKhkNfxra0uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BACPd+jM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BACPd+jM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BC5C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730142353;
	bh=h0Y3bwCkA3h3d0ClaGWNGwFzNi/906ph8OJIKvlDVtA=;
	h=To:Subject:From:Date:From;
	b=BACPd+jM6MOsB+XA6i1rHO9lNLsUzuhacTof1EMyLLKk6P/ZeWh807OHiF8LHrZMe
	 SDzfpv0z5o0RiS5g7wTkEVPWtBGePUJ2inNDmxZJvcwgb/9Jty2JnwLk7w17BRlWJL
	 //Mm7oj/jMwygGfjvw32PFoROwECFhhdYsRtBkL459VBxbka8Y34gRtIxVKzut434U
	 Pk4Ul0dAjfuiKBRcjoR2cJHB6fuF9KzmpFZ3LtiibMxJgPMT179ojWUhjEAF2ILyKq
	 Ys6ENntyr6x05N1ANhNz4PdV2LzEnYbY5z7ShYGPr30kKUE9362j3iGtmU3f8FHtEu
	 81X9NgXIM2y3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B2D3E2BA
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173014235360.24147.2580981592561528316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d7db0dbf2eb79c6f51cebab7d730e856f54c70856753a5c712709e9a0b6b0d
Date: Mon, 28 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730142353

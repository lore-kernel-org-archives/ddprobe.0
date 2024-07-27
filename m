Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2456B4C9B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722070554; cv=none; b=lO+fNV2zdLHHbNFGURKMa5JkTKt/WYN1GIAG1DNN8QsEBkSHGXkDVXWBgwEevq9S1e/WxGVEuKi+I40ASwAbwUUQ3sAmNvfI0FCT7/9LSuixvTw3WCTT6RjWIMyzKgLYFf3duk03FZvicJowXnA7iiBP3NUcP/CDNFr4KUI5djk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722070554; c=relaxed/simple;
	bh=Old6OI763hLCQ/w+pEZ6tkgawUIYm1RGabILikGgV5c=;
	h=To:Subject:From:Message-Id:Date; b=p6YjYqLmhU917T+dHkRpUNyD3gjnRhZxgeTSehHs1AOjPJSZw5bjCjycYe0Cz4lmFbNDrqRD2mrP5z9L8UDQK0FEYvI3mrxERYhBBiOKzcmXRgS/xnCZRayY/V+NNT+FSFCKQe4Q4BnQk0muMdUElKTVhXDrCxykUKATYddmj4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8tvA+wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8tvA+wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE25C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722070553;
	bh=Old6OI763hLCQ/w+pEZ6tkgawUIYm1RGabILikGgV5c=;
	h=To:Subject:From:Date:From;
	b=K8tvA+wqmCMvgKpsPcTtuJffgl41UQCVc3CZOVgsBGqbvL7nJNiL2iVkPwzUU4rci
	 xMy1/nVsOmGeFLNz9mbaVe/Y3NWPWflEH/9EIo/1sxJRng/TCpfQ8GGjVWealHUVuH
	 TOhh86dvB+XXpsGZ2tIR0CK64d7Xw0uBMjLm4qKbnSCQx6oJa430/9uXnuYtb3ss8h
	 RYvfRYdPfVaIVofcDx4pW8omPiqpnzrfMAvW92RydI+DuMRiIg0W2ptySK7KZWQFnE
	 U0bkQ25RPR1ORBugJPqA7Uems6Z1axQNeUamKpGIvW8Eqp7wRx2s52J5K9XFPG1bN3
	 Gaza8snZcmclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A27C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207055359.6918.17083480818793322711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10d6add60b4cc9f7da7b9eeea08b0c93477489a5ba4cb7436a29713b9ea886c
Date: Sat, 27 Jul 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722070553

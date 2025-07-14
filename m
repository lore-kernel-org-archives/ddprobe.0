Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2838E18D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752469794; cv=none; b=L7ZgKefRTrUJ6BYUV5s84imXfs30h/TmAUrOTk9pgnAmsgA35OhkvLi5Z6/BwPFnhGclQkvTnAZQG3luVLzrLT6FYs1rd0TB18zOmgtJyXcqDhEHQ96jSKC5usyWW2Udg76Hd6ppi5l7pMJoFVi5ZyWL3gUqY/dIc4DsBMJugKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752469794; c=relaxed/simple;
	bh=ob6TC1HIIgYmT4L7PxHCHA333i5H7xXiH6yDs9LEoO4=;
	h=To:Subject:From:Message-Id:Date; b=mkFvEhTzZ4EaamnGbZbFc5AGTpXRZdU759dN5tI0rqnJXjr/+F1rt5GIKipWP07DA3jkXQO4S6b75ph5j3dkamTCZcyU9GGax1Wp8j6pLl3Y7gqt+FiCTixnCo43IE4hSyBGIgzj/8SCjWO0HkMo2nnv2q6vh3gUpZgRmmBsYoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY43Yvb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY43Yvb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A19C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752469793;
	bh=ob6TC1HIIgYmT4L7PxHCHA333i5H7xXiH6yDs9LEoO4=;
	h=To:Subject:From:Date:From;
	b=MY43Yvb5uRM/gbdITWnrnGboL9LFtiDnIVIN6HyfPLtX4soS6EHJN5Cq591KZccfH
	 8ixQBR4qIIBzVGYtPyRveRLmJKbtUMLLCnvlfoE9P12FAHaQDbS1WsOcXZKW0GZtoI
	 Osc4nrWCFgGElM7gzlwpkfB6xNGXSLPAOA5f6NmeLq7B448SlMXMmR4SsHH8309Z3c
	 qZfl/boHo6ECqFy/GQDKKOJaW/wnz7gfwMQVGlgBMW53TKMahJBG9xcI7vmpPxoqK/
	 nrI/ZN0C1CmwR1lqbG0TLT7gWKDyOt3RzdLPtZeCCUfGnuAt8a2jwS2CXKie8tptVK
	 6D0q+zhjCMYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324CC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246979358.9516.14784433794183162475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e82e66b1a48fd4cb9e0cffb70aa14cabaaa67a307e0c7252d3a5c792500f8d
Date: Mon, 14 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752469793

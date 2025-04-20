Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5400615D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745118594; cv=none; b=f+vc8l3FRV42AAnPU+LNzG06fE85MjI3pZkJiK92fGwOEnoVtl9gKkJvJMEG5k1ROBqf/19JNnNz/MWwn7s4un+OAz2YtTNEasQHCauMqwYdkXBj2ypa1kPgd/w1D2L3b8XWSWXwF7FTHGRHn6jmORvjlAs3Yqmqqthw5kvEucY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745118594; c=relaxed/simple;
	bh=num1nfnrAuvZAhEj8TwuUhQA9xpxMUwtqHOnppu+hyY=;
	h=To:Subject:From:Message-Id:Date; b=Ahc63P35CFOlmseLaA1hH6yUY2bLn+cGggMD/Uao+aV2ByRJkXL8qlkwX2P1xyUoVVabLfLKd7JsoBGu9NKJ5rlbGTxnXmZ6LLk/GyHtkVsWZdCf7eqI2xcLmyEjQGyCL2AudwixSDcN25JbTzPQ/USJDEMtaQlwUe5ujAYciQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTiMxcnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTiMxcnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7729C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745118593;
	bh=num1nfnrAuvZAhEj8TwuUhQA9xpxMUwtqHOnppu+hyY=;
	h=To:Subject:From:Date:From;
	b=kTiMxcnnZ3Rtv2jbvIQox/IHaoU4qHU0znoXo/JP3BRW8+tC04hWtkNUaVhMtTPzq
	 In367egCbllHWfeNIocbxZBBJOkgy8LBSOJDhvNRSxX9PDyOeas12JupC+zI5Mx31u
	 QoDwyypXcxzUZ4ndPbc10byawIC+aZoyU0SJOOo0+wo11fLxHlJul3OIlyl5CYiCvg
	 GJPQJdEhd+RzMsW4YGGmoKaz2HHWMr3BTx4jzrfSvUuCDd0+t+u+UBWw71rBciW0sb
	 2kQNy2/BARsHzo79IqmMQydBeylOL7MU602WGImy5UIhZ/KmhojDqeT8A2QVKWXQDb
	 bqqcoSvEv0ZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992B7C369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511859359.22203.9527929849984881013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca5b02a1280c4f2bf903e18e80d9e86546da623a24067a1a352e4b4e92a0fd7
Date: Sun, 20 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745118593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251D73FE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753108794; cv=none; b=dWzn0n3NrVC7tpo56MYcIjHYN305MM1iMzcTOjJ1wcaw4cCxUSUryCCaMOJDdAehAOKZqkhBIP0ggBXSkIWE81V+9qDPPAHBYyzfuy9bgtG45N6x9V7J2KN2UN08XQH/wdpI2XSEowCTJbc+UWiY4la8SfxHq8sz0X+sAHsIkVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753108794; c=relaxed/simple;
	bh=OW9XDvnS4VSfc9KCCYa2oGvEwG8PDnjk1U4Xag1ijvA=;
	h=To:Subject:From:Message-Id:Date; b=ObyKx/F5K2TaiH6r4lcptarEEr0avxj52kR8Avv8LcQKK9A466tlxDYbFz7Db1dVBLdydHiGWZN7IZKL63fk51C2zBeQJR9lzqfruXVnlVsGcDFM9sNmzd0ufnUeIa/aK2n8ynN1W1Fy8s1tdxSQpFxWzgky6Z93ORQgcWJeabo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I01ZiZRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I01ZiZRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65A5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753108793;
	bh=OW9XDvnS4VSfc9KCCYa2oGvEwG8PDnjk1U4Xag1ijvA=;
	h=To:Subject:From:Date:From;
	b=I01ZiZRbi89obmxYj9ARnvLQUDe4PxB0ZD7mM2EpsNa+IL0FbJVIR8TnwQzzxcw/c
	 ytxWLwik7joKkPN1XwB0GkgsEQMLmssW0PIerkA/wcGIQvHDtxA8v0aYFu5UG1vA83
	 ZihqT8AYtqUx/nI+kHbpDo13X9ncrjirDtigf9v+F3WSFvAhqnwmdrI3rqJoO5kxdJ
	 +fP+D6tSZ80hez2/svGUexx7F83BdWI2HsX79Atmuj5EaBb3cixpX6GR9rJkUj4M3k
	 J795ti5LiSlCxXuQs1uT13KVn+A48tKb7IK66gp07SVNzBcPTnoQBJGk0R0SS5hJrb
	 GV9cV3q4EpW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96667C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310879358.24212.9914824372682558326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74031975283af38cca5739f8131a9f41145bcdd34d69366fa435add13944458a
Date: Mon, 21 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753108793
